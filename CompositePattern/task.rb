class Task
  attr_accessor :name, :parent

  def initialize(name)
  	@name = name
  	@parent = nil
  	puts "#{name}.............."
  end

  def get_time_required
  	0.0
  end

end