module Resolvers
  class GetUser < Resolvers::Base
    type Types::UserType, null: false

    argument :id, ID, required: true

    def resolve(id: nil)
      User.find(id)
    end
  end
end
