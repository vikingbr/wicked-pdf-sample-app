class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.string :title
      t.text :description
      t.float :amount

      t.timestamps
    end
  end
end
