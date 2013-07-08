class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.integer :number
      t.integer :screen_id
      t.integer :theater_id
      t.integer :movie_id

      t.timestamps
    end
  end
end
