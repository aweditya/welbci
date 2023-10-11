/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes


// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
    // Send RESET
    uint32_t rst = 0x06;
    SPI1_Write(&rst, 1);
    CORETIMER_DelayUs(100);
    CORETIMER_DelayMs(100);
    
    // Send SDATAC
    uint32_t sdatac = 0x11;
    SPI1_Write(&sdatac, 1);
    CORETIMER_DelayUs(100);
    CORETIMER_DelayMs(100);
    
    // Reading registers
//    uint8_t rreg[2] = { 0x20, 0x00 };
//    uint8_t reg_val[26];
//    
//    for (uint8_t i = 0; i < 26; ++i)
//    {
//        rreg[0] |= i;
//        SPI1_Write(rreg, 2);
//        while(!SPI1_Read(&reg_val[i], 1));
//        rreg[0] = 0x20;
//        CORETIMER_DelayMs(1000);
//    }
//    
//    UART1_Write(reg_val, 26);
//    CORETIMER_DelayMs(5000);
    
    // Update CONFIG1, CONFIG2, CONFIG3, LOFF registers
    uint8_t config[6] = { 0x41, 0x03, 0x04, 0x30, 0xCC, 0xF3 };
    SPI1_Write(config, 6);
    CORETIMER_DelayMs(5000);   
    
    // Update RLD_SENS, LOFF_SENS
    uint8_t drive[7] = { 0x4D, 0x04, 0x02, 0x02, 0x05, 0x02, 0x00 };
    SPI1_Write(drive, 7);
    CORETIMER_DelayMs(5000);
    
    // Update CHnSETn = 1,2,3,4
    uint8_t chnset[6] = { 0x45, 0x03, 0x05, 0x05, 0x05, 0x05 };
    SPI1_Write(chnset, 6);
    CORETIMER_DelayMs(10000);
    
    // Reading registers
//    rreg[0] = 0x20;
//    rreg[1] = 0x00;
//    
//    for (uint8_t i = 0; i < 26; ++i)
//    {
//        rreg[0] |= i;
//        SPI1_Write(rreg, 2);
//        while(!SPI1_Read(&reg_val[i], 1));
//        rreg[0] = 0x20;
//        CORETIMER_DelayMs(1000);
//    }
//    
//    UART1_Write(reg_val, 26);
//    CORETIMER_DelayMs(5000);
    
    // Send START
    uint32_t start = 0x08;
    SPI1_Write(&start, 1);
    CORETIMER_DelayMs(100);
    
    // Send RDATAC
//    uint32_t rdatac = 0x10;
//    SPI1_Write(&rdatac, 1);
//    CORETIMER_DelayMs(100);
    
    // RDATA
    uint32_t rdata = 0x12;
    
//    uint32_t data[11];
    uint32_t data[24];
    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
        
        while ( PORTBbits.RB7 )
            CORETIMER_DelayUs(1);
                 
//        SPI1_WriteRead(&rdata, 1, &data, 11);
//        CORETIMER_DelayUs(205);
//        UART1_Write(&data, 11);
//        CORETIMER_DelayUs(205);
        
        SPI1_WriteRead(&rdata, 1, &data, 24);
        CORETIMER_DelayUs(410);
        UART1_Write(&data, 24);
        CORETIMER_DelayUs(410);
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

