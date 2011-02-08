class CreateExercises < ActiveRecord::Migration
  def self.up
    create_table :exercises do |t|
      t.string :name
      t.text :description
      t.text :preparation
      t.text :execution
      t.text :comment
      t.string :url
      t.references :exercise_type

      t.timestamps
    end
  end

  def self.down
    drop_table :exercises
  end
end
