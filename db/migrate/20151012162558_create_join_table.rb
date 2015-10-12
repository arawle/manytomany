class CreateJoinTable < ActiveRecord::Migration
  def change
    create_table :posttags do |t|
      t.integer :tag_id
      t.integer :post_id
    end
  end
end
