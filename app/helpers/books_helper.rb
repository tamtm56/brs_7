require 'rubygems'
require 'pdf/reader'

module BooksHelper
  def image(book)
    image_tag(book.image, alt: book.name, class: "gravatar")
  end

  def read_book(book)
    receiver = PDF::Reader::RegisterReceiver.new
    filename = "app/assets/book/NienLuan.pdf"

    content = ""
    reader = PDF::Reader.new(filename) 
    reader.pages.each do |page|
      content << page.text
    end
    return content
  end
end
