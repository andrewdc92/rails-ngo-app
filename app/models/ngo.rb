class Ngo < ApplicationRecord
  extend FriendlyId
 friendly_id :name, use: :slugged
end
