import UIKit

enum windowCar {
    case Open
    case Close
}

enum luggageCar {
    case Full
    case Empty
}

enum engineCar {
    case Start
    case Finish
}


class Car {
    var brandCar: String
    var yearRelease: Int
    init(brandCar: String, yearRelease: Int){
        self.brandCar = brandCar
        self.yearRelease = yearRelease
    }
}

class TrunkCar: Car {
    var trunk: luggageCar
    init(brandCar: String, yearRelease: Int, trunk: luggageCar) {
        self.trunk = trunk
        super.init(brandCar: brandCar, yearRelease: yearRelease)
    }
    func trunkState() {
        if trunk == .Full {
            print("Багажник полон")
        } else {
            print("Багажник пуст")
        }
    }
}
class WindowCarSide: Car {
    var windowSide: windowCar
    init(brandCar: String, yearRelease: Int, trunk: luggageCar, windowSide: windowCar ) {
        self.windowSide = windowSide
        super.init(brandCar: brandCar, yearRelease: yearRelease)
    }
    func windowState() {
        if windowSide == .Open {
            print("Окна открыты")
        } else {
            print("Окна закрыты")
        }
    }
}
