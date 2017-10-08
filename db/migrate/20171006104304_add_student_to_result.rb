class AddStudentToResult < ActiveRecord::Migration[5.1]
  def change
    add_reference :results, :student, foreign_key: true
  end
end
