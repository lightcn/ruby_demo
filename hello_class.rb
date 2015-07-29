class HelloWorld
  def initialize(myname="Ruby")
    @name = myname
  end
  def hello
    print "Hello, World. I am ", @name, ".\n"
  end
  def name
    return @name
  end
  def name=(value)
    @name = value
  end
end

class << HelloWorld
  def hello(name)
    print name, " said Hello"
  end
end
HelloWorld.hello("John")


bob = HelloWorld.new("Bob")
alice = HelloWorld.new("Alice")
ruby = HelloWorld.new

bob.hello
alice.hello
ruby.hello

p bob.name
bob.name = "Robert"
p bob.name
