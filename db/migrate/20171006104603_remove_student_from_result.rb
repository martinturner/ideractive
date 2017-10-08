class RemoveStudentFromResult < ActiveRecord::Migration[5.1]
  def change
    remove_reference :results, :student_id, foreign_key: true
  end
end
