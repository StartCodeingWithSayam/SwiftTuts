import UIKit

var greeting = "Hello, playground"
print(greeting)
// Arrays

var marks:[Int] = [1,2,3,4,5,6,7,8,9,7,7,5,3,4,4,3,]

marks.capacity
marks.append(12)
print(marks)

// Sets

var marksSet:Set<Int> = [1,2,3,4,5,6,7,8,9,10]

marksSet.capacity


// Functuns

func printMyName(name:String) -> Void {
    print(name)
}
printMyName(name: "Sayam")

func add(firstNumber:Int, to secondNumber:Int)->Int {
    return firstNumber+secondNumber//
}

// if/else
var isDarkMode = false
if(isDarkMode){
    printMyName(name:"Sayam")
    isDarkMode = true
}else{
    printMyName(name: "Sayam Sharma")
}


// For loop

// used in array set dict
var allStars = ["Emiway Bantai","Lil wain","Eminum","Raftaar","Bad Boy Badhshah"]

for artists in allStars{
    printMyName(name: artists)
}

var randomInts:[Int] = []
for _ in 0..<24{
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}
print(randomInts)


// Enums

enum Phone{
    case iPhone12,samsung,pixels
}

func getEnumm(on phone:Phone){
    switch(phone){
    case .iPhone12 :
        printMyName(name: "Sayam")
        break
    case .pixels:
        printMyName(name: "Is Best phone")
        
    default:
        printMyName(name: "Hello")
    }
    
}

getEnumm(on: .iPhone12)
 

// options
var age = [1,2,4,2,5,3,1]
age.sort()
print(age)
 // if let
if let oldAge = age.last{
   print("Oldest age is \(oldAge)")
}else{
    print("It's empty.")
}


// nil coalescing

let oldestAge = age.last ?? 122 // here 122 is default value

// guard statement

func getOldestAge(){
    guard let oldAge = age.last else {return}
    print(oldAge)
}
// fource unwrap
let oldstAge = age.last! // can give errors it'd optional


// Self is the current instence of class eg
class Developer{
    private var name:String?
    private var jobTittle:String?
    private var yearExperience:Int?
    
    public init(){}
    
    public init(name:String,jobTittle:String,yearExperience:Int){
        self.name = name
        self.jobTittle = jobTittle
        self.yearExperience = yearExperience
    }
    public func getName()->String?{
        return self.name
    }
    
    public func getJobTittle()->String?{
        return self.jobTittle
    }
    
    public func getYearExp()->Int?{
        return self.yearExperience
    }
    public func setName(name:String){
        self.name = name
    }
    
    public func setJobTittle(jobTittle:String){
        self.jobTittle = jobTittle
    }
    
    public func setYearExp(yearExp:Int){
        self.yearExperience = yearExp
    }
}

let Sayaam = Developer(name: "Sayam", jobTittle: "Android Developer", yearExperience: 5)
let sam = Developer()

// interfaces
class AndroidDev :Developer{
    func favourateFrameWork(framework:String)-> String{
        return "Favourate framework is \(framework)"
    }
    
    override func getName() -> String? {
        return "SAYAM"
    }
}

let manish = AndroidDev()
manish.favourateFrameWork(framework: "Kotltin Mullti Platform.")
print(Sayaam.getName() ?? "sayam is cool")
print(manish.getName() ?? "manish is cool")
// struct
// Refrence type
/**
    Classes are refrence types
 **/
// Value type
/**
    struct are value types
 **/

enum DevType{
    case Android,IOS
}

struct userr{
    let name:String
    var classes:String
    let devType: DevType
}

userr.init(name: "sayamm", classes: "1st", devType: .Android)


// extentionm
extension String{
    func removeWriteSpace()->String{
        return components(separatedBy: .whitespaces).joined()
    }
}

let Hsam = "Sayam Sharma is god "
print(Hsam.removeWriteSpace())
