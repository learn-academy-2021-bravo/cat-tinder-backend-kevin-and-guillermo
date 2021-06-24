# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
heros = [
    {
        name: 'Wolverine',
        age: 150,
        enjoys: 'Cutting trees.',
        superpower: 'Has blades in hands.'
    },
    {
        name: 'Cat Woman',
        age: 23,
        enjoys: 'Theft.',
        superpower: 'Cat like abilities.'
    },
    {
        name: 'She-Hulk',
        age: 40,
        enjoys: 'Smashing things.',
        superpower: 'Green savage.'
    },
    {
        name: 'Dr.Strange',
        age: 42,
        enjoys: 'Doing magical things.',
        superpower: 'Sorcery.'
    }
]

heros.each do |attributes|
    Hero.create attributes
    puts "creating hero #{attributes}"
end