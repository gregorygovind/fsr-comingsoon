class AuthConstraint
  def matches?(request)
    request.cookies['remember_token'].present?
  end
end
