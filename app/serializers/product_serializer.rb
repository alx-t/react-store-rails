class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :price, :image_urls

  def price
    return nil unless object.price.present?
    object.price / 100
  end
end
