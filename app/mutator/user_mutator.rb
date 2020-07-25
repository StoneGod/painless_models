class UserMutator
  class << self
    def create!(params)
      user = User.create!(params.except!(:create_organization))
      Organization.create(user: user) if params[:create_organization]
      user
    end
  end
end
