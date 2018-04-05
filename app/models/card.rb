class Card < ApplicationRecord
  belongs_to :deck_card
  belongs_to :deck
end
