module Mutations
  class CreateUser < BaseMutation
    # arguments passed to the `resolved` method
    argument :email, String, required: true
    argument :password, String, required: true
    argument :password_confirmation, String, required: true

    # return type from the mutation
    type Types::UserType

    def resolve(email: nil, password: nil, password_confirmation: nil)
      User.create!(
        email: email,
        password: password,
        password_confirmation: password_confirmation
      )
    end
  end
end
