import UIKit

enum window {
    case open
    case close
}
enum engine {
    case start
    case stop
}
enum light {
    case on
    case off
}
enum load {
    case isFull
    case isEmpty
}
protocol Car {
    var model: String {get}
    var yearRelease: Int {get}
    var windowState: window {get set}
    var engineState: engine {get set}
}
extension Car {
    mutating func changeEngine(engineState: engine) {
        self.engineState = engineState
    }
    mutating func changeWindow(windowState: window) {
        self.windowState = windowState
    }
}
class sportCar: Car, CustomStringConvertible {
    var model: String
    var yearRelease: Int
    var engineState: engine = .start
    var windowState: window = .close
    var lightState: light = .on
    init(model: String, yearRelease: Int) {
        self.model = model
        self.yearRelease = yearRelease
    }
    var description: String {
        return "Двигатель \(engineState), Окна \(windowState), Подсветка \(lightState), Дата выпуска \(yearRelease)"
    }
}
class trunkCar: Car, CustomStringConvertible {
    var model: String
    var yearRelease: Int
    var engineState: engine = .stop
    var windowState: window = .open
    var loadState: load = .isFull
    init(model: String, yearRelease: Int) {
        self.model = model
        self.yearRelease = yearRelease
    }
    var description: String {
        return "Двигатель \(engineState), Окна \(windowState), Заружен \(loadState), Дата выпуска \(yearRelease)"
    }
}
let audi = sportCar(model: "Ауди", yearRelease: 2020)
let renault = trunkCar(model: "Рено", yearRelease: 2016)
audi.yearRelease
audi.windowState
audi.lightState
print(audi.description)
renault.engineState
renault.windowState
renault.yearRelease
print(renault.description)
