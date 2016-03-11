class User < ActiveRecord::Base
  has_many :events, foreign_key: "host_id"
  has_many :requests, foreign_key: "guest_id"
  has_many :visits , through: :requests, source: :event
  validates :username, :email, presence: true
  validates :username, :email, uniqueness: true
  validates :location, presence: true
  validates :address, presence: true


  has_secure_password
end
