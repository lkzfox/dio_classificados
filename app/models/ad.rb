class Ad < ApplicationRecord
    belongs_to :user, foreign_key: 'id_user'
end
