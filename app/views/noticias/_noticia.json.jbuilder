json.extract! noticia, :id, :titulo, :contenido, :created_at, :updated_at
json.url noticia_url(noticia, format: :json)
