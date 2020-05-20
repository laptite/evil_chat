require 'rails_helper'

RSpec.describe Message, type: :model do
  it { should validate_presence_of(:author) }
  it { should validate_presence_of(:text) }
end
