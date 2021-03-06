require_relative 'spec_helper'

describe Lexer do
  before do
    def lexer
      @lexer = Lexer.new(simple_code)
    end
  end
  
  it "should check if the given code is an instance of string" do
    self.lexer.code.must_be_instance_of String
  end
  
  it "should tokenize and output the given code" do
    tokens = lexer.tokenize
    puts "Parsed Tokens :\n #{code_print(tokens.pretty_inspect, :ruby)}"
    puts "Number of Tokens  #{tokens.length}"
  end

  it "should read token sequentially using read_token method" do
    skip
    lexer_instance = lexer
    total_tokens = lexer_instance.tokenize.size
    total_tokens.times{|count| puts "Count : #{count} :\n #{ code_print(lexer_instance.read_token.pretty_inspect, :java) }" }
  end

  it "should be able to read the current token and look_ahead one token" do
    skip
    lexer_instance = lexer
    total_tokens = lexer_instance.tokenize.size
    total_tokens.times do |count|
      print "#{ paint("Count :#{count}", :red)}
      Current Token : #{ code_print(lexer_instance.read_token.pretty_inspect, :java) }
      Lookbehind Token  : #{ code_print(lexer_instance.look_ahead.pretty_inspect, :java) }" 
    end
  end
end
