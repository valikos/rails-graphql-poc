module Types
  class QueryType < Types::BaseObject
    field :get_user,
      resolver: Resolvers::GetUser,
      description: 'User by id'

    field :all_users,
      resolver: Resolvers::AllUsers,
      description: 'All users'

    field :all_links,
      resolver: Resolvers::AllLinks,
      description: 'All links'

    field :get_link,
      resolver: Resolvers::GetLink,
      description: 'Link by id'
  end
end
