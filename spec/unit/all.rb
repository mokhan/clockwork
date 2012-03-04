require "minitest/autorun"
require "minitest/spec"

Dir[File.dirname(__FILE__) + '/**/*.rb'].each do |e| 
  load e unless(e == __FILE__)
end
