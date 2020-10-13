class Subscription < ApplicationRecord
    belongs_to :account
    belongs_to :community

    def self.check_if_account_signed_in(community, current_account)
        Subscription.where(community_id: community.id, account_id: current_account.id).any?
    end
end