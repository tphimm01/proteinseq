class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :hash_password
      t.string :salt
      t.string :contact_name
      t.string :pi_name
      t.string :email_address
      t.string :phone
      t.string :fax

      t.timestamps
    end
  end
end
