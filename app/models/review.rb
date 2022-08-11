class Review < ApplicationRecord
    belongs_to :makeup
    belongs_to:Post
    validates_presence_of :id, :Name, Rating, Comment;
    has_many :ratings
  
    def self.search(search)
      if search
        rating = Review.find_by(name: search)
          if makeup
            self.where(rating: Rating)
          else
            Review.all
          end
        else
          Review.all
        end
    end
  end