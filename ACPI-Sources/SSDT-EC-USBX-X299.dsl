/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLCrWEV0.aml, Tue Nov 29 14:13:12 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000017F (383)
 *     Revision         0x02
 *     Checksum         0xE7
 *     OEM ID           "Slav"
 *     OEM Table ID     "SsdtEC"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "Slav", "SsdtEC", 0x00001000)
{
    External (_SB_.PC00.XHC_._PRW, MethodObj)    // 0 Arguments
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_SB)
    {
        Device (EC)
        {
            Name (_HID, "ACID0001")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (USBX)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b") /* Unknown UUID */))
                {
                    Local0 = Package (0x08)
                        {
                            "kUSBSleepPowerSupply", 
                            0x13EC, 
                            "kUSBSleepPortCurrentLimit", 
                            0x0834, 
                            "kUSBWakePowerSupply", 
                            0x13EC, 
                            "kUSBWakePortCurrentLimit", 
                            0x0834
                        }
                }

                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }

        If ((CondRefOf (\_OSI, Local0) && _OSI ("Darwin")))
        {
            Device (USBW)
            {
                Name (_HID, "PNP0D10" /* XHCI USB Controller with debug */)  // _HID: Hardware ID
                Name (_UID, "WAKE")  // _UID: Unique ID
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (\_SB.PC00.XHC._PRW ())
                }
            }
        }
    }
}

