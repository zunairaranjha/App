module Types
  class MutationType < Types::BaseObject
   field :login,Types::UserType, null: false do
    argument :email, String, required: true
    argument :password, String, required: true
   end

   def login(email:, password:)
    user= User.find_by(email: email)
    if user&.authenticate(password)
      user.token = user.to_sgid(expires_in: 12.hours, for:'graphql')
      user
    else
      raise GraphQL::ExecutionError.new("Invalid email or password")
    end
  end
field :register, Types::UserType, null: false do
argument :email, String, required: true
argument :password, String, required: true
end

def register(**args)
  user= User.new(args)
  if user.save
    user
  else
    raise GraphQL::ExecutionError.new("Register Failed!")
  end
end

end
end
