class ChangeEventsColumn < ActiveRecord::Migration[8.0]
  def change
    change_column :events, :time, :datetime
  end
end
