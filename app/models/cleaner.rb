class Cleaner
  attr_accessor :content
  attr_accessor :markdown

  def initialize(attributes={})
    attributes.each do |name, value|
      self.public_send("#{name}=", value)
    end unless attributes.nil?
  end

  def plain_text
    @content
  end
end
