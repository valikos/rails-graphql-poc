module Types
  class QueryType < Types::BaseObject
    field :all_links,
      resolver: Resolvers::AllLinks,
      description: 'All links'

    field :get_link,
      resolver: Resolvers::GetLink,
      description: 'Link by id'
  end
end
