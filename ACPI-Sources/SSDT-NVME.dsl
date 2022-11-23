/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLX9mqCB.aml, Wed Nov 23 15:20:48 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000358 (856)
 *     Revision         0x02
 *     Checksum         0x24
 *     OEM ID           "hack"
 *     OEM Table ID     "nvme"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "nvme", 0x00000000)
{
    External (_SB_.PC00.RP09, DeviceObj)
    External (_SB_.PC00.RP09.PXSX._ADR, UnknownObj)
    External (_SB_.PC03.BR3C.SL0B, DeviceObj)

    Scope (\_SB.PC03.BR3C.SL0B)
    {
        Device (BRG0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_SUN, 0x03)  // _SUN: Slot User Number
            Device (ANS1)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    Return (Package (0x06)
                    {
                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "model", 
                        Buffer (0x13)
                        {
                            "OWC Aura P12 480GB"
                        }, 

                        "name", 
                        Buffer (0x17)
                        {
                            "Apple SSD Controller I"
                        }
                    })
                }
            }
        }

        Device (BRG1)
        {
            Name (_ADR, 0x00040000)  // _ADR: Address
            Name (_SUN, 0x03)  // _SUN: Slot User Number
            Device (ANS2)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    Return (Package (0x06)
                    {
                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "model", 
                        Buffer (0x13)
                        {
                            "OWC Aura P12 480GB"
                        }, 

                        "name", 
                        Buffer (0x18)
                        {
                            "Apple SSD Controller II"
                        }
                    })
                }
            }
        }

        Device (BRG2)
        {
            Name (_ADR, 0x00080000)  // _ADR: Address
            Name (_SUN, 0x03)  // _SUN: Slot User Number
            Device (ANS3)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    Return (Package (0x06)
                    {
                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "model", 
                        Buffer (0x13)
                        {
                            "OWC Aura P12 480GB"
                        }, 

                        "name", 
                        Buffer (0x19)
                        {
                            "Apple SSD Controller III"
                        }
                    })
                }
            }
        }

        Device (BRG3)
        {
            Name (_ADR, 0x000C0000)  // _ADR: Address
            Name (_SUN, 0x03)  // _SUN: Slot User Number
            Device (ANS4)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    Return (Package (0x06)
                    {
                        "built-in", 
                        Buffer (One)
                        {
                             0x00                                             // .
                        }, 

                        "model", 
                        Buffer (0x13)
                        {
                            "OWC Aura P12 480GB"
                        }, 

                        "name", 
                        Buffer (0x18)
                        {
                            "Apple SSD Controller IV"
                        }
                    })
                }
            }
        }
    }

    Scope (\_SB.PC00.RP09)
    {
        Device (ANS5)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                \_SB.PC00.RP09.PXSX._ADR = 0x0F
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x06)
                {
                    "built-in", 
                    Buffer (One)
                    {
                         0x00                                             // .
                    }, 

                    "model", 
                    Buffer (0x1A)
                    {
                        "Samsung SSD 970 PRO 512GB"
                    }, 

                    "name", 
                    Buffer (0x17)
                    {
                        "Apple SSD Controller V"
                    }
                })
            }
        }
    }
}

