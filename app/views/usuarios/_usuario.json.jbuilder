json.extract! usuario, :id, :username, :password_digest, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
