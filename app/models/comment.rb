class Comment < ApplicationRecord
    belongs_to :post
    belongs_to :community
    validates_presence_of :title, :body, :account_id, :community_id
    has_many :comments

end