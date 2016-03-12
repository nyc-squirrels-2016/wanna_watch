require 'rails_helper'
describe User do
  context "validations" do
    it { should validate_presence_of :username }
    it { should allow_value('poliphant').for(:username) }
    it { should validate_presence_of :email }
    it { should allow_value('poliphant@example.com').for(:email) }
    it { should_not allow_value('poliphant.example.com').for(:email) }
    it { should validate_presence_of :location }
    it { should validate_presence_of :address }
  end
end


