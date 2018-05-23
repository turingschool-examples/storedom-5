class Stores::ItemsController < Stores::StoresController
  def index
    @items = current_store.items
  end

  def show
    @item = Item.find(params[:id])
  end
end
