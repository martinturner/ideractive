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

require 'test_helper'

class ResultTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
