class AddCompositeIndexToTargets < ActiveRecord::Migration
  def self.up
    add_index :targets, [:exercise_id, :muscle_id], :unique => true, :name => "index_table_on_exercise_and_muscle"
  end

  def self.down
    remove_index :targets, :name => "index_table_on_exercise_and_muscle"
  end
end
