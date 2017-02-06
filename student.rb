class Student

  # attr_accessor :name, :cohort
  # attr_accessor :name
  # attr_reader :name
  # attr_writer :name

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def name
    return @name
  end

  def cohort_number
    return @cohort
  end

  def set_name(change_name)
    @name = change_name
  end

  def set_cohort(change)
    @cohort = change
  end

  def student_talk
    return "#{@name} can talk!"
  
  end

  def favourite_language
    puts "Hey, what's your favourite language?"
    input = gets.chomp
    puts "#{@name} your favourite language is " + input
    return input
  end

end