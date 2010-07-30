class CreateCountdowns < ActiveRecord::Migration
  def self.up
    create_table :countdowns do |t|
      t.string :name
      t.datetime :end

      t.timestamps
    end
  end

  def self.down
    drop_table :countdowns
  end
end
