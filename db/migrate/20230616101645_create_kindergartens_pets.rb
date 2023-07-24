class CreateKindergartensPets < ActiveRecord::Migration[7.0]
  def change
    create_table :kindergartens_pets do |t|
      t.references :kindergarten, null: false, foreign_key: true
      t.references :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
