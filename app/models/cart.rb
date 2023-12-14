class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  def add_menu(menu)
    current_item = line_items.find_by(menu_id: menu.id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(menu_id: menu.id)
    end
    current_item
  end

  def total_price
    line_items.sum { |item| item.total_price }
  end
end
