json.extract! group_payment_item, :id, :action_type, :amount, :created_at, :updated_at
json.url group_payment_item_url(group_payment_item, format: :json)
