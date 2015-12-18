class AddPriceToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :price, :integer, after: :cart_id
  end
end
