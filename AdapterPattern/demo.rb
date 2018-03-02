require './type_a_plug'
require './type_c_outlet'
require './c2a_adapter'

macbook_charger_plug = TypeAPlug.new
type_c_outlet = TypeCOutlet.new
c2a_adapter = C2AAdapter.new(type_c_outlet)

macbook_charger_plug.plug_into(c2a_adapter)

puts "Macbook electricity: #{macbook_charger_plug.electricity}"
puts "Macbook voltage: #{macbook_charger_plug.voltage}"