class Enrollment < ApplicationRecord
  belongs_to :student, dependent: :destroy
  belongs_to :course, dependent: :destroy
end
