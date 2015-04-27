class Ip < ActiveRecord::Base
  belongs_to :network
  scope :used,      -> { where occupado: true }
  scope :available, -> { where occupado: false }
end
