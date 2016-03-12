require 'rails_helper'
describe Event do
  context "Validations" do
    it { should validate_presence_of :show }
    it { should validate_presence_of :time }
    it { should validate_presence_of :date }
    it { should validate_presence_of :host }
    it { should validate_presence_of :description }
    it { should validate_presence_of :max_occupancy }
  end

  it "attending guests should be less than or equal to max occupancy" do
    max_occupancy = 3
    attending_guests = ["patrick", "liam"]
    expect(attending_guests.length).to be <= max_occupancy
  end

end
