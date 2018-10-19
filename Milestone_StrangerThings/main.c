#include <msp430.h>

#define RED_PIN BIT1   // P2.1
#define GREEN_PIN BIT4 // P2.4
#define BLUE_PIN BIT6  // P1.6

void setup_watchdog() {
    WDTCTL = WDTPW + WDTHOLD;                 // Stop WDT
}

void setup_uart() {
    DCOCTL = 0;                               // Select lowest DCOx and MODx settings
    BCSCTL1 = CALBC1_1MHZ;                    // Set DCO
    DCOCTL = CALDCO_1MHZ;
    P1SEL = BIT1 + BIT2 ;                     // P1.1 = RXD, P1.2=TXD
    P1SEL2 = BIT1 + BIT2 ;                    // P1.1 = RXD, P1.2=TXD
    UCA0CTL1 |= UCSSEL_2;                     // SMCLK
    UCA0BR0 = 104;                            // 1MHz 9600
    UCA0BR1 = 0;                              // 1MHz 9600
    UCA0MCTL = UCBRS0;                        // Modulation UCBRSx = 1
    UCA0CTL1 &= ~UCSWRST;                     // **Initialize USCI state machine**
    IE2 |= UCA0RXIE;                          // Enable USCI_A0 RX interrupt
}

void setup_leds() {
    P2DIR |= RED_PIN;
    P2DIR |= GREEN_PIN;
    P1DIR |= BLUE_PIN;

    P2SEL |= RED_PIN;
    P2SEL |= GREEN_PIN;
    P1SEL |= BLUE_PIN;
}

void setup_timer_0() {
    // sets up timer 0 for pwm for 2 of the leds red, green

    // Select clock source to SMCLK
    TA0CTL |= TASSEL_2;

    // Set to up mode
    TA0CTL |= MC_1;

    // Set capture/compare 1 to 128
    TA0CCR0 = 256;
    TA0CCR1 = 1; // blue

    // Enable waveform generation
    // Sets output high at CCRx, we reset to low in overflow interrupt
    TA0CCTL1 |= OUTMOD_7;
}

void setup_timer_1() {
    // sets up timer 1 for pwm for blue

    TA1CTL |= TASSEL_2;

    TA1CTL |= MC_1;

    TA1CCR0 = 255;
    TA1CCR1 = 1; // red
    TA1CCR2 = 1; // green

    TA1CCTL1 |= OUTMOD_7;
    TA1CCTL2 |= OUTMOD_7;
}

int main(void) {
    setup_watchdog();
    setup_uart();
    setup_leds();
    setup_timer_0();
    setup_timer_1();


    __bis_SR_register(GIE);

    while(1) __no_operation();
}

/*
// Timer A0 interrupt
// CCR0 only
void __attribute__((interrupt(TIMER0_A0_VECTOR))) Timer0_A0 (void) {
    TA1CTL &= ~TAIFG;
    P2OUT |= RED_PIN;

}

// the rest of the interrupts
void __attribute__((interrupt(TIMER0_A1_VECTOR))) Timer0_A1 (void) {
    int interrupts = TA0IV;

    // need to touch T0IV to reset interrupt flag
    switch (interrupts) {
        case 2: // CCR1
            P2OUT |= GREEN_PIN;
            break;
        case 4: // CCR2
            P2OUT |= BLUE_PIN;
            break;
        case 10: // Overflow
            P2OUT &= ~RED_PIN;
            P2OUT &= ~GREEN_PIN;
            P2OUT &= ~BLUE_PIN;
            break;
    }
}
*/

volatile int byte = 0;
volatile int len = 0;

//  Echo back RXed character, confirm TX buffer is ready first
#if defined(__TI_COMPILER_VERSION__) || defined(__IAR_SYSTEMS_ICC__)
#pragma vector=USCIAB0RX_VECTOR
__interrupt void USCI0RX_ISR(void)
#elif defined(__GNUC__)
void __attribute__ ((interrupt(USCIAB0RX_VECTOR))) USCI0RX_ISR (void)
#else
#error Compiler not supported!
#endif
{
    while (!(IFG2&UCA0TXIFG));                // USCI_A0 TX buffer ready?

    char in = UCA0RXBUF;

    switch (byte) {
        case 0:
            len = in;
            break;
        case 1:
            TA1CCR1 = in;
            break;
        case 2:
            TA1CCR2 = in;
            break;
        case 3:
            TA0CCR1 = in;
            UCA0TXBUF = len-3;
            break;
        default:
                UCA0TXBUF = UCA0RXBUF;
            break;
    }

    if (byte < len) {
        byte += 1;
    } else {
        byte = 0;
    }

    //UCA0TXBUF = UCA0RXBUF;                    // TX -> RXed character
}
