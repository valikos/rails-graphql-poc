module Resolvers
  class GetLink < Resolvers::Base
    type Types::LinkType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      Link.find(id)
    end
  end
end
