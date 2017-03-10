class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
    	t.string :title
    	t.belongs_to :perspective, index: true
    	t.belongs_to :user, index: true

    	t.timestamps null: false
    end
  end
end
