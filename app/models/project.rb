class Project < ActiveRecord::Base
  has_many :tutorials, dependent: :destroy
end
