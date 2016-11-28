class Library
  def initialize(book, student_name, date)
    @book = book
    @student_name = student_name
    @date = date
  end

  def detail(book)
    book.each do
      |book| puts "#{@book}, {@student_name}, #{@date}."
    end
  end

end