class MusicComponent
  attr_reader :children

  def initialize
  	@children = []
  end

  # The 'add' method adds a child component
  # to the current component class.
  def add_child(component)
  	@children.push(component)
  	puts "Adding parent of #{component.class} to #{self.class}"
  	component.parent = self
  end

  # The 'remove' method removes a child
  # component from the current component
  # class.
  def remove(component)
  	@children.delete(component)
  	component.parent = nil
  end

  # The 'get_child' method will return a
  # child of this class by index.
  def get_child(index)
  	@children[index]
  end

  # The 'get_children' method will return
  # an array of the children of the current
  # component.
  def get_children
  	@children
  end
end