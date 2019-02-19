# D.R.Y
# Don't Repeat Yourself
module Math
  def add(num_1, num_2)
    num_1 + num_2
  end

  def subtract(num_1, num_2)
    num_1 - num_2
  end
end

class MathAssignment
  include Math

  def first_solution
    add(30, 5) + subtract(3, 20)
  end
end

assignment = MathAssignment.new
p assignment.first_solution