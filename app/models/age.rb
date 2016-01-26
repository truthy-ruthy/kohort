class Age < ActiveRecord::Base
  belongs_to :user
  belongs_to :kohort

end
