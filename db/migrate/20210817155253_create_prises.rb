class CreatePrises < ActiveRecord::Migration[6.0]
  def change
    create_table :prises do |t|
      t.datetime :moment
      t.integer :sys
      t.integer :dia
      t.integer :pulse
      t.text :note

      t.timestamps
    end
  end
end
