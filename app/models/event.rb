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


end
