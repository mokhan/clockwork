Dir[File.dirname(__FILE__) + '**/*.rb'].each do |file|
  load file unless file == __FILE__
end
