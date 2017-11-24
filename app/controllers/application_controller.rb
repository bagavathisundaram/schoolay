class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_shopify

  def set_shopify
  	# b55b604e50afa1abefd9168c142719e4:bc4c2f00b1049aeb0c63e37b77b9bb81@schoolsay.
  	shop_url = "https://b55b604e50afa1abefd9168c142719e4:bc4c2f00b1049aeb0c63e37b77b9bb81@schoolsay.myshopify.com/admin"
	ShopifyAPI::Base.site = shop_url
	shop = ShopifyAPI::Shop.current
  end
end
