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
        picture: 'https://images.squarespace-cdn.com/content/v1/5ce432b1f9d2be000134d8ae/1601411701483-R5XV3JNDI7H3PRLVE6ZV/ke17ZwdGBToddI8pDm48kFI4reBhh1Njc-zGo438wU4UqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8PaoYXhp6HxIwZIk7-Mi3Tsic-L2IOPH3Dwrhl-Ne3Z2oE6HKLNqVOs66nlPXxSAQkGXuxmFX8f7B9YHLlCBugakL3r1G49e-3ZnDLNRdB_t/Wolverine+LEGAL.jpg',
        age: 150,
        enjoys: 'Cutting trees.',
        superpower: 'Has blades in hands.'
    },
    {
        name: 'Cat Woman',
        picture: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.sideshow.com%2Fcollectibles%2Fdc-comics-catwoman-21-sideshow-collectibles-500743U&psig=AOvVaw2UUr3CTaaj4OPPjFh3bfHS&ust=1624985319635000&source=images&cd=vfe&ved=0CAoQjRxqFwoTCJCKgKrkuvECFQAAAAAdAAAAABAE",
        age: 23,
        enjoys: 'Theft.',
        superpower: 'Cat like abilities.'
    },
    {
        name: 'She-Hulk',
        picture: "https://upload.wikimedia.org/wikipedia/en/f/f4/Shehulk1st.jpg",
        age: 40,
        enjoys: 'Smashing things.',
        superpower: 'Green savage.'
    },
    {
        name: 'Dr.Strange',
        picture: "https://m.media-amazon.com/images/I/51PCplbL1JL.jpg",
        age: 42,
        enjoys: 'Doing magical things.',
        superpower: 'Sorcery.'
    }
]

heros.each do |attributes|
    Hero.create attributes
    puts "creating hero #{attributes}"
end