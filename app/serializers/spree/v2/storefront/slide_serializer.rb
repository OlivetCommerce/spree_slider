module Spree
  module V2
    module Storefront
      class SlideSerializer < BaseSerializer
        set_type :slide

        attributes :slide_name, :body, :slide_link, :slide_image_url, :published, :position

        attribute :locations do |slide|
          slide.slide_locations
        end

        has_one :product
        has_many :slide_locations
      end
    end
  end
end