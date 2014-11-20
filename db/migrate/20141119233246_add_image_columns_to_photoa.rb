class AddImageColumnsToPhotoa < ActiveRecord::Migration
  def self.up
    remove_attachment :users, :image
    add_attachment :photos, :image
  end
  def self.down
    add_attachment :users, :image
    remove_attachment :photos, :image
  end
end
