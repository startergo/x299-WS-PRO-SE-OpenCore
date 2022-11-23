/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLA82pI0.aml, Wed Nov 23 15:19:21 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000182 (386)
 *     Revision         0x01
 *     Checksum         0x63
 *     OEM ID           "KGP"
 *     OEM Table ID     "X99ARPT"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 1, "KGP", "X99ARPT", 0x00001000)
{
    External (_SB_.PC00.RP05, DeviceObj)
    External (_SB_.PC00.RP05.XHC3, DeviceObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (_SB.PC00.RP05)
    {
        Device (ARPT)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (0x04)
                    {
                         0x03                                             // .
                    })
                }

                Local0 = Package (0x0C)
                    {
                        "AAPL,slot-name", 
                        Buffer (0x07)
                        {
                            "Slot-5"
                        }, 

                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "device_type", 
                        Buffer (0x13)
                        {
                            "AirPort Controller"
                        }, 

                        "model", 
                        Buffer (0x3F)
                        {
                            "Broadcom BCM43602 802.11 a/b/g/n/ac + Bluetooth 4.2 Controller"
                        }, 

                        "compatible", 
                        Buffer (0x0D)
                        {
                            "pci14e4,43ba"
                        }, 

                        "name", 
                        Buffer (0x10)
                        {
                            "AirPort Extreme"
                        }
                    }
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }

    Name (_SB.PC00.RP05.XHC3._STA, Zero)  // _STA: Status
}

