class CreateShowings < ActiveRecord::Migration
  def change
    create_table :showings do |t|

      t.datetime :time
      t.references :movie, foreign_key: true
      t.references :auditorium, foreign_key: true

      t.timestamps
    end
  end
end
