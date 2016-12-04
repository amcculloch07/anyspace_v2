ActiveAdmin.register Venue do

 permit_params :address, :city, :state, :zip, :website, :capacity, :description, :drink_1, :drink_2, :drink_3, :drink_4, :drink_5, :food_1, :food_2, :food_3, :food_4, :food_5, :drink_1_price, :drink_2_price, :drink_3_price, :drink_4_price, :drink_5_price, :food_1_price, :food_2_price, :food_3_price, :food_4_price, :food_5_price, :amenity_1, :amenity_2, :amenity_3, :amenity_4, :amenity_5, :amenity_6, :amenity_7, :amenity_8, :rule_1, :rule_2, :rule_3, :rule_4, :rule_5, :rule_6, :coordinator_id, :title

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
