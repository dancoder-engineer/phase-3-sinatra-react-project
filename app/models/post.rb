class Post < ActiveRecord::Base
    belongs_to :postgroup
    belongs_to :siteuser
end