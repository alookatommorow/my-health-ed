class CreateStoryTexts < ActiveRecord::Migration[5.0]
  def change
    create_table :story_texts do |t|
    	t.string :body
    	t.belongs_to :comment, index: true 

    	t.timestamps null: false
    end
  end
end
