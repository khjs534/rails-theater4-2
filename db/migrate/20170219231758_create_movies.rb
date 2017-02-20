class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|

      t.string :title
      t.boolean :playing

      t.timestamps
    end
  end
end
