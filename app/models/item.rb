class Item < ActiveRecord::Base
    belongs_to :store
    belongs_to :user
    has_many :users, through: :store
end
