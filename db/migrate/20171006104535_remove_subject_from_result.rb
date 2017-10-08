class RemoveSubjectFromResult < ActiveRecord::Migration[5.1]
  def change
    remove_reference :results, :subject_id, foreign_key: true
  end
end
