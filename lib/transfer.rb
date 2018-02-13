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
    if valid? && status == "pending"
      sender.balance -= amount
      receiver.deposit(amount)
      self.status = "complete"
    end
  end
end
