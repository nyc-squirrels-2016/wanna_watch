require 'rails_helper'
describe Request do
  context "Validations" do
    it { should validate_presence_of :guest }
    it { should validate_presence_of :active }
    it { should validate_presence_of :event }
  end

end
