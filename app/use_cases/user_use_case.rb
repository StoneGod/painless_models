class UserUseCase
  class << self
    def create!(params)
      fail StandardError unless params[:agree_with_terms] == true

      UserMutator.create!(params.except!(:agree_with_terms))
    end
  end
end
