class Podcast < ApplicationRecord
    validates :name, presence: true
    validates :url, presence: true, uniqueness: true, format: { with: /http:\/\/|https:\/\// }

    has_many :reviews
end
