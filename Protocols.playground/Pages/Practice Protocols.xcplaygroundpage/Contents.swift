//: [Previous](@previous)

import Foundation

var str = "Hello, playground"


protocol Building {
    func numberOFPeopleInside() -> Int
    
    var numberOfFloors: Int { get }
    var yearBuilt: Int { get }
}


struct OfficeBuilding: Building {
    func numberOFPeopleInside() -> Int {
    }
    
    var numberOfFloors: Int
    var yearBuilt: Int
    
    
    var numberOfEmployees: Int
    var hasSnacksRoom: Bool
}

/*
 /////////////////////
 My practice protocols
 /////////////////////
 */

protocol LowRiderS {
    func numberOfPassengers() -> Int {
    }
    
    var numberOfTires: Int
    var yearBuilt: Int
    var engineSize: Int
    var numberOfSeats: Int
}


struct CustomHarley: LowRiderS {
    func numberOfPassengers() -> Int {
    }
    
    var numberOfTires: Int
    var yearBuilt: Int
    var engineSize: Int
    var numberOfSeats: Int
    
    var paint: String
    var msrp: Int
}






//: [Next](@next)
