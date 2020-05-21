require 'rails_helper'
require_relative '../support/login_form'
require_relative '../support/message_form'

RSpec.feature "Messages", type: :feature do
  let(:login_form)   { LoginForm.new    }
  let(:message_form) { MessageForm.new  }

  before do 
    login_form.visit_page.login_as('Evil Martian')
  end

  scenario "user is authenticated" do 
    expect(page).to have_css('.message-form')
    expect(page).to have_content('Send')
  end

  scenario "message is sent", js: true do 
    message_form.visit_page.fill_in_with(
      text: 'Surrender!'
    ).submit
    expect(page).to have_content('Surrender!')
  end
end
