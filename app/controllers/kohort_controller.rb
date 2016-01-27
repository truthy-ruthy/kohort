class KohortController < ApplicationController

#shows kohorts that user belongs to
  def index
     @kohorts = Kohort.all
  end

# gets new kohort form
  def new
    @kohort= Kohort.new
  end

#find kohort with:
# must match: zip code, age(not visible), field, conversation_level
# match or doesn't matter: coed, frequency, daytime
#3 or less people
#if match, add to kohort
#display clickable on page if 4 people total, otherwise "pending kohort" in slot
#else

#creates kohort if one matching user requirements is not found
  def create
    # @kohort= Kohort.new(params[:kohort])
    # p params
    # if @kohort.save

    else
      # render 'new'
    end
  end



end
