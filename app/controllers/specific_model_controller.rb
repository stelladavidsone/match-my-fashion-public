class SpecificModelController < ApplicationController
  def list
    @specific_models = SpecificModel.all
  end
   
  def show
    @specific_model = SpecificModel.find(params[:id])
  end
  
  def search
    
  end
  
  def search_redirect
    #@height_feet = params[:height_feet]
    #@height_inches = params[:height_inches]
    #@dress_size = params[:dress_size]
    #@hair_color = params[:hair_color]
    #@skin_color = params[:skin_color]
    #@shoot_nudes = params[:shoot_nudes]
    #@tattoos = params[:tattoos]
    #@piercings = params[:piercings]
    #@genres = params[:checkboxes]           
    #@experience = params[:experience]
    
    @params_arg = params
    @checkboxes = params[:checkboxes]
    
    SpecificModel.search flash[:general_queries], @checkboxes, @params_arg
    redirect_to root_path
  end
   
  def new
    @specific_model = SpecificModel.new
  end
   
  def create
    @specific_model = SpecificModel.new(specific_model_param)
    @genre_str
    if !params[:specific_model][:allgenres].nil?
      for index in 0 ... params[:specific_model][:allgenres].size
         @genre_str = @genre_str.to_s + params[:specific_model][:allgenres][index] + ","
      end
    else
    end
    
    #puts @genre_str
    @specific_model.genre = @genre_str
    @specific_model.user_key = session[:current_user_key] 
    
    if @specific_model.save!
      puts "Saved and returning to root"
      redirect_to root_path
    else
      render :action => 'new'
    end
  end
  
  def specific_model_params
    params.require(:specific_models).permit(:height_feet, :height_inches, :bust, :waist, :hips, :cups, :shoe_size, :dress_size, :hair_color, :eye_color, :ethnicity, :skin_color, :shoot_nudes, :tattoos, :piercings, :experience, :genre, {:allgenres => []})
  end
   
  def edit
    @specific_model = SpecificModel.find(params[:id])
  end
  
  def specific_model_param
    params.require(:specific_model).permit(:height_feet, :height_inches, :bust, :waist, :hips, :cups, :shoe_size, :dress_size, :hair_color, :eye_color, :ethnicity, :skin_color, :shoot_nudes, :tattoos, :piercings, :experience, :genre, {:allgenres => []})
  end
   
  def update
    @specific_model = SpecificModel.find(params[:id])
    
    if @specific_model.update_attributes(specific_model_param)
      redirect_to :action => 'show', :id => @specific_model
    else
      render :action => 'edit'
    end
  end
  
  def delete
    SpecificModel.find(params[:id]).destroy
    redirect_to :action => 'list'
  end   
end
