class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :film
      t.string :theater
      t.integer :screen_id
      t.integer :ticket_id

      t.timestamps
    end
  end
end
