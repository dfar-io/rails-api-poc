class Teacher < ApplicationRecord
    attr_accessor :classes
    validates :name, presence: true
end
