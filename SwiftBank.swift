// Write your code below 🏦
struct SwiftBank {
    private let password: String

    // balance and depositRate variables
    private var balance: Double = 0
    static let depositBonusRate = 0.01

    // checks for valid password
    private func isValid(_ enteredPassword: String) -> Bool {
        return enteredPassword == password
    }

    private func finalDepositWithBonus(fromInitialDeposit deposit: Double) -> Double {
        return (deposit + deposit * SwiftBank.depositBonusRate)
    }

    // low balance notification
    private func displayLowBalanceMessage() {
      if balance < 100 {
        print("Alert: Your balance is under $100")
      }
    } 

    // for making deposits
    mutating func makeDeposit(amount depositAmount: Double) {
        let depositWithBonus = finalDepositWithBonus(fromInitialDeposit: depositAmount)
        balance += depositWithBonus

        print("Making a deposit of $\(depositAmount) with a bonus rate. The final amount deposited is $\(depositWithBonus).")

        // Check for low balance
        displayLowBalanceMessage()
    }

    // Method to display balance
    mutating func displayBalance(usingPassword password: String) {
        if isValid(password) {
            print("Your current balance is $\(balance)")
        } else {
            print("Error: Invalid password. Cannot retrieve balance.")
            return
        }
    }

    // Method for making Withdrawals
    mutating func makeWithdrawal(ofAmount withdrawalAmount: Double, usingPassword password: String) {
      if !isValid(password) {
        print("Error: Invalid password. Cannot make withdrawal.")
        return
      }

      if withdrawalAmount > balance {
        print("Error: Insufficient funds. Cannot make withdrawal.")
        return
      }

      balance -= withdrawalAmount
      print("Making a $\(withdrawalAmount) withdrawal")
    }

    // Initializer
    init(password: String, initialDeposit: Double) {
        self.password = password
        makeDeposit(amount: initialDeposit)
    }
}

var Will = SwiftBank(password: "123456", initialDeposit: 500)
Will.makeDeposit(amount: 50)
Will.makeWithdrawal(ofAmount: 100, usingPassword: "123456")
Will.displayBalance(usingPassword:"123456")