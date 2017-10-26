class AddToDoTable < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.integer :status, :limit => 1
      t.string :description, null: false
      t.timestamps
    end

  end
end
