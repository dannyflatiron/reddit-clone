class CommunitiesController < ApplicationController
before_action :authenticate_account!, except: [ :index, :show ]  
before_action :set_community, only: [ :show ]

    def index
        @communities = Community.all
    end

    def show
        @posts = @community.posts
        @subscriber_count = @community.subscribers.count
        @is_subscribed = account_signed_in? ? Subscription.check_if_account_signed_in(@community, current_account) : false
        @subscription = Subscription.new
    end

    def new
        @community = Community.new
    end

    def create
        @community = Community.new(community_params)

        @community.account_id = current_account.id
        if @community.save
            redirect_to communities_path
        else
            render :new
        end
    end

    private

    def set_community
        @community = Community.find(params[:id])
    end

    def community_params
        params.require(:community).permit(:name, :url, :rules, :summary)
    end
end