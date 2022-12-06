ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :price, :category_id, :description, :image

  form do |f|
    f.semantic_errors
    f.inputs
    f.inputs do
      f.input :img, as: :file, hint: f.object.img.present? ? image_tag(f.object.img) : ""
    end
    f.actions
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :price, :category_id, :description, :image]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
