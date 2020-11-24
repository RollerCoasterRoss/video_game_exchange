class User < ApplicationRecord
  has_secure_password

  has_many :my_cartridges, foreign_key: "owner_id", class_name: "Cartridge"
  has_many :borrowed_cartridges, foreign_key: "borrower_id", class_name: "Cartridge"
  has_many :my_video_games, through: :my_cartridges, source: :video_game
  has_many :borrowed_video_games, through: :borrowed_cartridges, source: :video_game

  validates :email, presence: true, uniqueness: true

  def lent_out_cartridges
    my_cartridges.where.not(borrower_id: nil)
  end
end
 