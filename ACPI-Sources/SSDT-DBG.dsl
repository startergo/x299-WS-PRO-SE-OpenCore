/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLtpsQm4.aml, Wed Nov 23 15:21:44 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000002F (47)
 *     Revision         0x01
 *     Checksum         0xC7
 *     OEM ID           "APPLE "
 *     OEM Table ID     "Debug"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 1, "APPLE ", "Debug", 0x00001000)
{
    Method (MDBG, 1, NotSerialized)
    {
        Debug = Arg0
    }
}

