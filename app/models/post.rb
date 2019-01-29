class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  def self.query_chart
    group_by_day(:created_at).count
  end
end
