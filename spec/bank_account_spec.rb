require_relative '../bank_account'

describe "Bank account" do
  it "prints out new account" do
    a_new_account = "date || credit || balance"
    bank_account = BankAccount.new

    print_out = bank_account.balance

    expect(print_out).to eq(a_new_account)
  end

  it 'prints out a deposit' do
    an_account_with_a_deposit = "date || credit || balance\n01/04/2014 || 1000.00 || 1000.00"
    bank_account = BankAccount.new

    bank_account.deposit('01/04/2014', 1000.00)

    print_out = bank_account.balance
    expect(print_out).to eq(an_account_with_a_deposit)
  end

  it 'prints out deposits' do
    an_account_with_deposits = "date || credit || balance\n02/04/2014 || 500.00 || 1500.00\n01/04/2014 || 1000.00 || 1000.00"
    bank_account = BankAccount.new

    bank_account.deposit('01/04/2014', 1000.00)
    bank_account.deposit('02/04/2014', 500.00)

    print_out = bank_account.balance
    expect(print_out).to eq(an_account_with_deposits)
  end
end
