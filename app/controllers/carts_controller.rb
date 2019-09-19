class CartsController < ApplicationController

  def create
   if user_signed_in?
     
     if current_user.cart.products.include?(Product.find(params[:format])) == false || current_user.cart.products == nil
        CartProduct.create( cart: current_user.cart, product: Product.find(params[:format]) , quantity: 1 )
        flash[:success] = "Panier créé"
        redirect_to root_path
      else
        @current_cart_product = current_user.cart.cartProducts.find_by(product_id: Product.find(params[:format]).id)
        puts @current_cart_product.id
        @q = @current_cart_product.quantity
        @current_cart_product.update(quantity: @q+1)
        redirect_to root_path
     end  

   else
     redirect_to new_user_session_path
   end
 end

  def show
    if user_signed_in?
          @price_total = 0
          @cart_products = current_user.cart.cartProducts
          @cart_products.each do |cart_product|
          @price_total +=  cart_product.product.price * cart_product.quantity
         end
     else
       redirect_to new_user_session_path
     end
  end 

 def destroy
   @cart_product = CartProduct.find_by(product_id:params[:id], cart_id: current_user.cart.id,)
   @cart_product.destroy
   redirect_to cart_path(params[:id])
 end

end
