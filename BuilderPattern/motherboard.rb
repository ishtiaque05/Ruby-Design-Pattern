require './basic_cpu'

class Motherboard
  attr_accessor :cpu
  attr_accessor :memory_size

  def initialize(cpu = BasicCPU.new, memory_size = 1000)
  	@cpu = cpu
  	@memory_size = memory_size
  end
end