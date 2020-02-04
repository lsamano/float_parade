class CreateBalloons < ActiveRecord::Migration[6.0]
  def change
    create_table :balloons do |t|
      t.string :name
      t.belongs_to :parade, null: false, foreign_key: true
      t.string :color
      t.integer :size

      t.timestamps
    end
  end
end
