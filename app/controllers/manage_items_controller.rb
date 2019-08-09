class ManageItemsController < ApplicationController
	def new
		@item = Item.new
		disc = @item.discs.build
		disc.songs.build
		@category = Category.new
		@label = Label.new
		@artist = Artist.new
		@categories = Category.all
		@labels = Label.all
		@artists = Artist.all
	end

	def edit
		@item = Item.find(params[:id])
	end

	def destroy
		item = Item.find(params[:id])
	end

	def update
		item = Item.find(params[:id])
		item.update(item_params)
		redirect_to manage_items_path
	end

	def index
		@items = Item.all
	end

	def search
	end

	def show
		@item = Item.find(params[:id])
	end

	def create
		@item = Item.create(item_params)
		redirect_to manage_items_path
	end
	private
	def item_params
		params.require(:item).permit(:album, :image_id, :price, :stock, :sales_status,
			discs_attributes: [:id,
				songs_attributes: %i(name, artist_id, category_id)])
	end
end
