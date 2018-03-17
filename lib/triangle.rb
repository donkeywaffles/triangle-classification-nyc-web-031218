require 'pry'
class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    error1 = side1 + side2 <= side3
    error2 = side2 + side3 <= side1
    error3 = side3 + side1 <= side2
    error4 = side1 <= 0 || side2 <= 0 || side3 <= 0

    if error1 || error2 || error3 || error4
      raise TriangleError
    else
      if side1 == side2 && side2 == side3 && side3 == side1
        :equilateral
      elsif side1 == side2 || side2 == side3 || side3 == side1
        :isosceles
      else
        :scalene
      end
    end
  end
end



class TriangleError < StandardError
  # def message
  #   "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality.\nFurther, each side must be larger than 0."
  # end
end
