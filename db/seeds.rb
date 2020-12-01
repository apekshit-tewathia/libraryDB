# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ya = Section.create! :name => "Young Adult"
humor = Section.create! :name => "Humor"
gnovel = Section.create! :name => "Graphic Novel"
crime = Section.create! :name => "Crime"
fantasy = Section.create! :name => "Fantasy"
business = Section.create! :name => "Business and Finance"

collins = Author.create! :first_name => "Suzanne", :last_name => "Collins"
kaling = Author.create! :first_name => "Mindy", :last_name => "Kaling"
handler = Author.create! :first_name => "Chelsea", :last_name => "Handler"
ohba = Author.create! :first_name => "Tsugumi", :last_name => "Ohba"
oda = Author.create! :first_name => "Eiichiro", :last_name => "Oda"
grisham = Author.create! :first_name => "John", :last_name => "Grisham"
patterson = Author.create! :first_name => "James", :last_name => "Patterson"
martin = Author.create! :first_name => "George", :last_name => "Martin"
tolkien = Author.create! :first_name => "John", :last_name => "Tolkien"
ende = Author.create! :first_name => "Michael", :last_name => "Ende"
ries = Author.create! :first_name => "Eric", :last_name => "Ries"
eyal = Author.create! :first_name => "Nir", :last_name => "Eyal"

Book.create! :name => "The Hunger Games", :author => collins, :section => ya
Book.create! :name => "Catching Fire", :author => collins, :section => ya
Book.create! :name => "Mockingjay", :author => collins, :section => ya
Book.create! :name => "Is Everyone Hanging out Without Me?", :author => kaling, :section => humor
Book.create! :name => "Are You There, Vodka? It's Me Chelsea", :author => handler, :section => humor
Book.create! :name => "Death Note", :author => ohba, :section => gnovel
Book.create! :name => "One Piece", :author => oda, :section => gnovel
Book.create! :name => "The Pelican Brief", :author => grisham, :section => crime
Book.create! :name => "A Time to Kill", :author => grisham, :section => crime
Book.create! :name => "Along Came a Spider", :author => patterson, :section => crime
Book.create! :name => "A Game of Thrones", :author => martin, :section => fantasy
Book.create! :name => "A Clash of Kings", :author => martin, :section => fantasy
Book.create! :name => "A Storm of Swords", :author => martin, :section => fantasy
Book.create! :name => "A Feast for Crows", :author => martin, :section => fantasy
Book.create! :name => "A Dance with Dragons", :author => martin, :section => fantasy
Book.create! :name => "The Silmarillion", :author => tolkien, :section => fantasy
Book.create! :name => "The NeverEnding Story", :author => ende, :section => fantasy
Book.create! :name => "The Lean Startup", :author => ries, :section => business
Book.create! :name => "Hooked", :author => eyal, :section => business