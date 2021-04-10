module Spree
  module Api
    module V2
      module Storefront
        class SlidesController < ::Spree::Api::V2::ResourceController

          private

          def model_class
            ::Spree::Slide
          end

          def scope
            ::Spree::Slide.published
          end

          def resource
            scope.find_by(id: params[:id]) || scope.find(params[:id])
          end

          def collection_serializer
            Spree::V2::Storefront::SlideSerializer
          end

          def resource_serializer
            Spree::V2::Storefront::SlideSerializer
          end
        end
      end
    end
  end
end