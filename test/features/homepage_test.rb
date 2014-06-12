require "test_helper"

class HomepageTest < Capybara::Rails::TestCase
  test "homepage has a block of documentation" do
    visit root_path
    assert_selector '.doc',"copy your content"
  end

  test "homepage has a form to enter your content"

  test "homepage has an option for markdown content"
end
