class SteveJob < ApplicationJob
  queue_as :default

  def perform
    puts "My first story is about connecting the dots"
    puts "blablabla"
    sleep 5
    puts "Stay hungry, stay foolish!"
  end
end
