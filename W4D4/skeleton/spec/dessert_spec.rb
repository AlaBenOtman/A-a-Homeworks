require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:brownie){Dessert.new("brownie", 100, chef)}
  describe "#initialize" do
    it "sets a type" do
      expect(brownie.type).to eq("brownie")
    end

    it "sets a quantity" do
      expect(brownie.quantity).to eq(100)
    end

    it "starts ingredients as an empty array" do
      expect(brownie.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity"
      expect{Dessert.new("brownie", "ala", chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array"
      brownie.add_ingredient("eggs")
      expect(Dessert.ingredients).to include("eggs")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do 
      ingredients = %w(eggs chocolate flour sugar)
      ingredients.each do |ing|
        add_ingredient(ing)
      end
      expect(brownie.ingredients).to eq(ingredients)
      brownie.mix!
      expect(brownie.ingredients).to_not eq(ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      brownie.eat(1)
      expect(brownie.quantity).to eq(99)
    end

    it "raises an error if the amount is greater than the quantity" do
       expect{brownie.eat(500)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
