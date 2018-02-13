class BankAccount
  attr_accessor
  attr_reader
  
  def initialize(name, balance = 1000, status = open)
    @name = name
    @balance = balance
    @statu = status
  end
end
