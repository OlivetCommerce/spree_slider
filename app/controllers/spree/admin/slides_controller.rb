module Spree
  module Admin
    class SlidesController < ResourceController
      respond_to :html

      def index
        @slides = Spree::Slide.includes(:slide_locations).order('spree_slide_locations.id ASC').order('position ASC')
      end

      private

      def location_after_save
        if @slide.created_at == @slide.updated_at
          edit_admin_slide_url(@slide)
        else
          admin_slides_url
        end
      end

      def slide_params
        params.require(:slide).permit(:name, :body, :link_url, :published, :image, :position, :product_id)
      end
    end
  end
end
