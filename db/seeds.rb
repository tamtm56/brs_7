25.times do |n|
  title = "Tile-#{n+1}";
  name  = "Book-#{n+1}";
  desc = "This is book-#{n+1}";
  author = "Author-#{n+1}";
  image = "default.jpeg"
  link = "This book approaches learning C++ from the unique and fun perspective of games.";
  Book.create!(title:title, name:name, desc:desc, author:author, length:100,
               image:image, number_or_view:100, link:link);
end

11.times do |n|  
  name = Faker::Lorem.sentence(1)
  Category.create!(name:name);
end
