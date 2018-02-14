require './composite_task'
require './make_batter_task'
require './fill_pan_task'
class MakeCakeTask < CompositeTask
  def initialize
  	super('Make cake')
  	add_sub_task(MakeBatterTask.new)
  	add_sub_task(FillPanTask.new)
  end
end