#ifndef UART_H
#define UART_H

void uart_interrupt(void);
void uart_init(unsigned long baud);
char uart_in_waiting(void);
char uart_get(void);
void uart_put(char c);
void uart_puts(const char *s);
void uart_put_int(unsigned int input);
void uart_put_hex(char data);

#endif