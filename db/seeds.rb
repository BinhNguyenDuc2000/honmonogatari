# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.delete_all
Book.create(:title => 'The Miracle',
    :description => 
    %{
        A fantasy book for children.
    },
    :number_of_chapters => 5)

Chapter.create(:title =>"Chap 1",
    :content => "helllooo bonjour ",
    :book => 'The Miracle',)
Book.create(:title => 'Sailormoon',
    :description =>
    %{
        sailormoon, sailor jupyter, sailor mars, sailor venus.
    },
    :number_of_chapters => 3)
    
Book.create(:title => 'Naruto',
    :description =>
    %{
        Hokage adventure naruto finding sasuke
    },
    :number_of_chapters => 20)
Book.create(:title => 'Doraemon',
    :description =>
    %{
        Doraemon, Nobita, Shizuka, Suneo, Jajan, Dekisugi
    },
    :number_of_chapters => 7)
Book.create(:title => 'Harry Potter',
    :description =>
    %{
        Hogwwart and wizard and witch 
    },
    :number_of_chapters => 1)