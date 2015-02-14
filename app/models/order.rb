class Order < ActiveRecord::Base
  PAYMENT_TYPES = ['После дождичка в четверг', 'Оплата самым ужасным баноком мира', 'Безналичная оплата. Кровью']
  
  has_many :line_items, dependent: :destroy
  validates :name, :email, :address, presence: true
  validates :pay_type, inclusion: PAYMENT_TYPES
  
  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end
  
  
end
