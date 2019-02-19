class Parent 
  def use_parent_method
    puts 'This is from the parent'
  end

  def overrideable
    puts 'This is the parent'
  end

  def alterable
    puts 'change me'
  end
end

class Child < Parent
  def overrideable
    puts 'this is the child'
  end

  def alterable
    puts 'I am the child'
    super()
    puts 'more info here'
  end
end

class GrandChild < Child

end

p = Parent.new
c = Child.new

# p.use_parent_method
# c.use_parent_method

# p.overrideable
# c.overrideable

p.alterable
c.alterable