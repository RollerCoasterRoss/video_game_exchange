class Cartridge < ApplicationRecord
  belongs_to :owner, class_name: "User"
  belongs_to :borrower, class_name: "User", optional: true
  belongs_to :video_game

  def owned_by?(user)
    user.id == owner_id
  end

  def borrowed?
    !!borrower_id
  end

  def borrowed_by?(user)
    user.id == borrower_id
  end

  def borrowed_by_me?(user)
    borrowed? && borrowed_by?(user)
  end

  def borrowed_from_me?(user)
    borrowed? && !borrowed_by?(user)
  end

  def owned_and_playable?(user)
    !borrowed? && owned_by?(user)
  end

  def dynamic_borrower_name(user)
    return "Me" if borrowed_by_me?(user)
    return "N/A" if owned_and_playable?(user)
    return borrower.first_name if borrowed_from_me?(user)
  end
end
