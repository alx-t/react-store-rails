class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :price, :image_urls

  def price
    return nil unless object.price.present?
    object.price / 100
  end
end
