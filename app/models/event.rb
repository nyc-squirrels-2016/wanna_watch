class Event < ActiveRecord::Base
  belongs_to :host, class_name: :User
  has_many :requests, dependent: :destroy
  has_many :guests, through: :requests, dependent: :destroy

  validates :show, presence: true
  validates :time, presence: true
  validates :date, presence: true
  validates :host, presence: true
  validates :description, presence: true
  validates :max_occupancy, presence: true

  def attending_guests
  	attending_guests = self.requests.where(active: 0).map do |request|
  		request.guest
  	end
  	attending_guests
  end

  def filled?
  	self.max_occupancy <= self.attending_guests.length
  end
end
