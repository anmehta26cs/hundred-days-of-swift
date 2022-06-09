import Cocoa
/*
// VARS
var greeting = "Hello, playground"
greeting = "Ciao, playground"
greeting = "Aloha, playground"
// var can be variable, changing
*/

/*
// LETS
let actor = "Ashu"
//actor = "James"
//actor = "Misbah" => will not work because let is constant
let file = "img.jpg"
// prefer using constants over variables
*/

/*
// STRINGS
let movie = """
A day in the
life of an Apple
engineer
"""
// multiline strings
*/

/*
// STRINGS
let nameLength = actor.count
print(nameLength)
print(movie.uppercased())
print(file.hasSuffix(".jpg"))
*/

/*
// INTEGERS
let score = 10
let reallyBig = 100_000_000 // underscores are ignored by swift
var counter = 0
counter += 1
let number = 10
print(number.isMultiple(of: 2))
*/

/*
// DECIMAL/FLOATS
let smallNumber = 0.1 + 0.2
print(smallNumber)
let a = 1
let b = 2.0
print(a + Int(b))
/*
 note that you cannot assign
 different type values to vars
 which have already been assigned
 a different type
 */
*/

/*
 // BOOLEANS
 let goodDogs = true
 let gameOver = false
 var start = true
 start.toggle() // sets variable to opposite boolean
 start = !start
 */

/*
 // STRING INTERPOLATION
 let people = "Haters"
 let action = "hate"
 let lyric = people + " gonna " + action
 let name = "Taylor"
 let age = 26
 let message = "Hello, my name is \(name) and I'm \(age) years old."
 print("5 x 5 is \(5 * 5)")
 */

/*
 // CHECKPOINT ONE
 let celsiusTemp = 27
 let fahrenheitTemp = ((celsiusTemp * 9 / 5) + 32)
 print("If the temperature in celsius is \(celsiusTemp), then the temperature in fahrenheit is \(fahrenheitTemp)")
 */

/*
 // ARRAYS
 var beatles = ["John", "Paul", "George", "Ringo"]
 beatles.append("Ashu")
 let numbers = [1, 2, 3, 4, 5]
 // NOTE: 0-based indexing
 var scores = Array<Int>()
 scores.append(0)
 scores.append(90)
 scores.append(100)
 print(scores.count)
 scores.remove(at: 2)
 scores.removeAll()
 print(scores.contains(-100))
 print(scores.sorted())
 print(scores.reversed())
 */

/*
// DICTIONARIES
let dict = [
    "name":"Taylor Swift",
    "job": "Singer",
    "location":"Nashville",
]
print(dict["name", default: "Unknown"])
print(dict["job"]) // warning comes from optionals

var heights = [String: Int]()
heights["LUV"] = 64
heights["Ashu"] = 68
heights["hasbulla"] = 32
*/

/*
// SETS
var actors = Set([
    "Denzel",
    "Tom",
    "Nicolas",
])

actors.insert("Samuel")
*/

/*
 // ENUMS
 enum Weekday {
     case monday
     case tuesday
     case wednesday
     case thursday
     case friday
 }

 enum Weekend {
     case saturday, sunday
 }

 var workday = Weekday.monday
 workday = Weekday.tuesday

 var otherday = Weekend.saturday
 otherday = .sunday
 */

/*
 // TYPE ANNOTATIONS
 let surname: String = "Lasso"
 let username: String
 username = "ashu"
 var score: Int = 0
 var grade: Double = 4.5
 let isAuthenticated: Bool = true
 var albums: [String] = ["Red", "Fearless"]
 var teams: [String] = [String]() // empty array of strings
 var cities: [String] = [] // also empty array of strings
 var clues = [String]() // also empty array of strings
 var user: [String: String]
 var colors: Set<String>
 // prefer using type inference as much as possible
 */

/*
// CHECKPOINT TWO
let colors = ["red", "blue", "blue", "green"]
print(colors.count)
print(Array(Set(colors)).count)
*/

