class Transfer
  attr_accessor :status, :sender, :receiver
  attr_reader  :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    if valid?
      @sender.balance -= amount
      @reciever.balance += amount
      self.status = "complete"
    end
  end
end
