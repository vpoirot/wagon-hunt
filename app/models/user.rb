class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :products
  has_attachment :avatar
  has_many :upvotes

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def voted_for?(product)
    product.upvotes.where(user: self).any?
  end
end
