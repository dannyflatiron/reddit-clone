class PublicController < ApplicationController

    def index
        @communities = Community.all.limit(5)
        @posts = Post.post_order
    end

    def profile
        @profile = Account.find_by_username params[:username]
    end

end
