class Rom
  def initialize(filename : String)
    @filename = filename
    @size = File.size(filename)
    @data = Bytes.new(@size)
    File.open(filename) do |file|
      file.read_fully(@data)
    end
  end

  def data
    @data
  end

  def size
    @size
  end

  def filename
    @filename
  end

  def read_byte(offset : UInt32)
    @data[offset]
  end

end

rom = Rom.new("../roms/nestest.nes")
pp rom.size

