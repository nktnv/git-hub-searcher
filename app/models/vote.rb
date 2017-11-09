class Vote < ApplicationRecord

  validates :item_id, presence: true
  validates :item_type, presence: true
  validates :status, presence: true

  enum item_type: [:project, :user]
  enum status: [:like, :dislike]

  def self.vote_by_params(item_type, item_id, status)
    find_by(item_type: item_type, item_id: item_id, status: status)
  end

end
