class Cleaner
  include ActionView::Helpers::TextHelper

  attr_accessor :content
  attr_accessor :markdown

  def initialize(attributes={})
    attributes.each do |name, value|
      self.public_send("#{name}=", value)
    end unless attributes.nil?
  end

  # Returns the text/plain version of the email, wrapped to 67 columns (width)
  def plain_text
    word_wrap(content, line_width: 67)
  end

  def html_text
    if markdown?
      Maruku.new(content).to_html.strip
    else
      content
    end
  end

  def markdown?
    markdown.present? && markdown.to_s != "0"
  end
end
