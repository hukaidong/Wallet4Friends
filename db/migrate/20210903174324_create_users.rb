class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :fullname

      t.timestamps
    end
  end
end
