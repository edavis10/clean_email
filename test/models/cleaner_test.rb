require 'test_helper'

class CleanerTest < ActiveSupport::TestCase
  test "#plain_text should return the user's content as is" do
    cleaner = Cleaner.new(:content => "TestA")

    assert_equal cleaner.content, cleaner.plain_text
  end

  test "#plain_text should wrap lines at 67 columns"

end
