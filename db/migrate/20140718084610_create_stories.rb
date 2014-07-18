class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.belongs_to :user, index: true
      t.string :location
      t.string :content, :limit => 500

      t.timestamps
    end

    add_index :stories, :location
  end
end
