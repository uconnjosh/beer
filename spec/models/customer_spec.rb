require 'spec_helper'

describe Customer do
  context '#package_creator' do
    it 'should return 6 random beers form database' do
      customer = Customer.create(:name => 'jay', :choice_1 => '4', :choice_2 => '6')
      type1 = Type.create(:name => '4')
      type2 = Type.create(:name => '6')
      beer1 = Brew.create({:name => '60 minutes'})
      beer2 = Brew.create({:name => '90 minutes'})
      beer3 = Brew.create({:name => 'total domination'})
      beer4 = Brew.create({:name => 'dead guy'})
      beer5 = Brew.create({:name => 'river ale'})
      beer6 = Brew.create({:name => 'super duper ale'})
      #binding.pry
      customer.package_creator(type1.id, type1.id).length.should eq 6
      binding.pry
    end
  end
end
