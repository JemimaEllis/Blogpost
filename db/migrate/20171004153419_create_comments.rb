class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :username
      t.text :body
      t.string :location
      t.string :email_address
      t.integer :age
      t.integer :post_id

      t.timestamps
    end
  end
end
