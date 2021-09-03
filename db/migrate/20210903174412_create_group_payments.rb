class CreateGroupPayments < ActiveRecord::Migration[6.1]
  def change
    create_table :group_payments do |t|
      t.string :memo

      t.timestamps
    end
  end
end
