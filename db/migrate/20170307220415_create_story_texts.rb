class CreateStoryTexts < ActiveRecord::Migration[5.0]
  def change
    create_table :story_texts do |t|
    	t.text :body
    	t.belongs_to :story, index: true 

    	t.timestamps null: false
    end
  end
end
