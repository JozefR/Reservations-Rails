class RemoveLanguageFromCourse < ActiveRecord::Migration[5.1]
  def change
    remove_column :courses, :language, :ingeter
  end
end
