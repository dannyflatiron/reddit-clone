class Post < ApplicationRecord
    belongs_to :account
    belongs_to :community
    has_many :comments
    validates_presence_of :title, :body, :account_id, :community_id

    def self.post_order
        order(id: :desc).limit(20)
    end

    def score
        0
    end
end