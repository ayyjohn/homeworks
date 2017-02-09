class AddConstraintsToHouse < ActiveRecord::Migration
  def change
    change_column_null :houses, :address, false
  end
end
