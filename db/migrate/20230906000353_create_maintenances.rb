class CreateMaintenances < ActiveRecord::Migration[7.0]
  def change
    create_table :maintenances do |t|
      t.string :tipo
      t.string :name
      t.string :city
      t.string :materials
      t.date :fecha
      t.string :operatorname
      t.references :motor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
