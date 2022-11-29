/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210930 (32-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of D:/SysReport/ACPI/SSDT-1.aml, Sat May 21 09:02:54 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000D427 (54311)
 *     Revision         0x02
 *     Checksum         0x90
 *     OEM ID           "INTEL"
 *     OEM Table ID     "SSDT  PM"
 *     OEM Revision     0x00004000 (16384)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL", "SSDT  PM", 0x00004000)
{
    External (_SB_.SCK0.CP00, DeviceObj)
    External (_SB_.SCK0.CP01, DeviceObj)
    External (_SB_.SCK0.CP02, DeviceObj)
    External (_SB_.SCK0.CP03, DeviceObj)
    External (_SB_.SCK0.CP04, DeviceObj)
    External (_SB_.SCK0.CP05, DeviceObj)
    External (_SB_.SCK0.CP06, DeviceObj)
    External (_SB_.SCK0.CP07, DeviceObj)
    External (_SB_.SCK0.CP08, DeviceObj)
    External (_SB_.SCK0.CP09, DeviceObj)
    External (_SB_.SCK0.CP0A, DeviceObj)
    External (_SB_.SCK0.CP0B, DeviceObj)
    External (_SB_.SCK0.CP0C, DeviceObj)
    External (_SB_.SCK0.CP0D, DeviceObj)
    External (_SB_.SCK0.CP0E, DeviceObj)
    External (_SB_.SCK0.CP0F, DeviceObj)
    External (_SB_.SCK0.CP10, DeviceObj)
    External (_SB_.SCK0.CP11, DeviceObj)
    External (_SB_.SCK0.CP12, DeviceObj)
    External (_SB_.SCK0.CP13, DeviceObj)
    External (_SB_.SCK0.CP14, DeviceObj)
    External (_SB_.SCK0.CP15, DeviceObj)
    External (_SB_.SCK0.CP16, DeviceObj)
    External (_SB_.SCK0.CP17, DeviceObj)
    External (_SB_.SCK0.CP18, DeviceObj)
    External (_SB_.SCK0.CP19, DeviceObj)
    External (_SB_.SCK0.CP1A, DeviceObj)
    External (_SB_.SCK0.CP1B, DeviceObj)
    External (_SB_.SCK0.CP1C, DeviceObj)
    External (_SB_.SCK0.CP1D, DeviceObj)
    External (_SB_.SCK0.CP1E, DeviceObj)
    External (_SB_.SCK0.CP1F, DeviceObj)
    External (_SB_.SCK0.CP20, DeviceObj)
    External (_SB_.SCK0.CP21, DeviceObj)
    External (_SB_.SCK0.CP22, DeviceObj)
    External (_SB_.SCK0.CP23, DeviceObj)
    External (_SB_.SCK0.CP24, DeviceObj)
    External (_SB_.SCK0.CP25, DeviceObj)
    External (_SB_.SCK0.CP26, DeviceObj)
    External (_SB_.SCK0.CP27, DeviceObj)
    External (_SB_.SCK0.CP28, DeviceObj)
    External (_SB_.SCK0.CP29, DeviceObj)
    External (_SB_.SCK0.CP2A, DeviceObj)
    External (_SB_.SCK0.CP2B, DeviceObj)
    External (_SB_.SCK0.CP2C, DeviceObj)
    External (_SB_.SCK0.CP2D, DeviceObj)
    External (_SB_.SCK0.CP2E, DeviceObj)
    External (_SB_.SCK0.CP2F, DeviceObj)
    External (_SB_.SCK0.CP30, DeviceObj)
    External (_SB_.SCK0.CP31, DeviceObj)
    External (_SB_.SCK0.CP32, DeviceObj)
    External (_SB_.SCK0.CP33, DeviceObj)
    External (_SB_.SCK0.CP34, DeviceObj)
    External (_SB_.SCK0.CP35, DeviceObj)
    External (_SB_.SCK0.CP36, DeviceObj)
    External (_SB_.SCK0.CP37, DeviceObj)
    External (CSEN, FieldUnitObj)
    External (FGTS, FieldUnitObj)
    External (HWAL, FieldUnitObj)
    External (HWEN, FieldUnitObj)
    External (HWPS, FieldUnitObj)
    External (PSEN, FieldUnitObj)
    External (TSEN, FieldUnitObj)

    Name (HI1, 0x00)
    Name (HW1, 0x00)
    Name (SDTL, 0x00)
    Scope (\_SB.SCK0.CP00)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP00._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP00._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x00, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x00, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x00, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP00.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP00.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP00.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP01)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP01._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP01._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x01, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x01, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x01, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP01.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP01.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP01.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP02)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP02._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP02._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x02, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x02, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x02, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP02.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP02.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP02.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP03)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP03._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP03._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x03, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x03, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x03, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP03.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP03.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP03.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP04)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP04._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP04._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x04, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x04, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x04, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP04.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP04.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP04.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP05)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP05._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP05._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x05, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x05, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x05, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP05.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP05.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP05.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP06)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP06._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP06._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x06, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x06, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x06, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP06.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP06.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP06.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP07)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP07._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP07._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x07, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x07, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x07, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP07.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP07.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP07.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP08)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP08._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP08._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x08, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x08, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x08, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP08.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP08.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP08.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP09)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP09._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP09._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x09, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x09, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x09, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP09.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP09.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP09.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP0A)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP0A._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP0A._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x0A, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x0A, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x0A, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP0A.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP0A.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP0A.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP0B)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP0B._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP0B._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x0B, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x0B, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x0B, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP0B.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP0B.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP0B.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP0C)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP0C._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP0C._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x0C, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x0C, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x0C, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP0C.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP0C.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP0C.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP0D)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP0D._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP0D._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x0D, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x0D, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x0D, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP0D.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP0D.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP0D.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP0E)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP0E._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP0E._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x0E, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x0E, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x0E, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP0E.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP0E.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP0E.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP0F)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP0F._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP0F._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x0F, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x0F, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x0F, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP0F.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP0F.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP0F.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP10)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP10._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP10._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x10, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x10, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x10, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP10.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP10.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP10.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP11)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP11._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP11._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x11, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x11, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x11, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP11.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP11.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP11.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP12)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP12._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP12._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x12, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x12, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x12, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP12.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP12.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP12.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP13)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP13._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP13._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x13, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x13, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x13, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP13.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP13.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP13.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP14)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP14._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP14._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x14, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x14, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x14, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP14.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP14.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP14.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP15)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP15._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP15._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x15, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x15, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x15, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP15.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP15.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP15.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP16)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP16._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP16._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x16, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x16, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x16, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP16.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP16.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP16.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP17)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP17._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP17._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x17, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x17, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x17, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP17.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP17.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP17.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP18)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP18._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP18._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x18, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x18, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x18, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP18.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP18.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP18.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP19)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP19._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP19._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x19, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x19, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x19, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP19.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP19.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP19.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP1A)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP1A._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP1A._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x1A, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x1A, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x1A, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP1A.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP1A.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP1A.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP1B)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP1B._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP1B._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x1B, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x1B, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x1B, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP1B.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP1B.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP1B.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP1C)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP1C._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP1C._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x1C, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x1C, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x1C, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP1C.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP1C.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP1C.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP1D)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP1D._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP1D._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x1D, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x1D, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x1D, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP1D.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP1D.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP1D.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP1E)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP1E._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP1E._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x1E, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x1E, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x1E, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP1E.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP1E.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP1E.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP1F)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP1F._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP1F._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x1F, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x1F, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x1F, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP1F.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP1F.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP1F.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP20)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP20._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP20._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x20, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x20, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x20, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP20.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP20.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP20.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP21)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP21._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP21._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x21, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x21, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x21, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP21.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP21.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP21.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP22)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP22._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP22._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x22, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x22, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x22, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP22.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP22.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP22.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP23)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP23._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP23._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x23, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x23, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x23, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP23.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP23.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP23.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP24)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP24._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP24._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x24, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x24, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x24, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP24.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP24.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP24.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP25)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP25._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP25._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x25, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x25, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x25, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP25.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP25.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP25.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP26)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP26._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP26._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x26, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x26, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x26, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP26.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP26.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP26.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP27)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP27._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP27._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x27, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x27, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x27, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP27.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP27.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP27.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP28)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP28._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP28._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x28, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x28, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x28, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP28.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP28.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP28.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP29)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP29._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP29._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x29, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x29, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x29, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP29.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP29.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP29.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP2A)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP2A._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP2A._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x2A, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x2A, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x2A, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP2A.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP2A.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP2A.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP2B)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP2B._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP2B._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x2B, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x2B, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x2B, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP2B.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP2B.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP2B.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP2C)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP2C._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP2C._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x2C, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x2C, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x2C, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP2C.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP2C.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP2C.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP2D)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP2D._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP2D._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x2D, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x2D, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x2D, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP2D.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP2D.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP2D.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP2E)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP2E._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP2E._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x2E, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x2E, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x2E, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP2E.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP2E.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP2E.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP2F)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP2F._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP2F._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x2F, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x2F, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x2F, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP2F.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP2F.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP2F.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP30)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP30._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP30._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x30, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x30, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x30, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP30.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP30.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP30.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP31)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP31._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP31._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x31, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x31, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x31, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP31.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP31.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP31.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP32)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP32._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP32._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x32, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x32, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x32, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP32.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP32.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP32.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP33)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP33._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP33._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x33, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x33, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x33, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP33.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP33.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP33.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP34)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP34._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP34._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x34, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x34, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x34, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP34.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP34.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP34.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP35)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP35._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP35._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x35, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x35, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x35, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP35.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP35.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP35.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP36)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP36._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP36._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x36, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x36, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x36, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP36.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP36.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP36.PSDC */
        }
    }

    Scope (\_SB.SCK0.CP37)
    {
        Name (SCKN, 0x00)
        OperationRegion (DBG0, SystemIO, 0x80, 0x02)
        Field (DBG0, ByteAcc, NoLock, Preserve)
        {
            IO80,   8, 
            IO81,   8
        }

        Name (TYPE, 0x80000000)
        Method (HWPT, 0, NotSerialized)
        {
            If ((((HWEN == 0x01) || (HWEN == 0x03)) && !(SDTL & 
                0x02)))
            {
                SDTL |= 0x02
                LoadTable ("OEM2", "INTEL", "CPU  HWP", "", "", Zero)
            }
        }

        Method (ISTT, 0, NotSerialized)
        {
            If ((((PSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x01)))
            {
                SDTL |= 0x01
                LoadTable ("OEM1", "INTEL", "CPU EIST", "", "", Zero)
            }
        }

        Method (TSTT, 0, NotSerialized)
        {
            If ((((TSEN == 0x01) && ((HWEN == 0x00) || (HWEN == 
                0x01))) && !(SDTL & 0x04)))
            {
                SDTL |= 0x04
                LoadTable ("OEM3", "INTEL", "CPU  TST", "", "", Zero)
            }
        }

        Method (CSTT, 0, NotSerialized)
        {
            If (((CSEN == 0x01) && !(SDTL & 0x08)))
            {
                SDTL |= 0x08
                LoadTable ("OEM4", "INTEL", "CPU  CST", "", "", Zero)
            }
        }

        Method (_PDC, 1, Serialized)  // _PDC: Processor Driver Capabilities
        {
            CreateDWordField (Arg0, 0x00, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Local0 = SizeOf (Arg0)
            Local1 = (Local0 - 0x08)
            CreateField (Arg0, 0x40, (Local1 * 0x08), TEMP)
            Name (STS0, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            Concatenate (STS0, TEMP, Local2)
            _OSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2)
        }

        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x04, CAPA)
            TYPE = CAPA /* \_SB_.SCK0.CP37._OSC.CAPA */
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            CreateDWordField (Arg0, 0x00, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Name (UID0, ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */)
            CreateDWordField (UID0, 0x00, EID0)
            CreateDWordField (UID0, 0x04, EID1)
            CreateDWordField (UID0, 0x08, EID2)
            CreateDWordField (UID0, 0x0C, EID3)
            If (!(((IID0 == EID0) && (IID1 == EID1)) && ((
                IID2 == EID2) && (IID3 == EID3))))
            {
                STS0 [0x00] = 0x06
                Return (Arg3)
            }

            If ((Arg1 != 0x01))
            {
                STS0 [0x00] = 0x0A
                Return (Arg3)
            }

            If ((STS0 & 0x01))
            {
                CAP0 &= 0x0BFF
                Return (Arg3)
            }

            If (((TYPE & 0x09) == 0x09))
            {
                ISTT ()
            }

            If ((HWPS == 0x01))
            {
                HWPT ()
            }

            If (((TYPE & 0x08) == 0x08))
            {
                TSTT ()
            }

            If (((TYPE & 0x18) == 0x18))
            {
                CSTT ()
            }

            CAP0 &= 0x0BFF
            TYPE = CAP0 /* \_SB_.SCK0.CP37._OSC.CAP0 */
            Return (Arg3)
        }

        Name (PSDC, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x37, 
                0xFC, 
                0x01
            }
        })
        Name (PSDD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x37, 
                0xFD, 
                0x01
            }
        })
        Name (PSDE, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                0x00, 
                0x37, 
                0xFE, 
                0x01
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((((TYPE & 0x0820) == 0x0820) && (HWAL == 0x00)))
            {
                Return (PSDE) /* \_SB_.SCK0.CP37.PSDE */
            }

            If ((((TYPE & 0x0820) == 0x20) && (HWAL == 0x02)))
            {
                Return (PSDD) /* \_SB_.SCK0.CP37.PSDD */
            }

            Return (PSDC) /* \_SB_.SCK0.CP37.PSDC */
        }
    }
}

