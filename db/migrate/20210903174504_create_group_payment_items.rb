class CreateGroupPaymentItems < ActiveRecord::Migration[6.1]
  def change
    create_table :group_payment_items do |t|
      t.integer :complete_status
      t.integer :action_type
      t.decimal :amount
      t.references :user, foreign_key: true
      t.references :group_payment, foreign_key: true
      t.timestamps
    end
  end
end
