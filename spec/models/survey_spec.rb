require 'rails_helper'

RSpec.describe Survey, type: :model do
  before do
    @user = create(:user, :id => 1)
  end

  it 'has a valid factory' do
    expect(build(:survey)).to be_valid
  end

  describe 'associations' do
    it { should have_many(:boolean_questions) }
    
    it { should have_many(:alternative_questions) }
    
    it { should have_many(:discursive_questions) }
    
  end

end
