require './pond'
require './duck'
require './waterlily'
require './frog'
require './algae'

pond = Pond.new(3, Duck, 2, WaterLily)
pond.simulate_one_day

pond2 = Pond.new(2, Frog,  1, Algae)
pond2.simulate_one_day