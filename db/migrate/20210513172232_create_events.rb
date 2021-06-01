class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :starting_date_time
      t.datetime :ending_date_time
      t.string :location

      t.timestamps
    end
  end
end
