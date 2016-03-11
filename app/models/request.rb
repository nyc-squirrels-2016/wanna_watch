class Request < ActiveRecord::Base
  belongs_to :event
  belongs_to :guest, class_name: :User
  validates :guest, :active, :event,  presence: true

  def host
  	self.event.host
  end
end
