class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email_address, :past_orders, :current_cart
end
