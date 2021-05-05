module Spree
  module Api
    module V2
      module Storefront
        class SlideLocationsController < ::Spree::Api::V2::ResourceController

          private

          def model_class
            ::Spree::SlideLocation
          end

          def scope
            ::Spree::SlideLocation
          end
          
          def resource
            scope.find_by(id: params[:id]) || scope.find(params[:id])
          end

          def collection_serializer
            Spree::V2::Storefront::SlideLocationSerializer
          end

          def resource_serializer
            Spree::V2::Storefront::SlideLocationSerializer
          end
        end
      end
    end
  end
end