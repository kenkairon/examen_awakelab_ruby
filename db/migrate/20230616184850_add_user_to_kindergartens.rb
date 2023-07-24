class AddUserToKindergartens < ActiveRecord::Migration[7.0]
  def change
    add_reference :kindergartens, :user, foreign_key: true
  end
end
