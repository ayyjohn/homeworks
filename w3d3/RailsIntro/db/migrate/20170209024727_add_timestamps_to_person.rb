class AddTimestampsToPerson < ActiveRecord::Migration
  def change
    change_table(:people) { |t| t.timestamps }
  end
end
