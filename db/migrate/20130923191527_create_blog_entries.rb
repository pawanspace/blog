class CreateBlogEntries < ActiveRecord::Migration
  def self.up
    create_table :blog_entries do |t|
      t.string :title
      t.text :html
      t.timestamp :time

      t.timestamps
    end
  end

  def self.down
    drop_table :blog_entries
  end
end
