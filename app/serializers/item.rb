class ItemSerializer < ActiveModelSerializers::Model
  attributes :id, :name, :description, :image_url
end
