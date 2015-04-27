class Network < ActiveRecord::Base
  has_many :ips, dependent: :destroy

  # Instance methods
  def gimme_ips(amount)
    # Return ips only associated with the network itself
    self.ips.where(occupado: false).limit(amount)
  end
end
