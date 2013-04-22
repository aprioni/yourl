class Url < ActiveRecord::Base
  attr_accessible :url, :title, :description, :list_id

  belongs_to :list

  validates :url, presence: true
  validates :title, presence: true
end
