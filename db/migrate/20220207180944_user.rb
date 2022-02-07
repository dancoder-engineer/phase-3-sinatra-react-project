class User < ActiveRecord::Migration[6.1]
  def up
    create_table :site_users do |i|
      i.string :name
      i.string :avatar
      i.string :email
      i.string :password
      i.datetime :created
    end

    create_table :post_groups do |i|
      i.string :title
    end

    create_table :posts do |i|
      i.integer :siteuser_id
      i.integer :postgroup_id
      i.string :content
      i.datetime :created
    end
  end

  def down
    drop_table :site_users
    drop_table :posts
    drop_table :post_groups
  end

end
