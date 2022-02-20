// CS 561 Software Engineering Methods
// Pair coding
// Product Owner: Pavan Sai Nallagoni
// Scrum Master: Abhilash Populwar
// Developers: Pavan Sai Nallagoni, Abhilash Populwar, Puja Agarwal, Delyar Tabatabai

import Foundation
import Darwin


let carStereo = Bose()
let engine = Spark()
let checkDoors = doorsValid()
let wipers1 = wipers()
let rainlight1 = rainlight()
let seatbelt1 = seatbelt()
let car = Car(carStereo: carStereo, engine: engine, checkDoors: checkDoors, wipers: wipers1, rainlight: rainlight1, seatbelt: seatbelt1)

car.unlockDoors()
car.start()
car.lockDoors()
car.seatBeltWarningCheck()
car.seatBeltWarningCheck()
car.stereoStarted()
car.wiperFunctionality()
car.rainLightFunctionality()
car.stop()
car.unlockDoors()
car.wiperFunctionality()
car.rainLightFunctionality()
car.stereoStopped()
car.lockDoors()

protocol Drivable {
    func unlockDoors()
    func lockDoors()
    
    func start()
    func stop()
    
    func stereoStarted()
    func stereoStopped()
    
    func wiperFunctionality()
    func rainLightFunctionality()

    func seatBeltWarningCheck()

}

class Car: Drivable {
    let carStereo: CarStereo
    let engine: Engine
    let checkDoors: Doors
    let wipers: Wipers
    let rainlight: rainLight
    let seatbelt: seatBelt
    

    init(carStereo: CarStereo, engine: Engine, checkDoors: Doors, wipers: Wipers, rainlight: rainLight, seatbelt: seatBelt){
        self.carStereo = carStereo
        self.engine = engine
        self.checkDoors = checkDoors
        self.wipers = wipers
        self.rainlight = rainlight
        self.seatbelt = seatbelt
    }
    
    private var areDoorsLocked: Bool = false
    
    func unlockDoors() {
        areDoorsLocked = false
        
        if(areDoorsLocked){
            checkDoors.locked()
        }else{
            checkDoors.unlocked()
        }
    }
    
    func lockDoors() {
        areDoorsLocked = true
        
        if(areDoorsLocked){
            checkDoors.locked()
        }else{
            checkDoors.unlocked()
        }
    }
    
    public var isRaining: Bool = true
    public var seatBeltsLocked: Bool = false
    
    func start() {
        engine.start()
        isRaining = true
    }
    
    func seatBeltWarningCheck(){
        if(!seatBeltsLocked){
            seatbelt.locked()
            seatBeltsLocked = true
        }else{
            seatbelt.unlocked()
        }
    }
    
    func stop() {
        engine.stop()
        isRaining = false
    }
    
    func stereoStarted(){
        carStereo.turnOn()
    }
    
    func stereoStopped(){
        carStereo.turnOff()
    }
    
    func wiperFunctionality() {
        if(isRaining){
            wipers.raining()
        }else{
            wipers.notRaining()
        }
    }
    
    func rainLightFunctionality(){
        if(isRaining){
            rainlight.raining()
        }else{
            rainlight.notRaining()
        }
    }

}

protocol CarStereo{
    func turnOn()
    func turnOff()
}

protocol Engine{
    func start()
    func stop()
}

protocol Doors{
    func locked()
    func unlocked()
}

protocol Wipers{
    func raining()
    func notRaining()
}

protocol rainLight{
    func raining()
    func notRaining()
}

protocol seatBelt{
    func locked()
    func unlocked()
}

class seatbelt:seatBelt{
    func locked() {
        print("Safety: Warning Seat belts are not locked !!!!!!!")
        print("Seat belts Locked")
    }
    func unlocked() {
        print("Safety: OK")
    }
}


class rainlight:rainLight{
    func raining() {
        print("Rain Light On")
    }
    func notRaining() {
        print("Rain Light Off")
    }
}

class wipers:Wipers{
    func raining() {
        print("Corvallis Rain Started Heavily")
        print("Wiper Started")
    }
    func notRaining() {
        print("Corvallis Rain Stopped")
        print("Wiper Stopped")
    }
}

class doorsValid: Doors{
    func locked() {
        print("Doors Locked")
    }
    
    func unlocked() {
        print("Doors Unlocked")
    }
}

class Bose: CarStereo{
    func turnOn() {
        print("Started Stero")
    }
    
    func turnOff() {
        print("Stopped Stero")
    }
}

class Spark: Engine{
    func start(){
        print("Engine Started")
    }
    
    func stop() {
        print("Engine Stopped")
    }
}
