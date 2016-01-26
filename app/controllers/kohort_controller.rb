class KohortController < ApplicationController

  def index
     @kohorts = Kohort.all
  end

  def new
    @kohort= Kohort.new
  end

  def create
    @kohort= Kohort.new(params[:kohort])
    p params
    if @kohort.save

    else
      render 'new'
    end
  end




  # def leave_kohort
  # end
  #
  # def kohort_home
  # end
end
