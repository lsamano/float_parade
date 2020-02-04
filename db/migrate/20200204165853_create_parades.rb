class CreateParades < ActiveRecord::Migration[6.0]
  def change
    create_table :parades do |t|
      t.string :name
      t.integer :budget
      t.integer :number_of_attendees

      t.timestamps
    end
  end
end
