class Student < ApplicationRecord
    has_many :enrollments
    has_many :courses, through: :enrollments, dependent: :destroy

    validates :name, presence: true
    validates :age, presence: true
end
