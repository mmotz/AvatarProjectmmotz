class Story < ActiveRecord::Base
    belongs_to :users
    belongs_to :connections
end