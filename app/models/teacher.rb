class Teacher < ApplicationRecord
    validates :name, presence: true
    validates :subject, presence: true
end
