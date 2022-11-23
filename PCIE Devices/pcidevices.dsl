DefinitionBlock ("", "SSDT", 2, "HACK", "PCI", 0x00000000)
{
	External (_SB_.PC00.DMI0, DeviceObj)
	Device (_SB.PC00.DMI0)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E DMI3 Registers" },
				"device_type", Buffer () { "Host bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,0,0" },
			})
		}
	}
	External (_SB_.PC00.CB0A, DeviceObj)
	Device (_SB.PC00.CB0A)
	{
		Name (_ADR, 0x00040000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E CBDMA Registers" },
				"device_type", Buffer () { "System peripheral" },
				"AAPL,slot-name", Buffer () { "Internal@0,4,0" },
			})
		}
	}
	External (_SB_.PC00.CB0B, DeviceObj)
	Device (_SB.PC00.CB0B)
	{
		Name (_ADR, 0x00040001)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E CBDMA Registers" },
				"device_type", Buffer () { "System peripheral" },
				"AAPL,slot-name", Buffer () { "Internal@0,4,1" },
			})
		}
	}
	External (_SB_.PC00.CB0C, DeviceObj)
	Device (_SB.PC00.CB0C)
	{
		Name (_ADR, 0x00040002)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E CBDMA Registers" },
				"device_type", Buffer () { "System peripheral" },
				"AAPL,slot-name", Buffer () { "Internal@0,4,2" },
			})
		}
	}
	External (_SB_.PC00.CB0D, DeviceObj)
	Device (_SB.PC00.CB0D)
	{
		Name (_ADR, 0x00040003)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E CBDMA Registers" },
				"device_type", Buffer () { "System peripheral" },
				"AAPL,slot-name", Buffer () { "Internal@0,4,3" },
			})
		}
	}
	External (_SB_.PC00.CB0E, DeviceObj)
	Device (_SB.PC00.CB0E)
	{
		Name (_ADR, 0x00040004)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E CBDMA Registers" },
				"device_type", Buffer () { "System peripheral" },
				"AAPL,slot-name", Buffer () { "Internal@0,4,4" },
			})
		}
	}
	External (_SB_.PC00.CB0F, DeviceObj)
	Device (_SB.PC00.CB0F)
	{
		Name (_ADR, 0x00040005)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E CBDMA Registers" },
				"device_type", Buffer () { "System peripheral" },
				"AAPL,slot-name", Buffer () { "Internal@0,4,5" },
			})
		}
	}
	External (_SB_.PC00.CB0G, DeviceObj)
	Device (_SB.PC00.CB0G)
	{
		Name (_ADR, 0x00040006)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E CBDMA Registers" },
				"device_type", Buffer () { "System peripheral" },
				"AAPL,slot-name", Buffer () { "Internal@0,4,6" },
			})
		}
	}
	External (_SB_.PC00.CB0H, DeviceObj)
	Device (_SB.PC00.CB0H)
	{
		Name (_ADR, 0x00040007)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E CBDMA Registers" },
				"device_type", Buffer () { "System peripheral" },
				"AAPL,slot-name", Buffer () { "Internal@0,4,7" },
			})
		}
	}
	External (_SB_.PC00.IIM0, DeviceObj)
	Device (_SB.PC00.IIM0)
	{
		Name (_ADR, 0x00050000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E MM/Vt-d Configuration Registers" },
				"device_type", Buffer () { "System peripheral" },
				"AAPL,slot-name", Buffer () { "Internal@0,5,0" },
			})
		}
	}
	External (_SB_.PC00.UBX0, DeviceObj)
	Device (_SB.PC00.UBX0)
	{
		Name (_ADR, 0x00080000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E Ubox Registers" },
				"device_type", Buffer () { "System peripheral" },
				"AAPL,slot-name", Buffer () { "Internal@0,8,0" },
			})
		}
	}
	External (_SB_.PC00.XHCI, DeviceObj)
	Device (_SB.PC00.XHCI)
	{
		Name (_ADR, 0x00140000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "200 Series/Z370 Chipset Family USB 3.0 xHCI Controller" },
				"device_type", Buffer () { "USB controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,20,0" },
			})
		}
	}
	External (_SB_.PC00.THSS, DeviceObj)
	Device (_SB.PC00.THSS)
	{
		Name (_ADR, 0x00140002)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "200 Series PCH Thermal Subsystem" },
				"device_type", Buffer () { "Signal processing controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,20,2" },
			})
		}
	}
	External (_SB_.PC00.IMEI, DeviceObj)
	Device (_SB.PC00.IMEI)
	{
		Name (_ADR, 0x00160000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "200 Series PCH CSME HECI #1" },
				"device_type", Buffer () { "Communication controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,22,0" },
			})
		}
	}
	External (_SB_.PC00.SAT1, DeviceObj)
	Device (_SB.PC00.SAT1)
	{
		Name (_ADR, 0x00170000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "200 Series PCH SATA controller [AHCI mode]" },
				"device_type", Buffer () { "SATA controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,23,0" },
			})
		}
	}
	External (_SB_.PC00.RP17, DeviceObj)
	Device (_SB.PC00.RP17)
	{
		Name (_ADR, 0x001b0000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "200 Series PCH PCI Express Root Port #17" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,27,0" },
			})
		}
	}
	External (_SB_.PC00.RP19, DeviceObj)
	Device (_SB.PC00.RP19)
	{
		Name (_ADR, 0x001b0002)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "200 Series PCH PCI Express Root Port #19" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,27,2" },
			})
		}
	}
	External (_SB_.PC00.RP03, DeviceObj)
	Device (_SB.PC00.RP03)
	{
		Name (_ADR, 0x001c0002)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "200 Series PCH PCI Express Root Port #3" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,2" },
			})
		}
	}
	External (_SB_.PC00.RP01, DeviceObj)
	Device (_SB.PC00.RP01)
	{
		Name (_ADR, 0x001c0000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "200 Series PCH PCI Express Root Port #1" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,0" },
			})
		}
	}
	External (_SB_.PC00.RP04, DeviceObj)
	Device (_SB.PC00.RP04)
	{
		Name (_ADR, 0x001c0003)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "200 Series PCH PCI Express Root Port #4" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,3" },
			})
		}
	}
	External (_SB_.PC00.RP05, DeviceObj)
	Device (_SB.PC00.RP05)
	{
		Name (_ADR, 0x001c0004)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "200 Series PCH PCI Express Root Port #5" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,4" },
			})
		}
	}
	External (_SB_.PC00.RP09, DeviceObj)
	Device (_SB.PC00.RP09)
	{
		Name (_ADR, 0x001d0000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "200 Series PCH PCI Express Root Port #9" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,29,0" },
			})
		}
	}
	External (_SB_.PC00.LPC0, DeviceObj)
	Device (_SB.PC00.LPC0)
	{
		Name (_ADR, 0x001f0000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "X299 Chipset LPC/eSPI Controller" },
				"device_type", Buffer () { "ISA bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,31,0" },
			})
		}
	}
	External (_SB_.PC00.PMCR, DeviceObj)
	Device (_SB.PC00.PMCR)
	{
		Name (_ADR, 0x001f0002)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "200 Series/Z370 Chipset Family Power Management Controller" },
				"device_type", Buffer () { "Memory controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,31,2" },
			})
		}
	}
	External (_SB_.PC00.HDEF, DeviceObj)
	Device (_SB.PC00.HDEF)
	{
		Name (_ADR, 0x001f0003)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "200 Series PCH HD Audio" },
				"layout-id", Buffer () { 0x01, 0x00, 0x00, 0x00 },
				"AAPL,slot-name", Buffer () { "Internal@0,31,3" },
				"device_type", Buffer () { "Audio device" },
			})
		}
	}
	External (_SB_.PC00.SBUS, DeviceObj)
	Device (_SB.PC00.SBUS)
	{
		Name (_ADR, 0x001f0004)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "200 Series/Z370 Chipset Family SMBus Controller" },
				"device_type", Buffer () { "SMBus" },
				"AAPL,slot-name", Buffer () { "Internal@0,31,4" },
			})
		}
	}
	External (_SB_.PC03.BR3C, DeviceObj)
	Device (_SB.PC03.BR3C)
	{
		Name (_ADR, 0x00020000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E PCI Express Root Port C" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@3,2,0" },
			})
		}
	}
	External (_SB_.PC03.M3K0, DeviceObj)
	Device (_SB.PC03.M3K0)
	{
		Name (_ADR, 0x00120000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E M3KTI Registers" },
				"device_type", Buffer () { "Performance counters" },
				"AAPL,slot-name", Buffer () { "Internal@3,18,0" },
			})
		}
	}
	External (_SB_.PC03.M2U0, DeviceObj)
	Device (_SB.PC03.M2U0)
	{
		Name (_ADR, 0x00150000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E M2PCI Registers" },
				"device_type", Buffer () { "System peripheral" },
				"AAPL,slot-name", Buffer () { "Internal@3,21,0" },
			})
		}
	}
	External (_SB_.PC03.M2D0, DeviceObj)
	Device (_SB.PC03.M2D0)
	{
		Name (_ADR, 0x00160000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E M2PCI Registers" },
				"device_type", Buffer () { "System peripheral" },
				"AAPL,slot-name", Buffer () { "Internal@3,22,0" },
			})
		}
	}
	External (_SB_.PC03.D03D, DeviceObj)
	Device (_SB.PC03.D03D)
	{
		Name (_ADR, 0x00170000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E M2PCI Registers" },
				"device_type", Buffer () { "System peripheral" },
				"AAPL,slot-name", Buffer () { "Internal@3,23,0" },
			})
		}
	}
	External (_SB_.PC00.RP05.ARPT, DeviceObj)
	Device (_SB.PC00.RP05.ARPT)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "BCM43602 802.11ac Wireless LAN SoC" },
				"device_type", Buffer () { "Network controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,4/0,0" },
			})
		}
	}
	External (_SB_.PC01.BR1A, DeviceObj)
	Device (_SB.PC01.BR1A)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E PCI Express Root Port A" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@1,0,0" },
			})
		}
	}
	External (_SB_.PC01.CHA0, DeviceObj)
	Device (_SB.PC01.CHA0)
	{
		Name (_ADR, 0x00080000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E CHA Registers" },
				"device_type", Buffer () { "System peripheral" },
				"AAPL,slot-name", Buffer () { "Internal@1,8,0" },
			})
		}
	}
	External (_SB_.PC01.CHA1, DeviceObj)
	Device (_SB.PC01.CHA1)
	{
		Name (_ADR, 0x00090000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E CHA Registers" },
				"device_type", Buffer () { "System peripheral" },
				"AAPL,slot-name", Buffer () { "Internal@1,9,0" },
			})
		}
	}
	External (_SB_.PC01.CHA2, DeviceObj)
	Device (_SB.PC01.CHA2)
	{
		Name (_ADR, 0x000a0000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E CHA Registers" },
				"device_type", Buffer () { "System peripheral" },
				"AAPL,slot-name", Buffer () { "Internal@1,10,0" },
			})
		}
	}
	External (_SB_.PC01.CHA4, DeviceObj)
	Device (_SB.PC01.CHA4)
	{
		Name (_ADR, 0x000e0000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E CHA Registers" },
				"device_type", Buffer () { "System peripheral" },
				"AAPL,slot-name", Buffer () { "Internal@1,14,0" },
			})
		}
	}
	External (_SB_.PC01.CHA5, DeviceObj)
	Device (_SB.PC01.CHA5)
	{
		Name (_ADR, 0x000f0000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E CHA Registers" },
				"device_type", Buffer () { "System peripheral" },
				"AAPL,slot-name", Buffer () { "Internal@1,15,0" },
			})
		}
	}
	External (_SB_.PC01.CHA6, DeviceObj)
	Device (_SB.PC01.CHA6)
	{
		Name (_ADR, 0x00100000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E CHA Registers" },
				"device_type", Buffer () { "System peripheral" },
				"AAPL,slot-name", Buffer () { "Internal@1,16,0" },
			})
		}
	}
	External (_SB_.PC01.CDL0, DeviceObj)
	Device (_SB.PC01.CDL0)
	{
		Name (_ADR, 0x001d0000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E CHA Registers" },
				"device_type", Buffer () { "System peripheral" },
				"AAPL,slot-name", Buffer () { "Internal@1,29,0" },
			})
		}
	}
	External (_SB_.PC01.PCU0, DeviceObj)
	Device (_SB.PC01.PCU0)
	{
		Name (_ADR, 0x001e0000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E PCU Registers" },
				"device_type", Buffer () { "System peripheral" },
				"AAPL,slot-name", Buffer () { "Internal@1,30,0" },
			})
		}
	}
	External (_SB_.PC03.BR3C.SL0B, DeviceObj)
	Device (_SB.PC03.BR3C.SL0B)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "ASM2824 PCIe Gen3 Packet Switch" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@3,2,0/0,0" },
			})
		}
	}
	External (_SB_.PC02.BR2A, DeviceObj)
	Device (_SB.PC02.BR2A)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E PCI Express Root Port A" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@2,0,0" },
			})
		}
	}
	External (_SB_.PC02.M2M0, DeviceObj)
	Device (_SB.PC02.M2M0)
	{
		Name (_ADR, 0x00080000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E Integrated Memory Controller" },
				"device_type", Buffer () { "System peripheral" },
				"AAPL,slot-name", Buffer () { "Internal@2,8,0" },
			})
		}
	}
	External (_SB_.PC02.M2M1, DeviceObj)
	Device (_SB.PC02.M2M1)
	{
		Name (_ADR, 0x00090000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E Integrated Memory Controller" },
				"device_type", Buffer () { "System peripheral" },
				"AAPL,slot-name", Buffer () { "Internal@2,9,0" },
			})
		}
	}
	External (_SB_.PC02.MCM0, DeviceObj)
	Device (_SB.PC02.MCM0)
	{
		Name (_ADR, 0x000a0000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E Integrated Memory Controller" },
				"device_type", Buffer () { "System peripheral" },
				"AAPL,slot-name", Buffer () { "Internal@2,10,0" },
			})
		}
	}
	External (_SB_.PC02.MCD0, DeviceObj)
	Device (_SB.PC02.MCD0)
	{
		Name (_ADR, 0x000b0000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E DECS Channel 2" },
				"device_type", Buffer () { "System peripheral" },
				"AAPL,slot-name", Buffer () { "Internal@2,11,0" },
			})
		}
	}
	External (_SB_.PC02.MCM1, DeviceObj)
	Device (_SB.PC02.MCM1)
	{
		Name (_ADR, 0x000c0000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E Integrated Memory Controller" },
				"device_type", Buffer () { "System peripheral" },
				"AAPL,slot-name", Buffer () { "Internal@2,12,0" },
			})
		}
	}
	External (_SB_.PC02.MCD1, DeviceObj)
	Device (_SB.PC02.MCD1)
	{
		Name (_ADR, 0x000d0000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Sky Lake-E DECS Channel 2" },
				"device_type", Buffer () { "System peripheral" },
				"AAPL,slot-name", Buffer () { "Internal@2,13,0" },
			})
		}
	}
	External (_SB_.PC00.RP04.D0A7, DeviceObj)
	Device (_SB.PC00.RP04.D0A7)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "I210 Gigabit Network Connection" },
				"device_type", Buffer () { "Ethernet controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,3/0,0" },
			})
		}
	}
	External (_SB_.PC00.RP19.PXSX, DeviceObj)
	Device (_SB.PC00.RP19.PXSX)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "ASM2142/ASM3142 USB 3.1 Host Controller" },
				"device_type", Buffer () { "USB controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,27,2/0,0" },
			})
		}
	}
	External (_SB_.PC02.BR2A.PEGP, DeviceObj)
	Device (_SB.PC02.BR2A.PEGP)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Navi 10 XL Upstream Port of PCI Express Switch" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@2,0,0/0,0" },
			})
		}
	}
	External (_SB_.PC03.BR3C.SL0B.BRG0, DeviceObj)
	Device (_SB.PC03.BR3C.SL0B.BRG0)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "ASM2824 PCIe Gen3 Packet Switch" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@3,2,0/0,0/0,0" },
			})
		}
	}
	External (_SB_.PC03.BR3C.SL0B.BRG1, DeviceObj)
	Device (_SB.PC03.BR3C.SL0B.BRG1)
	{
		Name (_ADR, 0x00040000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "ASM2824 PCIe Gen3 Packet Switch" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@3,2,0/0,0/4,0" },
			})
		}
	}
	External (_SB_.PC03.BR3C.SL0B.BRG2, DeviceObj)
	Device (_SB.PC03.BR3C.SL0B.BRG2)
	{
		Name (_ADR, 0x00080000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "ASM2824 PCIe Gen3 Packet Switch" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@3,2,0/0,0/8,0" },
			})
		}
	}
	External (_SB_.PC03.BR3C.SL0B.BRG3, DeviceObj)
	Device (_SB.PC03.BR3C.SL0B.BRG3)
	{
		Name (_ADR, 0x000c0000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "ASM2824 PCIe Gen3 Packet Switch" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@3,2,0/0,0/12,0" },
			})
		}
	}
	External (_SB_.PC00.RP09.ANS5, DeviceObj)
	Device (_SB.PC00.RP09.ANS5)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "NVMe SSD Controller SM981/PM981/PM983" },
				"device_type", Buffer () { "Non-Volatile memory controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,29,0/0,0" },
			})
		}
	}
	External (_SB_.PC01.BR1A.PEGP, DeviceObj)
	Device (_SB.PC01.BR1A.PEGP)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Navi 10 XL Upstream Port of PCI Express Switch" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@1,0,0/0,0" },
			})
		}
	}
	External (_SB_.PC00.RP01.XHC2, DeviceObj)
	Device (_SB.PC00.RP01.XHC2)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "ASM2142/ASM3142 USB 3.1 Host Controller" },
				"device_type", Buffer () { "USB controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,0/0,0" },
			})
		}
	}
	External (_SB_.PC00.RP03.D0A6, DeviceObj)
	Device (_SB.PC00.RP03.D0A6)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "I210 Gigabit Network Connection" },
				"device_type", Buffer () { "Ethernet controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,2/0,0" },
			})
		}
	}
	External (_SB_.PC03.BR3C.SL0B.BRG1.ANS2, DeviceObj)
	Device (_SB.PC03.BR3C.SL0B.BRG1.ANS2)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "E12 NVMe Controller" },
				"device_type", Buffer () { "Non-Volatile memory controller" },
				"AAPL,slot-name", Buffer () { "Internal@3,2,0/0,0/4,0/0,0" },
			})
		}
	}
	External (_SB_.PC03.BR3C.SL0B.BRG0.ANS1, DeviceObj)
	Device (_SB.PC03.BR3C.SL0B.BRG0.ANS1)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "E12 NVMe Controller" },
				"device_type", Buffer () { "Non-Volatile memory controller" },
				"AAPL,slot-name", Buffer () { "Internal@3,2,0/0,0/0,0/0,0" },
			})
		}
	}
	External (_SB_.PC03.BR3C.SL0B.BRG2.ANS3, DeviceObj)
	Device (_SB.PC03.BR3C.SL0B.BRG2.ANS3)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "E12 NVMe Controller" },
				"device_type", Buffer () { "Non-Volatile memory controller" },
				"AAPL,slot-name", Buffer () { "Internal@3,2,0/0,0/8,0/0,0" },
			})
		}
	}
	External (_SB_.PC02.BR2A.PEGP.BRG0, DeviceObj)
	Device (_SB.PC02.BR2A.PEGP.BRG0)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Navi 10 XL Downstream Port of PCI Express Switch" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@2,0,0/0,0/0,0" },
			})
		}
	}
	External (_SB_.PC01.BR1A.PEGP.BRG0, DeviceObj)
	Device (_SB.PC01.BR1A.PEGP.BRG0)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Navi 10 XL Downstream Port of PCI Express Switch" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@1,0,0/0,0/0,0" },
			})
		}
	}
	External (_SB_.PC03.BR3C.SL0B.BRG3.ANS4, DeviceObj)
	Device (_SB.PC03.BR3C.SL0B.BRG3.ANS4)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "E12 NVMe Controller" },
				"device_type", Buffer () { "Non-Volatile memory controller" },
				"AAPL,slot-name", Buffer () { "Internal@3,2,0/0,0/12,0/0,0" },
			})
		}
	}
	External (_SB_.PC02.BR2A.PEGP.BRG0.GFX0, DeviceObj)
	Device (_SB.PC02.BR2A.PEGP.BRG0.GFX0)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Navi 21 GL-XL [Radeon PRO W6800]" },
				"device_type", Buffer () { "VGA compatible controller" },
				"AAPL,slot-name", Buffer () { "Internal@2,0,0/0,0/0,0/0,0" },
			})
		}
	}
	External (_SB_.PC02.BR2A.PEGP.BRG0.HDAU, DeviceObj)
	Device (_SB.PC02.BR2A.PEGP.BRG0.HDAU)
	{
		Name (_ADR, 0x00000001)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Navi 21/23 HDMI/DP Audio Controller" },
				"device_type", Buffer () { "Audio device" },
				"AAPL,slot-name", Buffer () { "Internal@2,0,0/0,0/0,0/0,1" },
			})
		}
	}
	External (_SB_.PC01.BR1A.PEGP.BRG0.GFX0, DeviceObj)
	Device (_SB.PC01.BR1A.PEGP.BRG0.GFX0)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Navi 23 WKS-XL [Radeon PRO W6600]" },
				"device_type", Buffer () { "VGA compatible controller" },
				"AAPL,slot-name", Buffer () { "Internal@1,0,0/0,0/0,0/0,0" },
			})
		}
	}
	External (_SB_.PC01.BR1A.PEGP.BRG0.HDAU, DeviceObj)
	Device (_SB.PC01.BR1A.PEGP.BRG0.HDAU)
	{
		Name (_ADR, 0x00000001)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Navi 21/23 HDMI/DP Audio Controller" },
				"device_type", Buffer () { "Audio device" },
				"AAPL,slot-name", Buffer () { "Internal@1,0,0/0,0/0,0/0,1" },
			})
		}
	}
}
