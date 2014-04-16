class UserNotUsedClass
  attr_accessor :name, :email

  def initialize (attributes = {})

    if attributes[:name].size == 0
      raise "Invalid Argument Length Name"
    else
      @name = attributes[:name]
    end

    @email = attributes[:email]
  end

  def formatted_email
    "#{@name} <#{@email}>"
  end

end