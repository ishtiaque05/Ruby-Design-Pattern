require './class_based_logger'
require './module_based_logger'
ClassBasedLogger.level = ClassBasedLogger::INFO

puts 'Class Based logger::: File written to log.txts'
ClassBasedLogger.info('Computer wins chess game.')
ClassBasedLogger.warning('Ram failure')
ClassBasedLogger.error('semi-colon missing')

puts 'Module Based Logger::: File writter to modulelog.txt'
ModuleBasedLogger.level = ModuleBasedLogger::INFO
ModuleBasedLogger.info('Computer wins in uno.')
ModuleBasedLogger.warning('over heating')
ModuleBasedLogger.error('no method found!')