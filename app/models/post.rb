class Post < ActiveRecord::Base
    belongs_to :post_group
    belongs_to :site_user
end