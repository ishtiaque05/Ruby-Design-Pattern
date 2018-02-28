require './command'
require 'fileutils'

class CopyFile < Command
  def initialize(source, target)
  	super("Copy File: #{source} to #{target}")
  	@source = source
  	@target = target
  end

  def execute
  	if File.exists?(@target)
  	  @contents = File.read(@target)	
  	end
  	FileUtils.copy(@source, @target)
  end

  def unexecute
  	if @contents
  	  FileUtils.copy(@contents, @target)
  	else
  	  File.delete(@target)  
  	end
  end
end