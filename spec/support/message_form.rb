class MessageForm
  include Capybara::DSL

  def visit_page
    visit ('/')
    self
  end

  def fill_in_with(params = {})
    text_area = find('textarea.js-message-form--input')
    text_area.send_keys(params.fetch(:text))
    self
  end

  def submit
    click_on('Send')
    self
  end
end
