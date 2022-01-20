require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:dessert) { Dessert.new('cake', 2, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq('cake')
    end

    it "sets a quantity" do 
      expect(dessert.quantity).to be(2)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do 
      expect(dessert.quantity).to be_a_kind_of(Integer)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      expect(dessert.ingredients).to_not include('milk')
      dessert.add_ingredient('milk')
      expect(dessert.ingredients).to include('milk')
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      dessert.add_ingredient("flour")
      dessert.add_ingredient("butter")

      expect(dessert.ingredients).to receive(:shuffle!)
      dessert.mix!
    end

  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
      dessert.eat(1)
      expect(dessert.quantity).to be(1)
    end

    it "raises an error if the amount is greater than the quantity" do
      dessert.eat(3)
      expect(dessert.eat).to
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(dessert.serve).to eq(dessert.chef.titleize)
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do 
      expect(dessert.make_more).to call(chef.bake(dessert))
    end
  end
end
