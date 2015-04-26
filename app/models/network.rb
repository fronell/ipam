class Network < ActiveRecord::Base
  has_many :ips, dependent: :destroy
end
