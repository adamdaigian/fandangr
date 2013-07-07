class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :name
      t.text :info

      t.timestamps
    end
  end
end
