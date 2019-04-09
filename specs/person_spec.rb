require("minitest/autorun")
require("minitest/rg")
require_relative("../person.rb")




class TestPerson < MiniTest::Test

  def setup
    @person1 = Person.new("Jim", 22)
    @person2 = Person.new("Heather", 19)
  end

  def test_person_name
    assert_equal("Jim", @person1.name)
  end
end
