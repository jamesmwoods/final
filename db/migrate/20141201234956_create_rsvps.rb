class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.references  :user
      t.references  :party
      t.boolean     :coming
      t.timestamps
    end
  end
end
