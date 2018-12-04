require_relative 'spec_helper'

FUNCTION = 'filter'
ARITY = 2
PATH = File.join("lib",FUNCTION+".rb")
RELATIVE_PATH = File.join("..", PATH)

describe "#{FUNCTION}" do

	def self.test_order
    	:alpha
  	end

	it 'exists' do
		assert File.exist?(PATH), "Du behöver skapa filen #{PATH}"
		require_relative RELATIVE_PATH
	end
	
	it "has a function named #{FUNCTION}" do
		assert (method_exists? FUNCTION.to_sym), "Du behöver definera funktionen #{FUNCTION} i lib/#{FUNCTION}.rb"
  end

  it "takes #{ARITY.humanize} argument#{ARITY > 1 ? "s" : ""}" do
		message = "Funktionen #{FUNCTION} måste ta #{ARITY} argument"
		assert_equal ARITY, method(FUNCTION.to_sym).arity, message
	end

  it 'should not modify the original array' do
    input = [1,2,3,3,4]
    filter(input, 3)
    input.must_equal [1,2,3,3,4]
  end

  it 'should should return an array only containing all occurences of "value" ' do
    filter(['bosse', 'daniel', 'edvard', 'bosse', 'bosse'], 'bosse').must_equal ['bosse', 'bosse', 'bosse']
    filter(['bosse', 'daniel', 'edvard', 'bosse', 'bosse'], 'edvard').must_equal ['edvard']
  end


end
