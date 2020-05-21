class LoginForm
  include Capybara::DSL

  def initialize
  end

  def visit_page
    visit ('/login')
    self
  end

  def login_as(username)
    fill_in(:username, with: username)
    click_on('Identify me')
    self
  end
end
