class BankAccount
  HEADER = "date || credit || balance"

  def initialize
    @deposits = ""
    @balance = 0
  end

  def deposit(date, amount)
    @balance += amount
    credit = format(amount)
    balance = format(@balance)

    @deposits.prepend("\n#{date} || #{credit} || #{balance}")
  end

  def balance
    HEADER + @deposits.to_s
  end

  private

  def format(amount)
    '%.2f' % amount
  end
end
