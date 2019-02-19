# TDD - Test Driven Development
# BDD - Behavior Driven Development
require 'spec_helper'
# require_relative '../main.rb'

describe 'sum method' do
  it 'adds two numbers' do
    num1 = 2
    num2 = 3
    result = 5
    actual = sum(num1, num2)
    expect(actual).to eq(result)
  end
end
