class CreateTargets < ActiveRecord::Migration
  def self.up
    create_table :targets do |t|
      t.references :exercise
      t.references :muscle
    end
  end

  def self.down
    drop_table :targets
  end
end
