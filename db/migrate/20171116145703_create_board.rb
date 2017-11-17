class CreateBoard < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.integer :turn_count, default: 0
      t.integer :position, array: true, default: [0, 0]
      t.string :row1, array: true, default: [" ", " ", " ", " ", " ", " ", " "]
      t.string :row2, array: true, default: [" ", " ", " ", " ", " ", " ", " "]
      t.string :row3, array: true, default: [" ", " ", " ", " ", " ", " ", " "]
      t.string :row4, array: true, default: [" ", " ", " ", " ", " ", " ", " "]
      t.string :row5, array: true, default: [" ", " ", " ", " ", " ", " ", " "]
      t.string :row6, array: true, default: [" ", " ", " ", " ", " ", " ", " "]
    end
  end
end
