class MainController < ApplicationController
    def index
        @name = name.all.limit(1)
        @colour = colour.all.limit(5)
        @ratings = Post.order(name: colour:).limit(1)
    end