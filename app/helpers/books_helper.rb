module BooksHelper
  def image(book)
    image_tag(book.image, alt: book.name, class: "gravatar")
  end
end
