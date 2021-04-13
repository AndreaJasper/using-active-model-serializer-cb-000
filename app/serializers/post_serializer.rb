class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description

  render json: @post.to_json(only: [:title, :description, :id],
    include: [author: { only: [:name]}])
end
