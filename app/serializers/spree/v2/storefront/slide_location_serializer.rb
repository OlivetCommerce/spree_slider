module Spree
  module V2
    module Storefront
      class SlideLocationSerializer < BaseSerializer
        set_type :slide_location

        attributes :name
      end
    end
  end
end