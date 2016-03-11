class User < ActiveRecord::Base
  has_many :events, foreign_key: "host_id"
  has_many :requests, foreign_key: "guest_id"
  has_many :visits , through: :requests, source: :event
  validates :username, :email, presence: true
  validates :username, :email, uniqueness: true
  validates :location, presence: true
  validates :address, presence: true


  has_secure_password

  def requests_recieved
  	requests_recieved = []
  	self.events.each do |event|
  		requests_recieved.push(event.requests.where(active: 1))
  	end
  	requests_recieved.flatten
  end

  def requests_approved 
    events = self.requests.where(active: 0).map do |request|
      request.event
    end
    events
  end
end
