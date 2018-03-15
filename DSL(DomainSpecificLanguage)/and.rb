require './require_all'
class And < Formula
  def initialize(expression1, expression2)
  	@expression1 = expression1
  	@expression2 = expression2
  end

  def evaluate(dir)
  	result1 = @expression1.evaluate(dir)
  	result2 = @expression2.evaluate(dir)
  	(result1 & result2)
  end
end