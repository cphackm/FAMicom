require "./rom.cr"

class Memory
  def initialize(rom : Rom)
    @ram = Bytes.new(2048)
    @ppu = Bytes.new(8)
    @rom = rom
  end

  def rom
    @rom
  end

  def read_byte(addr : UInt16)
    # Check addr to decide where to read from
    @rom.data[addr]
  end

end

ram = Memory.new(Rom.new("../roms/nestest.nes"))
pp ram.read_byte(0_u16)

