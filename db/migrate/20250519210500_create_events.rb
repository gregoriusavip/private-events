class CreateEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :events do |t|
      t.string :location
      t.date :time

      t.timestamps
    end
  end
end
