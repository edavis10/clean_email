require 'test_helper'

class CleanerTest < ActiveSupport::TestCase
  test "#plain_text should return the user's content as is" do
    cleaner = Cleaner.new(:content => "TestA")

    assert_equal cleaner.content, cleaner.plain_text
  end

  test "#plain_text should wrap lines at 67 columns" do
    assert_equal "All on one line", Cleaner.new(:content => "All on one line").plain_text
    assert_equal "Two lines with\none newline", Cleaner.new(:content => "Two lines with\none newline").plain_text
    assert_equal "Three lines with a\n\ndouble newline", Cleaner.new(:content => "Three lines with a\n\ndouble newline").plain_text
    assert_equal "This line should word wrap around column 67 but without breaking\nthe word", Cleaner.new(:content => "This line should word wrap around column 67 but without breaking the word").plain_text
  end

end
