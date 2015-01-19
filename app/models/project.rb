class Project < ActiveRecord::Base

belongs_to :user
has_many :tasks
 validates :name, length: {
    minimum: 3,
    maximum: 40,
    too_short: "must have at least %{count} characters",
    too_long: "must have at most %{count} characters"
       }
end
