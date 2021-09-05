class MoneyTransfer < ApplicationRecord
  enum complete_status: [:completed, :incompleted], _default: :incompleted
  belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'
  belongs_to :receiver, class_name: 'User'
end
