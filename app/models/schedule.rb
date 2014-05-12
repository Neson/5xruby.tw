# == Schema Information
#
# Table name: schedules
#
#  id          :integer          not null, primary key
#  stage_id    :integer          not null
#  date        :date             not null
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Schedule < ActiveRecord::Base
  # scope macros
  scope :available, -> { order(:date).where('date > ?', Time.now) }

  # Concerns macros

  # Constants
  
  # Attributes related macros

  # association macros
  belongs_to :stage

  # validation macros

  # callbacks

  # other

  protected
  # callback methods
end
