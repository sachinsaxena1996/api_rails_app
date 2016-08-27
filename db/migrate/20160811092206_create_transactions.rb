class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :merchant_id
      t.integer :consumer_id
      t.float :sale_amount
      t.date :transaction_date

      #t.timestamps null: false
    end
  end
end
