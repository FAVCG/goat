class RenameTypetoAnimalType < ActiveRecord::Migration[5.2]
  def change
    rename_column :animals, :type, :animal_type
  end
end
