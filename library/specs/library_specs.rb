require('minitest/autorun')
require_relative('../library')

class LibrarySpec < MiniTest::Test

  def setup
    @books = {
      "lord_of_the_rings" => {:student_name => "Jeff", :date => "01/12/16"},
      # "american_gods" =>{:student_name => "James", :date => "21/12/16"},
      # "assassins_apprentice" => {:student_name=> "Nina", :date => "07/12/16"} 
    }
  end

  def test_list_books_and_details
    library = Library.new(@book, @student_name, @date)
    assert_equal("lord_of_the_rings, Jeff, 01/12/16", library.detail(@books))
  end
end