class CreateHandlers < ActiveRecord::Migration[6.1]
  def change
    create_table :handlers do |t|
      t.string :name
      t.integer :phone
      t.string :email
    end 
  end
end
