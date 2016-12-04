class VenuesController < ApplicationController
  def index
    @q = Venue.ransack(params[:q])
    @venues = @q.result(:distinct => true).includes(:ratings, :photos, :coordinator).page(params[:page]).per(10)

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
        redirect_back(:fallback_location => "/", :notice => "Venue updated successfully.")
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