/*
 // CONDITION CHECKING
 var score = 70
 if score >= 70 {
     print("pass")
 }

 let username = "ashu"

 if username == "ashu" {
     print("continue")
 } else if username.isEmpty {
     print("anonymous")
 }

 // normal boolean comparators such as && and ||
 */

/*
 // SWITCHES
 enum Weekday {
     case monday, tuesday, wednesday, thursday, friday
 }

 let day = Weekday.monday

 switch day {
     case .monday:
         print("ugh")
     case .tuesday:
         print("meh")
     default:
         print("okay")
 }
 */

/*
 // TERNARY OPERATOR
 let hour = 23
 print(hour < 12 ? "It's before noon" : "It's after noon")
 */

/*
 // FOR LOOPS
 let platforms = ["iOS", "macOS", "watchOS", "tvOS"]
 for os in platforms {
     print("Swift works great on \(os)")
 }
 for i in 1...5 {
     print("Counting up to \(i)")
 }
 for i in 1..<5 { // counts up to one less than 5
     print("Counting up to \(i)")
 }
 var lyric = "Haters gonna"
 for _ in 1...5 {
     lyric += " hate"
 }
 print(lyric)
 */

/*
 // WHILE LOOPS (AND RANDOMS)
 var countdown = 10
 while countdown > 0 {
     print("\(countdown)...")
     countdown -= 1
 }
 let id = Int.random(in: 1...1000)
 */

/*
 // CONTINUES AND BREAKS
 let filenames = ["me.jpg", "work.txt", "dog.jpg", "logo.pdf"]
 for filename in filenames {
     if filename.hasSuffix(".jpg") {
         continue // skips past current iteration
     }
 }

 for filename in filenames {
     if filename.hasSuffix(".txt") {
         break // skips past all future iteration
     }
 }
 */

/*
 // CHECKPOINT THREE
 for i in 1...100 {
     if (i.isMultiple(of: 3) && i.isMultiple(of: 5)) {
         print("FizzBuzz")
     } else if (i.isMultiple(of: 3)) {
         print ("Fizz")
     } else if (i.isMultiple(of: 5)) {
         print ("Buzz")
     } else {
         print(i)
     }
 }
 */

/*
 // FUNCTIONS
 func printTimesTables(number: Int, end: Int) {
     for i in 1...end {
         print("\(i) x \(number) is \(i * number)")
     }
 }

 printTimesTables(number: 5, end: 20)
 */

/*
 // RETURN FUNCTIONS
 func rollDice() -> Int {
    return Int.random(in: 1...6)
 }
 */

/*
 // RETURN MULTIPLE VALUES
 func getUser() -> (firstName: String, lastName: String) {
     return (firstName: "Taylor", lastName: "Swift")
 }

 let user = getUser()
 print("Name: \(user.firstName) \(user.lastName)")
 let (firstName, lastName) = getUser() // destructuring
 print("Name: \(firstName) \(lastName)")
 */

/*
 // CUSTOMIZING PARAMETER LABELS
 // can add custom external parameter names, or use _ to skip one
 func isUppercase(_ string: String) -> Bool {
     string == string.uppercased()
 }

 let string = "HELLO WORLD"
 let result = isUppercase(string) // no need to specify type String: string

 func printTimesTable(number: Int) { // use for number: Int instead to include external and internal parameter name
     for i in 1...12 {
         print("\(i) x \(number) is \(i * number)")
     }
 }

 printTimesTable(number: 5)
 */

/*
 // DEFAULT FUNCTION PARAMETERS
 func printTimesTables(for number: Int, end: Int = 12) {
     for i in 1...end {
         print("\(i) x \(number) is \(i * number)")
     }
 }

 printTimesTables(for: 5)
 */

