class Transfer
  attr_accessor
  attr_reader

  def initialize(sender, receiver, amount)
    @sender
    @receiver
    @status = "pending"
    @amount = amount
  end
end
