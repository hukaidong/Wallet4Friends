json.extract! money_transfer, :id, :memo, :amount, :created_at, :updated_at
json.url money_transfer_url(money_transfer, format: :json)
