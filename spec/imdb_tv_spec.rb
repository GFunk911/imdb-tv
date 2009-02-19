files = Dir[File.dirname(__FILE__)+"/spec_*.rb"].reject { |x| x =~ /spec_helper/ }
files.each { |x| require x }
