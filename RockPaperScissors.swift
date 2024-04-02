//function accepting User Input
func getUserChoice(userInput: String) -> String {
  if userInput == "rock" {
    return userInput
  } else if userInput == "paper" {
    return userInput
  } else if userInput == "scissors" {
    return userInput
  } else {
    return "You can only enter rock, paper, or scissors. Try again."
  }
}

//Computer Choice function (.random)
func getComputerChoice() -> String {
  let randomNumber = Int.random(in: 0...2)

  switch randomNumber {
    case 0: 
      return "rock"
    case 1:
      return "paper"
    case 2:
      return "scissors"
    default: 
      return "Something went wrong"
  }
}

//Determine Winner Function 
func determineWinner(_ userChoice: String, _ compChoice: String) -> String {
  var decision = "It's a tie"

  switch userChoice {

    case "rock":
  if compChoice == "paper" {
      decision = "The computer won"
  } else if compChoice == "scissors"{
      decision = "The user won"
  }
    
    case "paper":
  if compChoice == "rock" {
      decision = "The user won"
  } else if compChoice == "scissors"{
      decision = "The computer won"
  }

    case "scissors":
  if compChoice == "rock" {
      decision = "The computer won"
  } else if compChoice == "paper"{
      decision = "The user won"
  }   

    default: 
      return "Something Went Wrong"
  }

  return decision

}

//Calling function
let userChoice = getUserChoice(userInput: "rock")
let compChoice = getComputerChoice()

print("You threw \(userChoice)")
print("The computer threw \(compChoice)")
print(determineWinner(userChoice, compChoice))