class CommandsController < ApplicationController
  def create

    @cart = Cart.find(params[:cart_id])

    @cart_products = @cart.products

    @command = Command.create(customer_id: current_user.id)

    
    @cart_products.each do |product|
      CommandProduct.create(command_id: @command.id, product_id: product.id)
    end

    CartProduct.where(cart_id: @cart.id).each do |entry|
      entry.destroy
    end
  end

end
