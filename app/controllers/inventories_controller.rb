class InventoriesController < ApplicationController

     def destroy
    @inventory = current_user.inventories.find(params[:id])
    @inventory.destroy
    redirect_to inventories_path, notice: 'Inventory deleted successfully.'
  end
end
