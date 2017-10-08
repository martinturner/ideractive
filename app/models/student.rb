# == Schema Information
#
# Table name: students
#
#  id           :integer          not null, primary key
#  name         :string
#  surname      :string
#  student_code :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Student < ApplicationRecord
  has_many :results

  def student_name
    	return "#{self.name} (#{self.surname})"
  end
end
