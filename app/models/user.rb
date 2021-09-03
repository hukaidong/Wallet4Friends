class User < ApplicationRecord
  has_many :group_payments, through: :group_payment_items
  has_many :group_payment_items
  has_many :money_transfers

  alias_attribute :name, :nickname
end
