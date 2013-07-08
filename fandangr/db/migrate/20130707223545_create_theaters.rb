class CreateTheaters < ActiveRecord::Migration
  def change
    create_table :theaters do |t|
      t.string :location
      t.integer :screen

      t.timestamps
    end
  end
end
