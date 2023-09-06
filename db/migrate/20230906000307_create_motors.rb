class CreateMotors < ActiveRecord::Migration[7.0]
  def change
    create_table :motors do |t|
      t.string :tipo
      t.string :name
      t.string :description
      t.string :photo

      t.timestamps
    end
  end
end