/*
 // ERROR HANDLING
 // create new enum that builds on top of Swift's existing error type
 enum PasswordError: Error {
     case short, obvious
 }
 // if function throws errors, must specify explicity in header
 func checkPassword(_ password: String) throws -> String {
     if password.count < 5 {
         throw PasswordError.short
     }

     if password == "12345" {
         throw PasswordError.obvious
     }

     if password.count < 8 {
         return "OK"
     } else if password.count < 10 {
         return "Good"
     } else {
         return "Excellent"
     }
 }

 let string = "12345"
 // specify try keyword if function can return error
 // try goes inside of do
 // catch can test certain cases
 do {
     let result = try checkPassword(string)
     print("Password rating: \(result)")
 } catch PasswordError.short {
     print("Please use a longer password.")
 } catch PasswordError.obvious {
     print("I have the same combination on my luggage!")
 } catch {
     print("There was an error.")
 }
 */

/*
 // CHECKPOINT FOUR
 enum SqrtError: Error {
     case tooSmall, tooLarge, noRoot
 }

 func isInBounds(_ number: Int) throws -> Int {
     if number < 1 {
         throw SqrtError.tooSmall
     } else if number > 10_000 {
         throw SqrtError.tooLarge
     } else {
         return number;
     }
 }

 func mySqrt(_ number: Int) -> Int {
     do {
         let number = try isInBounds(number)
         for i in 1...100 {
             if i * i == number {
                 return i
             }
         }
         print("\(number) has no integer square root")
     } catch {
         print("\(number) is out of bounds")
     }
     return -1
 }

 mySqrt(256)
 */

/*
 // CLOSURES
 let sayHello = {
     print("Hi there!")
 }

 let sayGoodbye  = { (name: String) -> String in
         "Goodbye \(name)!"
 }

 func greetUser(who person: String) -> String  {
     return "Hello \(person)"
 }

 var greetCopy: (String) -> String = greetUser
 let greeting = greetCopy("sir")
 print(greeting)

 sayHello()

 let team = ["a", "z", "e", "g", "u"]
 let sortedTeam = team.sorted()
 print(sortedTeam)

 func captainFirstSorted(name1: String, name2: String) -> Bool {
     if name1 == "z"{
         return true

     }
     else if name2 == "z" {
         return false
     }
     
     return name1 < name2
 }
 // as a function
 // let captainFirstTeam = team.sorted(by: captainFirstSorted)
 // print(captainFirstTeam)

 // as a closure
 let captainFirstTeam = team.sorted(by: {(name1: String, name2: String) -> Bool in
     if name1 == "z"{
         return true

     }
     else if name2 == "z" {
         return false
     }
     
     return name1 < name2
 })
 print(captainFirstTeam)
 */

/*
 // REDUCING COMPLEXITY OF CLOSURES
 let team = ["a", "z", "e", "g", "u"]
 let captainFirstTeam = team.sorted { a, b in
     if a == "z"{
         return true

     }
     else if a == "z" {
         return false
     }
     
     return a < b
 }
 let reverseTeam = team.sorted {$0 > $1}
 let aOnly = team.filter { $0.hasPrefix("a")}
 let uppercasedTeam = team.map { $0.uppercased()}
 print(captainFirstTeam)
 print(reverseTeam)
 print(aOnly)
 print(uppercasedTeam)
 */

/*
 // ACCEPTING FUNCTIONS AS PARAMETERS
 func generateNumber() -> Int {
     Int.random(in: 1...20)
 }
 func makeArray(size: Int, using generator: () -> Int) -> [Int] {
     var numbers = [Int]()
     
     for _ in 0..<size {
         let newNumber = generator()
         numbers.append(newNumber)
     }
     
     return numbers
 }

 func doImportantWork(first: () -> Void, second: () -> Void) {
     print("About to start first work")
     first()
     print("About to start second work")
     second()
 }

 doImportantWork {
     print("This is the first work")
 } second: {
     print("This is the second work")
 }
 */

/*
 // CHECKPOINT FIVE
 let luckyNumbers = [7, 4, 38, 31, 16, 15, 12, 33, 31, 49]

 func checkpointFive(_ numbers: [Int]) -> Void {
     let evens = numbers.filter {$0 % 2 != 0}
     let ascending = evens.sorted {$0 < $1}
     for number in ascending {
         print("\(number) is a lucky number")
     }
 }

 checkpointFive(luckyNumbers)
 */

