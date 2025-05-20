class CreateEventParticipants < ActiveRecord::Migration[8.0]
  def change
    create_table :event_participants do |t|
      t.timestamps
      t.belongs_to :user
      t.belongs_to :event
    end
  end
end
