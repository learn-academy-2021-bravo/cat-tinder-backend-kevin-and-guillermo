require 'rails_helper'

RSpec.describe Hero, type: :model do
it "should have a name" do
  hero = Hero.create age: 35, enjoys: 'swimming', superpower: 'talking to fish'
  expect(hero.errors[:name]).to_not be_empty
end
it "should have a age" do
  hero = Hero.create name: 'Aquaman', enjoys: 'swimming', superpower: 'talking to fish'
  expect(hero.errors[:age]).to_not be_empty
end
it "should have a enjoys" do
  hero = Hero.create name: 'Aquaman', age: 35, superpower: 'talking to fish'
  expect(hero.errors[:enjoys]).to_not be_empty
end
it "should have a superpower" do
  hero = Hero.create name: 'Aquaman', age: 35, enjoys: 'swimming'
  expect(hero.errors[:superpower]).to_not be_empty
end
end
