module Types
    class NoteType < Types::BaseObject
      field :id, ID, null: false
      field :title, String, null: false
      field :content, String, null: true
      field :tags, String, null: true
      field :user_id, ID, null: false
    end
end