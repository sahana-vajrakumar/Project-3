class User < ApplicationRecord
has_and_belongs_to_many :shows
has_and_belongs_to_many :movies
end
