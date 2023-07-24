class Kindergarten < ApplicationRecord
  # #pertenece a una ciudad
  belongs_to :city
  # #pertenece a una mascota
  has_and_belongs_to_many :pets

  belongs_to :user
  has_one_attached :photo

  validates :name, presence: true

   #validacion
   validates :name, presence: true
   validates :description, presence: true
   validates :price, presence: true
   validates :phone, presence: true, length: { is: 9 }
   validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }

end
