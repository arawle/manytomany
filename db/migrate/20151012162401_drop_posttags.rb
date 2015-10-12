class DropPosttags < ActiveRecord::Migration
  def change
    drop_table :posttags
  end
end
