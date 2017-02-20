class CreateAuditoria < ActiveRecord::Migration
  def change
    create_table :auditoria do |t|

      t.integer :auditorium_number
      t.integer :seating_capacity
      t.references :theater, foreign_key: true

      t.timestamps
    end
  end
end
