module Shout
  #def self.yell_angrily(words)
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  #def self.yelling_happily(words)
  def yelling_happily(words)
    words + "!!!" + " :)"
  end
end

#puts Shout.yell_angrily("What did you say?")
#puts Shout.yelling_happily("We won")

class Boss
  include Shout
end

class Teacher
  include Shout
end

mr_boss = Boss.new
p mr_boss.yell_angrily("You're late")
p mr_boss.yelling_happily("We closed the sale")

puts " "

mr_teacher = Teacher.new
p mr_teacher.yell_angrily("You didn't turn in your homework")
p mr_teacher.yelling_happily("You got an A")