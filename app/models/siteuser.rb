class SiteUser < ActiveRecord::Base
    has_many :posts
end