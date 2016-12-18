class VenuesController < ApplicationController
  def index
    @q = Venue.ransack(params[:q])
    @venues = @q.result(:distinct => true).includes(:ratings, :photos, :coordinator).page(params[:page]).per(10)
    @photo = Photo.new

    render("venues/index.html.erb")
  end

  def show
    @photo = Photo.new
    @rating = Rating.new
    @venue = Venue.find(params[:id])

    render("venues/show.html.erb")
  end

  def new
    @venue = Venue.new

    render("venues/new.html.erb")
  end

  def create
    @venue = Venue.new

    @venue.address = params[:address]
    @venue.city = params[:city]
    @venue.state = params[:state]
    @venue.zip = params[:zip]
    @venue.website = params[:website]
    @venue.capacity = params[:capacity]
    @venue.description = params[:description]
    @venue.drink_1 = params[:drink_1]
    @venue.drink_2 = params[:drink_2]
    @venue.drink_3 = params[:drink_3]
    @venue.drink_4 = params[:drink_4]
    @venue.drink_5 = params[:drink_5]
    @venue.drink_1_desc = params[:drink_1_desc]
    @venue.drink_2_desc = params[:drink_2_desc]
    @venue.drink_3_desc = params[:drink_3_desc]
    @venue.drink_4_desc = params[:drink_4_desc]
    @venue.drink_5_desc = params[:drink_5_desc]
    @venue.drink_1_price = params[:drink_1_price]
    @venue.drink_2_price = params[:drink_2_price]
    @venue.drink_3_price = params[:drink_3_price]
    @venue.drink_4_price = params[:drink_4_price]
    @venue.drink_5_price = params[:drink_5_price]
    @venue.food_1 = params[:food_1]
    @venue.food_2 = params[:food_2]
    @venue.food_3 = params[:food_3]
    @venue.food_4 = params[:food_4]
    @venue.food_5 = params[:food_5]
    @venue.food_6 = params[:food_6]
    @venue.food_7 = params[:food_7]
    @venue.food_8 = params[:food_8]
    @venue.food_9 = params[:food_9]
    @venue.food_10 = params[:food_10]
    @venue.food_11 = params[:food_11]
    @venue.food_12 = params[:food_12]
    @venue.food_13 = params[:food_13]
    @venue.food_14 = params[:food_14]
    @venue.food_15 = params[:food_15]
    @venue.food_16 = params[:food_16]
    @venue.food_17 = params[:food_17]
    @venue.food_18 = params[:food_18]
    @venue.food_19 = params[:food_19]
    @venue.food_20 = params[:food_20]
    @venue.food_21 = params[:food_21]
    @venue.food_22 = params[:food_22]
    @venue.food_23 = params[:food_23]
    @venue.food_24 = params[:food_24]
    @venue.food_25 = params[:food_25]
    @venue.food_26 = params[:food_26]
    @venue.food_27 = params[:food_27]
    @venue.food_28 = params[:food_28]
    @venue.food_29 = params[:food_29]
    @venue.food_30 = params[:food_30]
    @venue.food_31 = params[:food_31]
    @venue.food_32 = params[:food_32]
    @venue.food_33 = params[:food_33]
    @venue.food_34 = params[:food_34]
    @venue.food_35 = params[:food_35]
    @venue.food_36 = params[:food_36]
    @venue.food_37 = params[:food_37]
    @venue.food_38 = params[:food_38]
    @venue.food_39 = params[:food_39]
    @venue.food_40 = params[:food_40]
    @venue.food_1_desc = params[:food_1_desc]
    @venue.food_2_desc = params[:food_2_desc]
    @venue.food_3_desc = params[:food_3_desc]
    @venue.food_4_desc = params[:food_4_desc]
    @venue.food_5_desc = params[:food_5_desc]
    @venue.food_6_desc = params[:food_6_desc]
    @venue.food_7_desc = params[:food_7_desc]
    @venue.food_8_desc = params[:food_8_desc]
    @venue.food_9_desc = params[:food_9_desc]
    @venue.food_10_desc = params[:food_10_desc]
    @venue.food_11_desc = params[:food_11_desc]
    @venue.food_12_desc = params[:food_12_desc]
    @venue.food_13_desc = params[:food_13_desc]
    @venue.food_14_desc = params[:food_14_desc]
    @venue.food_15_desc = params[:food_15_desc]
    @venue.food_16_desc = params[:food_16_desc]
    @venue.food_17_desc = params[:food_17_desc]
    @venue.food_18_desc = params[:food_18_desc]
    @venue.food_19_desc = params[:food_19_desc]
    @venue.food_20_desc = params[:food_20_desc]
    @venue.food_21_desc = params[:food_21_desc]
    @venue.food_22_desc = params[:food_22_desc]
    @venue.food_23_desc = params[:food_23_desc]
    @venue.food_24_desc = params[:food_24_desc]
    @venue.food_25_desc = params[:food_25_desc]
    @venue.food_26_desc = params[:food_26_desc]
    @venue.food_27_desc = params[:food_27_desc]
    @venue.food_28_desc = params[:food_28_desc]
    @venue.food_29_desc = params[:food_29_desc]
    @venue.food_30_desc = params[:food_30_desc]
    @venue.food_31_desc = params[:food_31_desc]
    @venue.food_32_desc = params[:food_32_desc]
    @venue.food_33_desc = params[:food_33_desc]
    @venue.food_34_desc = params[:food_34_desc]
    @venue.food_35_desc = params[:food_35_desc]
    @venue.food_36_desc = params[:food_36_desc]
    @venue.food_37_desc = params[:food_37_desc]
    @venue.food_38_desc = params[:food_38_desc]
    @venue.food_39_desc = params[:food_39_desc]
    @venue.food_40_desc = params[:food_40_desc]
    @venue.food_1_price = params[:food_1_price]
    @venue.food_2_price = params[:food_2_price]
    @venue.food_3_price = params[:food_3_price]
    @venue.food_4_price = params[:food_4_price]
    @venue.food_5_price = params[:food_5_price]
    @venue.food_6_price = params[:food_6_price]
    @venue.food_7_price = params[:food_7_price]
    @venue.food_8_price = params[:food_8_price]
    @venue.food_9_price = params[:food_9_price]
    @venue.food_10_price = params[:food_10_price]
    @venue.food_11_price = params[:food_11_price]
    @venue.food_12_price = params[:food_12_price]
    @venue.food_13_price = params[:food_13_price]
    @venue.food_14_price = params[:food_14_price]
    @venue.food_15_price = params[:food_15_price]
    @venue.food_16_price = params[:food_16_price]
    @venue.food_17_price = params[:food_17_price]
    @venue.food_18_price = params[:food_18_price]
    @venue.food_19_price = params[:food_19_price]
    @venue.food_20_price = params[:food_20_price]
    @venue.food_21_price = params[:food_21_price]
    @venue.food_22_price = params[:food_22_price]
    @venue.food_23_price = params[:food_23_price]
    @venue.food_24_price = params[:food_24_price]
    @venue.food_25_price = params[:food_25_price]
    @venue.food_26_price = params[:food_26_price]
    @venue.food_27_price = params[:food_27_price]
    @venue.food_28_price = params[:food_28_price]
    @venue.food_29_price = params[:food_29_price]
    @venue.food_30_price = params[:food_30_price]
    @venue.food_31_price = params[:food_31_price]
    @venue.food_32_price = params[:food_32_price]
    @venue.food_33_price = params[:food_33_price]
    @venue.food_34_price = params[:food_34_price]
    @venue.food_35_price = params[:food_35_price]
    @venue.food_36_price = params[:food_36_price]
    @venue.food_37_price = params[:food_37_price]
    @venue.food_38_price = params[:food_38_price]
    @venue.food_39_price = params[:food_39_price]
    @venue.food_40_price = params[:food_40_price]
    @venue.amenity_1 = params[:amenity_1]
    @venue.amenity_2 = params[:amenity_2]
    @venue.amenity_3 = params[:amenity_3]
    @venue.amenity_priceparams[:amenity_4]
    @venue.amenity_5 = params[:amenity_5]
    @venue.amenity_6 = params[:amenity_6]
    @venue.amenity_7 = params[:amenity_7]
    @venue.amenity_8 = params[:amenity_8]
    @venue.rule_1 = params[:rule_1]
    @venue.rule_2 = params[:rule_2]
    @venue.rule_3 = params[:rule_3]
    @venue.rule_4 = params[:rule_4]
    @venue.rule_5 = params[:rule_5]
    @venue.rule_6 = params[:rule_6]
    @venue.rule_7 = params[:rule_7]
    @venue.rule_8 = params[:rule_8]
    @venue.rule_9 = params[:rule_9]
    @venue.rule_10 = params[:rule_10]
    @venue.coordinator_id = params[:coordinator_id]
    @venue.title = params[:title]

    save_status = @venue.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/venues/new", "/create_venue"
        redirect_to("/venues")
      else
        redirect_back(:fallback_location => "/", :notice => "Venue created successfully.")
      end
    else
      render("venues/new.html.erb")
    end
  end

  def edit
    @venue = Venue.find(params[:id])

    render("venues/edit.html.erb")
  end

  def update
    @venue = Venue.find(params[:id])

    @venue.address = params[:address]
    @venue.city = params[:city]
    @venue.state = params[:state]
    @venue.zip = params[:zip]
    @venue.website = params[:website]
    @venue.capacity = params[:capacity]
    @venue.description = params[:description]
    @venue.drink_1 = params[:drink_1]
    @venue.drink_2 = params[:drink_2]
    @venue.drink_3 = params[:drink_3]
    @venue.drink_4 = params[:drink_4]
    @venue.drink_5 = params[:drink_5]
    @venue.food_1 = params[:food_1]
    @venue.food_2 = params[:food_2]
    @venue.food_3 = params[:food_3]
    @venue.food_4 = params[:food_4]
    @venue.food_5 = params[:food_5]
    @venue.drink_1_price = params[:drink_1_price]
    @venue.drink_2_price = params[:drink_2_price]
    @venue.drink_3_price = params[:drink_3_price]
    @venue.drink_4_price = params[:drink_4_price]
    @venue.drink_5_price = params[:drink_5_price]
    @venue.food_1_price = params[:food_1_price]
    @venue.food_2_price = params[:food_2_price]
    @venue.food_3_price = params[:food_3_price]
    @venue.food_4_price = params[:food_4_price]
    @venue.food_5_price = params[:food_5_price]
    @venue.amenity_1 = params[:amenity_1]
    @venue.amenity_2 = params[:amenity_2]
    @venue.amenity_3 = params[:amenity_3]
    @venue.amenity_4 = params[:amenity_4]
    @venue.amenity_5 = params[:amenity_5]
    @venue.amenity_6 = params[:amenity_6]
    @venue.amenity_7 = params[:amenity_7]
    @venue.amenity_8 = params[:amenity_8]
    @venue.rule_1 = params[:rule_1]
    @venue.rule_2 = params[:rule_2]
    @venue.rule_3 = params[:rule_3]
    @venue.rule_4 = params[:rule_4]
    @venue.rule_5 = params[:rule_5]
    @venue.rule_6 = params[:rule_6]
    @venue.coordinator_id = params[:coordinator_id]
    @venue.title = params[:title]

    save_status = @venue.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/venues/#{@venue.id}/edit", "/update_venue"
        redirect_to("/venues/#{@venue.id}", :notice => "Venue updated successfully.")
      else
        r_descedirect_back(:fallback_location => "/", :notice => "Venue updated successfully.")
      end
    else
      render("venues/edit.html.erb")
    end
  end

  def destroy
    @venue = Venue.find(params[:id])

    @venue.destroy

    if URI(request.referer).path == "/venues/#{@venue.id}"
      redirect_to("/", :notice => "Venue deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Venue deleted.")
    end
  end
end
