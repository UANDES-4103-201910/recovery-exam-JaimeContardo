class ShoppingController < ApplicationController
  def index
    @list = []
    all_ids = cookies[:pizza_id]
    if all_ids != nil
      all_ids = all_ids.split(",")
      all_ids.each do |i|
        if i != ""
          @list.push(Pizza.find(i))
          end
      end
    end  
  end

  def remove_from_list
    id_to_remove = params[:id]
    all_ids = cookies[:pizza_id]
    all_ids = all_ids.split(",")
    the_index = all_ids.index(id_to_remove.to_s)
    if all_ids.include? id_to_remove.to_s
      all_ids.delete_at(the_index)
    end
    new_data = ""
    all_ids.each do |i|
      new_data += i.to_s + ","
    end
    new_data = new_data.chomp(",")
    cookies[:pizza_id] = new_data
    flash[:removed] = "The item was removed"
    redirect_to '/shopping'
  end

  def add_to_list
    ids = cookies[:pizza_id]
    if ids != nil or ids != ""
      cookies[:pizza_id] = ids.to_s + "," + params[:id].to_s
    else
      cookies[:pizza_id] = params[:id].to_s
    end
    flash[:added_to_list] = "The product was added to your list"
    redirect_to '/catalog'
  end
end
