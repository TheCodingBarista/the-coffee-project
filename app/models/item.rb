class Item < ActiveRecord::Base
    belongs_to :store
    has_many :users, through: :store
end
