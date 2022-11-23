/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLuZStfr.aml, Wed Nov 23 15:19:39 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000C8 (200)
 *     Revision         0x02
 *     Checksum         0x90
 *     OEM ID           "Slav"
 *     OEM Table ID     "MCHCSBUS"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200110 (538968336)
 */
DefinitionBlock ("", "SSDT", 2, "Slav", "MCHCSBUS", 0x00000000)
{
    External (_SB_.PC00, DeviceObj)
    External (_SB_.PC00.SMBS.BUS0, DeviceObj)

    Scope (_SB.PC00)
    {
        Device (MCHC)
        {
            Name (_ADR, Zero)  // _ADR: Address
        }
    }

    Device (_SB.PC00.SMBS.BUS0)
    {
        Name (_CID, "smbus")  // _CID: Compatible ID
        Name (_ADR, Zero)  // _ADR: Address
        Device (DVL0)
        {
            Name (_ADR, 0x57)  // _ADR: Address
            Name (_CID, "diagsvault")  // _CID: Compatible ID
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (!Arg2)
                {
                    Return (Buffer (One)
                    {
                         0x57                                             // W
                    })
                }

                Return (Package (0x02)
                {
                    "address", 
                    0x57
                })
            }
        }
    }
}

