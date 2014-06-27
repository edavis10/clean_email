require "test_helper"

class MarkdownTest < Capybara::Rails::TestCase
  test "submitting markdown content should render the markdown into HTML" do
    visit root_path
    user_content = "Here is some *markdown* content.\n\nSecond"
    fill_in "cleaner_content", with: user_content
    check "Markdown content?"
    click_on "Clean"

    assert_equal cleaner_create_path, current_path
    within("#html-text pre") do
      save_page
      assert_content "<p>Here is some <em>markdown</em> content.</p>\n\n<p>Second</p>"
    end

  end
end
