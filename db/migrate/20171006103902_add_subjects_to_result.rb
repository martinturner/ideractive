class AddSubjectsToResult < ActiveRecord::Migration[5.1]
  def change
    add_reference :results, :subject_id, foreign_key: true
  end
end