/*
 // STRUCTS
 struct Album {
     let title: String
     let artist: String
     let year: Int
     
     func printSummary() { // prefix with mutating keyword if write
         print("\(title) (\(year)) by \(artist)")
     }
 }

 let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
 print(red.artist)
 print(red.printSummary())
 */

/*
 // COMPUTING PROPERTY VALUES DYNAMICALLY
 struct Employee {
     let name: String
     var vacationAllocated: Int
     var vacationTaken = 0
     
     // dynamic calcuation of vacation remaining
     var vacationRemaining: Int {
         get {
             vacationAllocated - vacationTaken
         }
         
         set {
             // newValue is autocreated var by swift, whatever newVal provided
             vacationAllocated = vacationTaken + newValue
         }
         
     }
 }

 var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
 archer.vacationTaken += 4
 archer.vacationRemaining = 5
 print(archer.vacationAllocated)
 */

/*
 // TAKE ACTION WHEN PROPERTY CHANGES
 struct Game {
     var score = 0 {
         didSet {
             print("Score is now \(score)")
         }
     }
 }

 var game = Game()
 game.score += 10
 game.score += 3
 game.score += 1

 struct App {
     var contacts = [String]() {
         willSet {
             print("Current value is: \(contacts)")
             print("New value will be: \(newValue)")
         }
         didSet {
             print("There are now \(contacts.count) contacts")
             print("Old value was: \(oldValue)")
         }
     }
 }

 var app = App()
 app.contacts.append("Adrian E")
 app.contacts.append("Allen W")
 app.contacts.append("Ish S")
 */

/*
 // CREATING CUSTOM INITIALIZERS
 struct Player {
     let name: String
     let number: Int
     
 //    init(name: String, number: Int) {
 //        self.name = name
 //        self.number = number
 //    }
     
     init (name: String) {
         self.name = name
         number = Int.random(in: 1...99)
     }
 }
 */
 
/*
 // LIMIT ACCESS TO INTERNAL DATA USING ACCESS CONTROL
 struct BankAccount {
     // make funds private (access control)
     // also fileprivate and public
     // private(set) - let anyone read but only my methods write
     private(set) var funds = 0
     
     mutating func deposit(amount: Int) {
         funds += amount
     }
     
     mutating func withdraw(amount: Int) -> Bool {
         if funds > amount {
             funds -= amount
             return true
         } else {
             return false
         }
     }
 }

 var account = BankAccount()
 let success = account.withdraw(amount: 200)

 if success {
     print("Withdrew money successfully")
 } else {
     print("No")
 }

 let f = account.funds
 */

/*
 // STATIC PROPERTIES AND METHODS
 // static cant access non-static but non-static can access static
 struct School {
     // static same throughout all instances of struct
     static var studentCount = 0
     
     static func add(student: String) {
         print("\(student) joined the school.")
         studentCount += 1
     }
 }
 // self: 55, "y", true
 // Self: Int, String, Bool
 */

/*
 // CHECKPOINT SIX
 struct Car {
     let model: String
     let numSeats: Int
     private(set) var curGear: Int
     
     init(model: String, numSeats: Int) {
         self.model = model
         self.numSeats = numSeats
         self.curGear = 5
     }
     
     mutating func changeGear(change: Int) -> Bool {
         let newGear = curGear + change
         if (0 < newGear && newGear <= 10) {
             curGear = newGear
             return true
         } else {
             return false
         }
     }
     
 }

 var myCar = Car(model: "2007 Toyota Sienna", numSeats: 8)
 myCar.changeGear(change: -10)
 print(myCar.curGear)
 */

