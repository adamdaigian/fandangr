class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :movie_id
      t.integer :theater_id
      t.integer :screen_id
      t.string :date
      t.string :time

      t.timestamps
    end
  end
end
