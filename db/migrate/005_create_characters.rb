class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    # Your code here
    create_table :characters do |t|
      #creates an characters table with name, actor_id, and show_id columns
      t.string :name
      t.integer :actor_id
      t.integer :show_id
    end
  end
end

#t.integer :actor_id is the same as t.belongs_to :ator_id
#t.integer :show_id is the same as t.belongs_to :show_id