/*
 // CREATE YOUR OWN CLASSES, INHERITANCE, INITIALIZERS, COPYING
 class Employee {
     var hours: Int
     
     init(hours: Int) {
         self.hours = hours
     }
     
     func copy() -> Employee {
         let e = Employee(hours: hours)
         return e
     }
     
     func printSummary() {
         print("I work \(hours) hours a day.")
     }
 }

 final class Developer: Employee {
     let isSenior: Bool
     
     init(isSenior: Bool, hours: Int) {
         self.isSenior = isSenior
         super.init(hours: hours)
     }
     
     override func printSummary() {
         print("I code \(hours) hours a day.")
     }
     func work() {
         print("I'm writing code for \(hours) hours.")
     }
 }

 class Manager: Employee {
     func work() {
         print("I'm going to meetings for \(hours) hours.")
     }
 }

 //let robert = Developer(isSenior: true, hours: 8)
 //let joseph = Manager(hours: 10)
 //
 //robert.work()
 //joseph.work()
 //
 //robert.printSummary()
 //joseph.printSummary()

 var e1 = Employee(hours: 8)
 var e2 = e1

 e2.hours -= 2
 print(e1.hours)
 e1.hours += 2

 e2 = e1.copy()
 e2.hours -= 2
 print(e1.hours)
 */

/*
 // DEINITIALIZERS
 class User {
     let id: Int
     
     init(id: Int) {
         self.id = id
         print("User \(id): I'm alive!")
     }
     
     deinit {
         print("User \(id): I'm dead!")
     }
 }

 for i in 1...3 {
     let user = User(id: i)
     print ("User \(user.id): I'm in control!")
 }

 var users = [User]()

 for i in 1...3 {
     let user = User(id: i)
     print("User \(user.id): I'm in control!")
     users.append(user)
 }

 print("Loop is finished!")
 users.removeAll()
 print("Array is clear!")
 */

/*
 // WORKING WITH VARIABLES INSIDE CLASSES
 class User {
     var name = "Paul"
 }

 //let user = User() // even though we are changing data inside, class, class itself is constant

 var user = User()

 user.name = "Taylor"
 print(user.name)

 user = User()
 print(user.name)
 */

/*
 // CHECKPOINT SEVEN
 class Animal {
     let legs: Int
     
     init(legs: Int) {
         self.legs = legs
     }
     
 }

 class Dog: Animal {
     
     init() {
         super.init(legs: 4)
     }
     
     func speak() {
         print("Woof woof")
     }
 }

 class Corgi: Dog {
     
     override func speak() {
         print("Corgi")
         super.speak()
     }
 }

 class Poodle: Dog {
     
     override func speak() {
         print("Poodle")
         super.speak()
     }
 }
 let a = Animal(legs: 4)
 print("\(a.legs) legs")
 let d = Dog()
 d.speak()
 let p = Poodle()
 p.speak()
 let c = Corgi()
 c.speak()
 */

/*
  // PROTOCOLS
  // Basically a Java Interface
 protocol Vehicle {
     var name: String { get }
     var currentPassengers: Int { get set }
     func estimateTime(for distance: Int) -> Int
     func travel(distance: Int)
     
 }

 struct Car: Vehicle {
     var name: String
     
     var currentPassengers: Int
     
     func estimateTime(for distance: Int) -> Int {
         distance / 50
     }
     
     func travel(distance: Int) {
         print("I'm driving \(distance)km.")
     }
     
     func openSunroof() {
         print("It's a nice day")
     }
     
 }

 func commute(distance: Int, using vehicle: Vehicle) {
     if vehicle.estimateTime(for: distance) > 100 {
         print("too slow")
     } else {
         vehicle.travel(distance: distance)
     }
 }

 let car = Car(name: "myCar", currentPassengers: 1)
 commute(distance: 100, using: car)
 */

/*
 // OPAQUE RETURN TYPES
 // look at Equatable PROTOCOL
 func getRandomNumber() -> some Equatable {
 //    Double.random(in: 1...6)
     Int.random(in: 1...6)
 }

 func getRandomBool() -> some Equatable {
     Bool.random()
 }

 // conform to Equatable standards (allows us to use ==)
 print(getRandomNumber() == getRandomNumber())

 // reserve the right to keep code flexible internally,
 // return a different type
 */

/*
 // CREATING AND USING EXTENSIONS
 var quote = "   The truth is rarely pure and never simple   "
 //let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

 extension String {
     
     
     
     func trimmed() -> String {
         self.trimmingCharacters(in: .whitespacesAndNewlines)
     }
     
     mutating func trim() {
         self = self.trimmed()
     }
     
     var lines: [String] {
         self.components(separatedBy: .newlines)
     }
 }
 let trimmed = quote.trimmed()

 // extension has several benefits including code completion, organization, internal access,
 quote.trim()
 let lyrics = """
 line 1
 line 2
 line 3
 """
 print(lyrics.lines.count)
 */

