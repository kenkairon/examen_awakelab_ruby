class AddPhotoToKindergartens < ActiveRecord::Migration[7.0]
  def change
    add_column :kindergartens, :photo, :string
  end
end


