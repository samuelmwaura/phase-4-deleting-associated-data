class DogHouse < ApplicationRecord
  has_many :reviews, dependent: :destroy #This is the line that cascades the delete from this model to the associated reviews
  #This behaviour can also be achieved in a more verbose manner i.e first fetch all the associated reviews
  #DogHouse.first.reviews.destroy_all
  #DogHouse.first.destroy
  #The dependent: :delete does the same by calling internally defines methods.It aoutomatically removes associated record when the parent record is deleted.
end
