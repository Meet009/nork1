class About < ApplicationRecord
    has_rich_text :body
    belongs_to :user

    has_many :comments
    has_many :experiences
    has_many :skills
    has_many :certficates
    has_many :awards
    has_many :projects

    accepts_nested_attributes_for :experiences
    accepts_nested_attributes_for :skills
end
