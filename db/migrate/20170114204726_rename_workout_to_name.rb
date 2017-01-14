class RenameWorkoutToName < ActiveRecord::Migration
  def change
    rename_column :workouts, :workout, :name 
  end
end
