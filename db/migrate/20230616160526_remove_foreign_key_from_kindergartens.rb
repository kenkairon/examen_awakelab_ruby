class RemoveForeignKeyFromKindergartens < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :kindergartens, :pets
    remove_index :kindergartens, :pet_id
    remove_column :kindergartens, :pet_id
  end
end
