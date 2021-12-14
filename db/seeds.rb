# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Chapter.delete_all
Book.delete(:cover)
Book.delete_all
Category.delete_all



Category.create(:category => 'Children',
:description => "Story for children under 12 years old")
Category.create(:category => 'Fantasy',
:description => "Magic and folkfore")
Category.create(:category => 'Romance',
:description => "Love story")
Category.create(:category => 'Horror',
:description => "Scaredddd story")



Book.create!(:title => 'The Miracle',
    :description => 
    %{
        A fantasy book for children.
    },
    :number_of_chapters => 5,
    
    )
Chapter.create(:title =>"Chap 1",
    :content => "helllooo bonjour hihihi ",
    :chapter_order => 1,
    :book_id => 1,
    :user_id => 1)
Chapter.create(:title =>"Chap 2",
    :content => "helllooo hihihi to the moon",
    :chapter_order => 2,
    :book_id => 1,
    :user_id => 1)
Chapter.create(:title =>"Chap 3",
    :content => "this is a chapter ",
    :chapter_order => 3,
    :book_id => 1,
    :user_id => 1)
Chapter.create(:title =>"Chap 4",
    :content => "this is a chapter 4 heloo ",
    :chapter_order => 4,
    :book_id => 1,
    :user_id => 1)
Chapter.create(:title =>"Chap 5",
    :content => "this is a chapter 5 hihih ",
    :chapter_order => 5,
    :book_id => 1,
    :user_id => 1)
    
    
Book.create!(:title => 'Sailormoon',
    :description =>
    %{
        sailormoon, sailor jupyter, sailor mars, sailor venus.
    },
    :number_of_chapters => 1,
    
    )

Chapter.create(:title =>"Chap 1",
    :content => "sailor moon say hello ",
    :book_id => 2,
    :user_id => 1)
    
Book.create!(:title => 'Naruto',
    :description =>
    %{
        Hokage adventure naruto finding sasuke
    },
    :number_of_chapters => 0,
    )

Book.create!(:title => 'Doraemon',
    :description =>
    %{
        Doraemon, Nobita, Shizuka, Suneo, Jajan, Dekisugi
    },
    :number_of_chapters => 7)
Chapter.create(:title =>"Chap 1",
    :content => "this is a chapter 1 ",
    :book_id => 4,
    :user_id => 1)
Chapter.create(:title =>"Chap 2",
    :content => "this is a chapter 2 ",
    :book_id => 4,
    :user_id => 1)
Chapter.create(:title =>"Chap 3",
    :content => "this is a chapter 3 ",
    :book_id => 4,
    :user_id => 1)
Chapter.create(:title =>"Chap 4",
    :content => "this is a chapter 4 ",
    :book_id => 4,
    :user_id => 1)
Chapter.create(:title =>"Chap 5",
    :content => "this is a chapter 5 ",
    :book_id => 4,
    :user_id => 1)
Chapter.create(:title =>"Chap 6",
    :content => "this is a chapter 6 ",
    :book_id => 4,
    :user_id => 1)
Chapter.create(:title =>"Chap 7",
    :content => "this is a chapter 7",
    :book_id => 4,
    :user_id => 1)
    
    
    
    
Book.create!(:title => 'Harry Potter',
    :description =>
    %{
        Hogwwart and wizard and witch 
    },
    :number_of_chapters => 1,
    )
Chapter.create(:title =>"Chap 1",
    :content => "this is a chapter the boy who lives ",
    :book_id => 5,
    :user_id => 1)