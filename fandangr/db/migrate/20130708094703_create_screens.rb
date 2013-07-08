class CreateScreens < ActiveRecord::Migration
  def change
    create_table :screens do |t|
      t.integer :movie_id
      t.integer :theater_id
      t.integer :film_id
      t.integer :seat_id

      t.timestamps
    end
  end
end
