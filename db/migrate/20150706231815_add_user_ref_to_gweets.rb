class AddUserRefToGweets < ActiveRecord::Migration
  def change
    add_reference :gweets, :user, index: true
    add_foreign_key :gweets, :users
  end
end
