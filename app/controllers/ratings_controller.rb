class RatingsController < ApplicationController
  before_filter :find_rateable, :only => [:index, :create]
  respond_to :html
 
  def index
    @ratings = @rateable.ratings
    respond_with(@ratings)
  end

  def show
    @rating = Rating.find(params[:id])
    respond_with(@rating)
  end

  
  def new
    @rating = Rating.new
    respond_with(@rating)
  end

  def edit
    @rating = Rating.find(params[:id])
  end

  def create
    @rating = @rateable.ratings.build(params[:rating])
    if @rating.save
      flash[:notice] = 'rating was successfully added.'
    end
    respond_with(@rateable)
  end

  private  

  def find_rateable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        @rateable = $1.classify.constantize.find(value)
      end
    end
    nil
  end  
end
