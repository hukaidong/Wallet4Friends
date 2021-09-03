class CreateMoneyTransfers < ActiveRecord::Migration[6.1]
  def change
    create_table :money_transfers do |t|
      t.string :memo
      t.integer :complete_status
      t.decimal :amount
      t.references :sender, foreign_key: { to_table: :users }
      t.references :receiver, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
