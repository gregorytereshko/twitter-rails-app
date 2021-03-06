require 'rails_helper'

RSpec.describe Relationship, type: :model do

  let(:follower) { FactoryGirl.create(:user) }
  let(:followed) { FactoryGirl.create(:user) }
  let(:relationship) { follower.relationships.build(followed_id: followed.id) }

  subject { relationship }

  it { should be_valid }

  describe 'follower methoed' do
    it { should respond_to(:follower) }
    it { should respond_to(:followed) }
    its(:follower) { should eq follower }
    its(:followed) { should eq followed }
  end

  describe 'when followed is not present' do
    before { relationship.followed_id = nil }
    it { should_not be_valid }
  end
  describe 'when follower is not present' do
    before { relationship.follower_id = nil }
    it { should_not be_valid }
  end


end
