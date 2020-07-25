class Moderator < User
  validates :profession, present: true
  validates :workplace, present: true
end
