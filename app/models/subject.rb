# == Schema Information
#
# Table name: subjects
#
#  id           :integer          not null, primary key
#  name         :string
#  subject_code :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Subject < ApplicationRecord
  has_many :results

  def subject_name # just a class name in order to use it
    	return "#{self.name} (#{self.subject_code})"
  end
end
