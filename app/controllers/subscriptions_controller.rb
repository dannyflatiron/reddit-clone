class SubscriptionsController < ApplicationController

    def create
        @subscription = Subscription.new(subscription_params)
        @subscription.account_id = current_account.id
        if @subscription.save
        redirect_to community_path(@subscription.community_id)
        end
    end

    private

    def subscription_params
        params.require(:subscription).permit(:community_id)
    end
end