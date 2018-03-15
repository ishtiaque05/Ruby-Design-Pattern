require './require_all'

class All < Formula
  def evaluate(dir)
  	results = []
  	Find.find(dir) do |p|
  	  next unless File.file?(p)
  	  results << p
  	end
  	results
  end
end