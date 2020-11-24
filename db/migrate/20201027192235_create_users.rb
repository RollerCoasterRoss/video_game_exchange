class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :street
      t.string :unit
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
