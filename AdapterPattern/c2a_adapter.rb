class C2AAdapter
  attr_reader :type_c_outlet

  def initialize(type_c_outlet)
  	@type_c_outlet = type_c_outlet
  end

  def type_a_elec
  	"converting #{@type_c_outlet.type_c_elec}"
  	# some electric circuit conversion
  	'15A electricity'
  end

  def type_a_voltage
  	"converting #{@type_c_outlet.type_c_voltage}"
  	# some electric circuit conversion
  	'100 - 127 voltages'
  end
end