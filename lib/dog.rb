
# Create a class variable @@all set to an empty array inside your class. This array is the storage container for each instance of a Dog that gets created. In other words, every puppy that is born should get pushed into this array at the moment of instantiation––in the #initialize method! Use the self keyword inside the #initialize method to refer to the new dog you are trying to store in your @@all array.

# Write a class method, .all, that reads this variable. From inside the Dog class, we can access the @@all class variable, but whenever we might be interacting with our Dog class from the outside, this .all class method acts as our direct interface to the @@all variable.

# You will need to write a class method, .print_all, that iterates over all of the individual dogs stored in the @@all array and puts out their name to the terminal.

# Now that we've gotten these methods written out, it is time do a bit of refactoring. Rather than pushing self into the @@all variable inside of #initialize, we're extract this action into its own method. Call this method #save. The method should handle the task of pushing self into @@all. Once written, update your code in #initialize so that it uses #save.

require 'pry'

class Dog

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        # @@all << self
        save
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
        @@all.each do |dog|
            puts dog.name
            # binding.pry
        end
    end

    def save
        @@all << self
    end
end

# fido = Dog.new("Fido")
# binding.pry