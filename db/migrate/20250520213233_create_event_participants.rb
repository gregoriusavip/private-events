class CreateEventParticipants < ActiveRecord::Migration[8.0]
  def change
    create_table :event_participants do |t|
      t.timestamps
      t.belongs_to :attending_user
      t.belongs_to :attending_event
    end
  end
end
