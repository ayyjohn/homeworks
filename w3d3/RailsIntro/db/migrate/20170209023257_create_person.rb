class CreatePerson < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name, null: false
      t.integer :house_id, null: false
    end
  end
end
