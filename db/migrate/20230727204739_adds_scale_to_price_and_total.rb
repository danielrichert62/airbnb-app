class AddsScaleToPriceAndTotal < ActiveRecord::Migration[7.0]
  def change
    change_column :reservations, :price, :decimal, precision: 9, scale: 2
    change_column :reservations, :total, :decimal, precision: 9, scale: 2
  end
end
