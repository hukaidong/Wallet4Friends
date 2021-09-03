class GroupPaymentItem < ApplicationRecord
  enum complete_status: [:completed, :incompleted], _default: :incompleted
  enum action_type: [:paid, :shouldPay]
  belongs_to :group_payment
  belongs_to :user
end
