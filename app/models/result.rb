# == Schema Information
#
# Table name: results
#
#  id         :integer          not null, primary key
#  score      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  subject_id :integer
#  student_id :integer
#

class Result < ApplicationRecord
  belongs_to :student, optional: true, :foreign_key => "student_id" # got to make a foreign key in order to use
  belongs_to :subject, optional: true, :foreign_key => "subject_id"
end
