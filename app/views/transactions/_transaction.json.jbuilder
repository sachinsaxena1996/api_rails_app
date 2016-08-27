json.extract! transaction, :id, :merchant_id, :consumer_id, :sale_amount, :transaction_date, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)