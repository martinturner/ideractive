class AddStudentsToResult < ActiveRecord::Migration[5.1]
  def change
    add_reference :results, :student_id, foreign_key: true
  end
end
