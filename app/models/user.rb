class User < ActiveRecord::Base
  has_many :events, foreign_key: "host_id"
  has_many :requests, foreign_key: "guest_id"
  has_many :visits , through: :requests, source: :event
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :location, presence: true
  validates :address, presence: true
  has_many :written_messages, class_name: "Conversation", foreign_key: :sender_id, dependent: :destroy
  has_many :recieved_messages, class_name: "Conversation", foreign_key: :reciever_id, dependent: :destroy
  has_many :messages

  has_attached_file :profile_picture, :storage => :s3, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }, default_url: "/imgs/:attachment/missing_profile.jpeg"
  validates_attachment_content_type :profile_picture, :content_type => /\Aimage\/.*\Z/

  has_attached_file :where_you_watch_picture, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }, default_url: "/imgs/:attachment/tv.png"
  validates_attachment_content_type :where_you_watch_picture, :content_type => /\Aimage\/.*\Z/

  has_secure_password

  def requests_recieved
  	requests_recieved = []
  	self.events.each do |event|
  		requests_recieved.push(event.requests.where(active: 1))
  	end
  	requests_recieved.flatten
  end

  def requests_approved
    events = self.requests.where(active: 0 ).map do |request|
      if request.event.date > Time.now
        request.event
      end
    end
    events.compact
  end
end
