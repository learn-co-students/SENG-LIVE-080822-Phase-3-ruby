class CreateOwner < ActiveRecord::Migration[6.1]
  def change
    create_table :owners do |t|
      t.string :username
      t.string :address
      t.string :email
      t.integer :phone
    end 
  end
end
