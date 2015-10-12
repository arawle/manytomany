class CreatePosttags < ActiveRecord::Migration
  def change
    create_table :posttags do |t|
      t.string :post_id
      t.string :int
      t.string :tag_id
      t.string :int

      t.timestamps null: false
    end
  end
end
