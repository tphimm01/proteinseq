class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :payment_option
      t.string :tufts_dept_id
      t.string :tufts_grant
      t.string :tmc_cost_center
      t.string :tmc_dept
      t.string :tmc_box
      t.string :company_name
      t.string :po
      t.string :credit_card_no
      t.string :credit_card_exp
      t.string :credit_card_cvvs
      t.string :shipping_address
      t.string :billing_address
      t.integer :tucf_startup_no
      t.integer :tucf_startup_code
      t.integer :tucf_cycle_no
      t.integer :tucf_cycle_code

      t.timestamps
    end
  end
end
