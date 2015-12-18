class ChangeColumnToLineItems < ActiveRecord::Migration
  def up
    change_column :line_items, :price, :integer, after: :cart_id
  end
end
