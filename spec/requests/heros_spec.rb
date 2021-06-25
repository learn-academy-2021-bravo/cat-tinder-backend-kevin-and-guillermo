require 'rails_helper'

RSpec.describe "Heros", type: :request do
  describe "GET /index" do
  it "gets a list of heros" do
    Hero.create(name: 'Aquaman', age: 35, enjoys: 'swimming', superpower: 'talking to fish')
    get '/heros'
    hero = JSON.parse(response.body) 
  expect(response).to have_http_status(200)
  expect(hero.length).to eq 1

  end
end
  describe "POST /create" do
  it "creates a hero" do
    hero_params = {
      hero:{
        name: 'Aquaman', 
        age: 35, 
        enjoys: 'swimming', 
        superpower: 'talking to fish'
      }
    }
    post '/heros', params: hero_params 
  expect(response).to have_http_status(200)
  new_hero = Hero.first
  expect(new_hero.name).to eq('Aquaman')
  expect(new_hero.age).to eq(35)
  expect(new_hero.enjoys).to eq('swimming')
  expect(new_hero.superpower).to eq('talking to fish')

  end
end
describe "meaningful status codes" do
it "doesnt create a hero without a name" do
  hero_params = {
    hero:{
      age:35,
      enjoys: 'swimming',
      superpower: 'talking to fish'
    }
  }
  post '/heros', params: hero_params
  expect(response.status).to eq 422
  hero= JSON.parse(response.body)
  expect(hero['name']).to include "can't be blank"
end
end
end