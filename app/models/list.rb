class List < ActiveRecord::Base
  attr_accessible :title, :description
  
  belongs_to :user
  has_many :urls

  validates :title, presence: true
  validates :user_id, presence: true

  default_scope order: 'lists.updated_at DESC'
end
