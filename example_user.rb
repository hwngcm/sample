class User
    attr_accessor :first_name,last_name, :email
  
    def initialize(attributes = {})
      @first_name  = attributes[:name]
      @last_name  = attributes[:name]
      @email = attributes[:email]
    end
  
    def formatted_email
      "#{@name} <#{@email}>"
    end

    def full_name
        
    end
  end