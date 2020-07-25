class User < ApplicationRecord
  validates :username, present: true, uniqueness: { case_sensitive: false }
  validates :address, present: true, uniqueness: { case_sensitive: false }
  validates :email, present: true, confirmation: { case_sensitive: false }
  validates :agree_with_terms, present: true, inclusion: { in: [true] }

  attr_accessor :agree_with_terms
  attr_accessor :need_org

  after_create :create_org
  after_create_commit :find_coordinates

  def find_coordinates
    # тут типо определяем координаты
  end


  def need_org
    return if need_org == false

    # user.organization.create
  end

end
