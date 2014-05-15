require 'spec_helper'

puts defined?(Rails)
puts Rails::VERSION::MAJOR
if defined?(Rails) && Rails::VERSION::MAJOR == 3
  include Rails3Generator

  describe "Rails 3 Integration" do
    before :all do
      create_app
    end
    
    after :all do
      destroy_app
    end

    it "tests rails" do
      puts "hi"
    end
  end
end
