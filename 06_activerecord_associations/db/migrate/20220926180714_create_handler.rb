class CreateHandler < ActiveRecord::Migration[6.1]
  def change
    create_table :handlers do |t|
      t.string :name
      t.string :email
      t.integer :phone
    end 
  end
end
