class TypeAPlug
  attr_accessor :electricity, :voltage

  def initialize
  	@electricity = nil
  	@voltage = nil
  end

  def plug_into(outlet)
  	self.electricity = outlet.type_a_elec
  	self.voltage = outlet.type_a_voltage
  end
end