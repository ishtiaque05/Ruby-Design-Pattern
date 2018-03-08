require './computer_builder'

builder = ComputerBuilder.new
builder.turbo
builder.add_cd(true)
builder.add_dvd
builder.add_hard_disk(100000)

computer1 = builder.computer
puts builder

computer2 = builder.computer
# The trouble is, because the computer method always returns the same computer,
# both computer1 and computer2 end up being references to the same computer, which
# is probably not what you expected here. One way to deal with this issue is to equip your
# builder with a reset method, which reinitializes the object under construction.

builder.reset

# now continue building a new computer all over again