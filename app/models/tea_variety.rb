class TeaVariety < ApplicationRecord
    has_many :teas, dependent: :destroy
end
