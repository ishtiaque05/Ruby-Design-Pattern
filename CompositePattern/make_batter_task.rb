require './composite_task'
require './add_dry_ingredients_task'
require './add_liquids_task'
require './mixtask'
class MakeBatterTask < CompositeTask 
  def initialize
  	super('Make batter')
  	@sub_tasks = []
  	add_sub_task(AddDryIngredientsTask.new)
  	add_sub_task(AddLiquidsTask.new)
  	add_sub_task(MixTask.new)
  end
end