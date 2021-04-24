require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has a valid factory' do
    expect(build(:user)).to be_valid
  end

  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should have_secure_password }
    # it { should validate_length_of(:password).is_at_least(6).with_message('A senha tem que ter no mínimo 6 caracteres') }
  end
end
