class User < ActiveRecord::Base
  has_many :events, foreign_key: "host_id"
  has_many :requests, foreign_key: "guest_id"
  has_many :visits , through: :requests, source: :event
  validates :username, :email, presence: true
  validates :username, :email, uniqueness: true


  has_secure_password

  def requests_recieved
  	requests_recieved = []
  	self.events.each do |event|
  		requests_recieved.push(event.requests)
  	end
  	requests_recieved.flatten
  end
end
