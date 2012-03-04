require "minitest/autorun"
require "minitest/spec"
require 'developwithpassion_fakes'
require File.absolute_path(File.dirname(__FILE__)+'/../../app')

Dir[File.dirname(__FILE__) + '/**/*.rb'].each do |e| 
  load e unless(e == __FILE__)
end
