class CreateHotwings < ActiveRecord::Migration
  def change
    create_table :hotwings do |t|
      t.string :sauce
      t.integer :heat_index

      t.timestamps
    end
  end
end
