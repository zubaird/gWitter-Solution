class CreateGweets < ActiveRecord::Migration
  def change
    create_table :gweets do |t|
      t.string :content
      t.timestamps
    end
  end
end
