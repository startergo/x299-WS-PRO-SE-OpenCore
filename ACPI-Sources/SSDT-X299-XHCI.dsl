/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLluJZob.aml, Tue Nov 29 14:12:58 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000195 (405)
 *     Revision         0x01
 *     Checksum         0xF2
 *     OEM ID           "KGP"
 *     OEM Table ID     "X299XHCI"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 1, "KGP", "X299XHCI", 0x00000000)
{
    External (_SB_.PC00.XHCI, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_SB.PC00.XHCI)
    {
        Name (_ADR, 0x00140000)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Local0 = Package (0x13)
                {
                    "AAPL,slot-name", 
                    Buffer (0x09)
                    {
                        "Built In"
                    }, 

                    "built-in", 
                    Buffer (One)
                    {
                         0x00                                             // .
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0xAF, 0xA2, 0x00, 0x00                           // ....
                    }, 

                    "name", 
                    Buffer (0x34)
                    {
                        "ASMedia / Intel X299 Series Chipset XHCI Controller"
                    }, 

                    "model", 
                    Buffer (0x34)
                    {
                        "ASMedia ASM1074 / Intel X299 Series Chipset USB 3.0"
                    }, 

                    "AAPL,device-internal", 
                    Zero, 
                    "AAPL,clock-id", 
                    Buffer (One)
                    {
                         0x01                                             // .
                    }, 

                    "AAPL,root-hub-depth", 
                    0x1A, 
                    "AAPL,XHC-clock-id", 
                    One, 
                    Buffer (One)
                    {
                         0x00                                             // .
                    }
                }
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
    }
}

