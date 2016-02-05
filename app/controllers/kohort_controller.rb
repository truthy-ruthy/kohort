class KohortController < ApplicationController

  # before_action :require_authentication
  before_action :require_login


#shows kohorts that user belongs to
  def index
     @kohorts = Kohort.all
  ends

# gets new kohort form
  def new
    @kohort= Kohort.new
    render "my_kohorts"
  end

#create a kohort if a matching one does not exist
  def create
    @kohort = Kohort.create(kohort_params)
    # puts @kohort
    if @kohort.save
    render "my_kohorts", notice: "kohort joined!"
  else
    render "my_kohorts", notice: "you're forgetting something"
  end
end

#find kohort with:
# must match: zip code, age(not visible), field, conversation_level
# match or doesn't matter: coed, frequency, daytime
#3 or less people
#if match, add to kohort
#display clickable on page if 4 people total, otherwise "pending kohort" in slot
#else

#  def join
#    kohort = Kohort.find_by(kohort_zip_code, kohort_age_id, kohort_coed_id, kohort_daytime_id, kohort_interaction_id, kohort_industry_id, frequency_id)
#    if all match
#      Roster.create(user_id: user.id, kohort_id: kohort.id)
#      redirect_to my_kohorts_path
#      kohort_id.appendTo(my kohorts div)
#         elsif
#
#   def create
#       @kohort = kohort.create(params[user_id: user.id, kohort_id: kohort.id, zip_code: zip_code.id, age_id: age.id, coed_id: coed.id, daytime_id: daytime.id, interaction_id: interaction.id, industry_id: industry.id, frequency_id: frequency.id)
# end
#       def create
#         @user = User.create(params[:kohort])
#         p user_params
#         if (@user != nil && @user.save)
#           redirect_to my_kohorts_path
#           kohort_id.appendTo(my kohorts div)
private

  def kohort_params
      # params.require(:kohort).permit(:zip_code, :frequency_id, :daytime_id, :interaction_id, :coed_id, :industry_id)
  end
 end
end
