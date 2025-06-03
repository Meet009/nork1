class Comment < ApplicationRecord
  belongs_to :about
  broadcasts_to :about
end
