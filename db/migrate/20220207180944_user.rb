class User < ActiveRecord::Migration[6.1]
  def up
    create_table :site_users do |i|
      i.string :name
      i.string :tag
      i.string :avatar
      i.string :email
      i.string :password
      i.boolean :banned
      i.boolean :isMod
      i.timestamps
    end

    create_table :post_groups do |i|
      i.string :title
      i.timestamps
    end

    create_table :posts do |i|
      i.integer :site_user_id
      i.integer :post_group_id
      i.string :content
      i.timestamps
    end
  end

  def down
    drop_table :site_users
    drop_table :posts
    drop_table :post_groups
  end

end
