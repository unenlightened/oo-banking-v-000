class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name, balance = 1000, status = open)
    @name = name
    @balance = balance
    @statu = status
  end


end
