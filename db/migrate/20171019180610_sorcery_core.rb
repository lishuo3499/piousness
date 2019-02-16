class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :user_name
      t.string :email_unm
      t.string :designation
      t.integer :phone_number
      t.string :company_name
      t.string :user_style
      t.string :company_style
      t.string :salt

      t.timestamps                :null => false
    end

    add_index :users, :email, unique: true
  end
end
