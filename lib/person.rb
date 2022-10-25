class Person
  # your code here
  def initialize(attributes)
    attributes.each do |key, value|
      # create a getter and setter by calling the attr_accessor method
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
end

bob_attributes = { name: "Bob", hair_color: "Brown" }
bob = Person.new(bob_attributes)
p bob.name       # => "Bob"
p bob.hair_color # => "Brown"

susan_attributes = { name: "Susan", height: "5'11\"", eye_color: "Green" }

susan = Person.new(susan_attributes)
p susan.name      # => "Susan"
p susan.height    # => "5'11""
p susan.eye_color # => "Green"