/*
 // CREATING AND USING PROTOCOL EXTENSIONS
 //extension Array {
 //    var isNotEmpty: Bool {
 //        isEmpty == false
 //    }
 //}
 let guests = ["Mario", "Luigi", "Peach"]


 extension Collection {
     var isNotEmpty: Bool {
         isEmpty == false
     }
 }

 if guests.isNotEmpty {
     print("Guest count: \(guests.count)")
 }

 protocol Person {
     var name: String {get}
     func sayHello()
 }

 extension Person {
     func sayHello() {
         print("Hi, I'm \(name)")
     }
 }

 struct Employee: Person {
     let name: String
 }

 let taylor = Employee(name: "Taylor Swift")
 taylor.sayHello()
 */

/*
 // MORE PROTOCOL EXTENSIONS
 extension Numeric {
     func squared() -> Self {
         self * self
     }
 }

 let integer = 5
 print(integer.squared())
 let double = 3.7
 print(double.squared())

 struct User: Equatable, Comparable {
     static func < (lhs: User, rhs: User) -> Bool {
         lhs.name < rhs.name
     }
     
     let name: String
 }

 let user1 = User(name: "Link")
 let user2 = User(name: "Zelda")
 print(user1 == user2)
 print(user1 != user2)
 print(user1 < user2)
 print(user1 >= user2)
 */

/*
 // CHECKPOINT EIGHT
 protocol Building {
     var rooms: Int { get }
     var cost: Int { get set }
     var estateAgent: String { get }
     
     func summary()
 }

 extension Building {
     func summary() {
         print("Rooms: \(self.rooms) Cost: \(self.cost) Agent: \(self.estateAgent)")
     }
 }
 */

/*
 // OPTIONALS AND NILS
 let opposites = ["Mario":"Wario", "Luigi":"Waluigi"]
 let peachOpposite = opposites["Peach"]
 //print(peachOpposite)
 if let marioOpposite = opposites["Mario"] {
     print("Mario's opposite is \(marioOpposite)")
 }

 func square(number: Int) -> Int {
     number * number
 }

 var str3: String? = nil
 var number: Int? = nil
 if let unwrappedNumber = number {
     print(square(number: unwrappedNumber))
 }
 //print(square(number: number))
 */

/*
 // UNWRAPPING OPTIONALS WITH GUARD AND NIL COALESCING
 func printSquare(of number: Int?) {
     guard let number = number else {
         // Run if myVar doesn't have a value inside
         print("Missing input")
         return
     }
     print("\(number) x \(number) is \(number * number)")
 }

 let captains = [
     "Enterprise" : "Picard",
     "Voyager":"Janeway",
     "Defiant":"Sisko"
 ]

 let new = captains["Serenity"] ?? "N/A"
 */

/*
 // OPTIONAL CHAINING
 let names = ["Arya", "Bran", "Robb", "Sansa"]
 let chosen = names.randomElement()?.uppercased() ?? "No one"
 print("Next in line: \(chosen)")

 struct Book {
     let title: String
     let author: String?
     
 }

 var book: Book? = nil
 let author = book?.author?.first?.uppercased() ?? "A"

 print(author)
 */

/*
 // HANDLING FUNCTION FAILURE WITH OPTIONALS
 enum UserError: Error {
     case badID, networkFailed
 }

 func getUser(id: Int) throws -> String {
     throw UserError.networkFailed
 }

 if let user = try? getUser(id: 23) {
     print ("User: \(user)")
 }

 let user = (try? getUser(id: 23)) ?? "Anonymous"
 print(user)
 */


/*
 // CHECKPOINT NINE
 func nine(of arr: [Int]?) -> Int? {
     guard let arr = arr else {
         return Int.random(in: 1...100)
     }
     return arr.randomElement()
 }
 */


