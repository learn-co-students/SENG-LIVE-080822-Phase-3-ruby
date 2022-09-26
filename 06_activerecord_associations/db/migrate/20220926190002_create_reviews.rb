class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :content 
      t.integer :owner_id 
      t.integer :handler_id
    end 
  end
end
