class CreatePerspectives < ActiveRecord::Migration[5.0]
  def change
    create_table :perspectives do |t|
    	t.string :name, index: true

    	t.timestamps null: false
    end
  end
end
