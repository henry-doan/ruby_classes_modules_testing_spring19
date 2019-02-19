require 'spec_helper'
require 'pry'
require_relative '../payroll.rb'

describe Payroll do
  before(:each) do
    @payroll = Payroll.new
  end

  it 'Prints menu' do
    expected = "==== Payroll ====\n1) Add employee\n2) Process payroll\n3) Exit\n"
    expect { @payroll.print_menu }.to output(expected).to_stdout
  end

  it 'make a selection for 1' do
    expected = 'Add Employee'
    actual = @payroll.menu_options(1)
    expect(actual).to eq(expected)
  end

  it 'make a selection for 2' do
    expected = 'Process Payroll'
    actual = @payroll.menu_options(2)
    expect(actual).to eq(expected)
  end

  it 'make a selection for 3' do
    expected = 'Goodbye'
    actual = @payroll.menu_options(3)
    expect(actual).to eq(expected)
  end

  it 'msg for invaild input' do
    expected = 'Invalid choice try again'
    actual = @payroll.menu_options('fake')
    expect(actual).to eq(expected)
  end

end 