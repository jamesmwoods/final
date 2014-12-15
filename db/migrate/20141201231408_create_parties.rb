class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.references  :user
      t.string      :title  
      t.text        :description
      t.timestamps
    end
  end
end
