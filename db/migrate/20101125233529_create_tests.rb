class CreateTests < ActiveRecord::Migration
  def self.up
    create_table :tests do |t|
      t.string :param1
      t.integer :param2
      t.date :param3

      t.timestamps
    end
  end

  def self.down
    drop_table :tests
  end
end
