require "test_helper"

class BasicEmailTest < Capybara::Rails::TestCase
  test "submitting email content should render a preview in an iframe" do
    visit root_path
    user_content = "This is a test of the html text version"
    fill_in "cleaner_content", with: user_content
    click_on "Clean"

    assert_equal cleaner_create_path, current_path
    within("#html-text") do
      assert_selector("iframe#html-preview")
    end

  end

  test "submitting email content should render an area to copy the full HTML from" do
    visit root_path
    user_content = "This is a test of the html text version"
    fill_in "cleaner_content", with: user_content
    click_on "Clean"

    assert_equal cleaner_create_path, current_path
    within("#html-text") do
      assert_content user_content
    end
  end

  test "submitting email content should render an area to copy the full plain text from" do
    visit root_path
    user_content = "This is a test of the plain text version"
    fill_in "cleaner_content", with: user_content
    click_on "Clean"

    assert_equal cleaner_create_path, current_path
    within("#plain-text") do
      assert_content user_content
    end
  end
end
