class User < ActiveRecord::Base
    has_many :avatars
    has_many :stories, through: :avatars
end