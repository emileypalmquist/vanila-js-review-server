class ImagesController < ApplicationController
    def show
        image = Image.find(params[:id])
        render json: image
    end

    def update
        puts image_params
        image = Image.find(params[:id])
        if image.update(image_params)
            render json: image
        else
            render json: {error: "something went wrong"}
        end
    end

    private

    def image_params
        params.require(:image).permit(:likes)
    end
end
