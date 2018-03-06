class ClassBasedLogger
  ERROR = 1
  WARNING = 2
  INFO = 3

  @@log = File.open('log.txt', 'w')
  @@level = WARNING

  def self.error(msg)
  	@@log.puts("ERROR: #{msg}")
  	@@log.flush
  end

  def self.warning(msg)
  	@@log.puts("WARNING: #{msg}") if @@level >= WARNING
  	@@log.flush
  end

  def self.info(msg)
  	@@log.puts("INFO: #{msg}") if @@level >= INFO
  	@@log.flush
  end

  def self.level=(new_level)
  	@@level = new_level
  end

  def self.level
  	@@level
  end
end