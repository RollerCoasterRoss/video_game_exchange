class CreateCartridges < ActiveRecord::Migration[6.0]
  def change
    create_table :cartridges do |t|
      t.integer :video_game_id
      t.integer :owner_id
      t.integer :borrower_id
      t.date :lend_date

      t.timestamps
    end
  end
end
