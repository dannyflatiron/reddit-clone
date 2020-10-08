class PublicController < ApplicationController

    def index
        @communities = Community.all.limit(5)
        @posts = Post.post_order
    end

end
