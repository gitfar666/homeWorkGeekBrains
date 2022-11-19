import UIKit

enum engineState {
    case isEngineOn
    case IsEngineOff
}
enum lightState {
    case isLightOn
    case isLightOff
}
enum loadState {
    case isFullLoad
    case isEmtyLoad
}


class Car {
    var model: String
    var yearRelease: Int
    var engineOn: String
    var engineOff: String
    
    init(model: String, yearRelease: Int, engineOn: String, engineOff: String) {
        self.model = model
        self.yearRelease = yearRelease
        self.engineOn = engineOn
        self.engineOff = engineOff
    }
    func state(action: engineState) {
        switch action {
        case .isEngineOn:
            engineOn = "Двигатель запущен"
        case .IsEngineOff:
            engineOff = "Двигатель заглушен"
        }
    }
}

class SportCar: Car {
    var lightOn: String
    var lightOff: String
    init(model: String, yearRelease: Int, lightOn: String, lightOff: String) {
        self.lightOn = lightOn
        self.lightOff = lightOff
        super.init(model: model, yearRelease: yearRelease, engineOn: "Двигатель запущен", engineOff: "Двигатель заглушен")
    }
    func state(action: lightState) {
        switch action {
        case .isLightOn:
            lightOn = "Подсветка вкл"
        case .isLightOff:
            lightOff = "Подсветка выкл"
        }
    }
}

class TrunCar: Car {
    var loadFull: String
    var loadEmpty: String
    init(model: String, yearRelease: Int, loadFull: String, loadEmpty: String) {
        self.loadFull = loadFull
        self.loadEmpty = loadEmpty
        super.init(model: model, yearRelease: yearRelease, engineOn: "Двигватель запущен", engineOff: "Двигатель заглушен")
    }
    func state(action: loadState) {
        switch action {
        case .isFullLoad:
            loadFull = "Заполнен грузом"
        case.isEmtyLoad:
            loadEmpty = "Груза нет"
        }
    }
}
let sportCar = SportCar(model: "Audi", yearRelease: 2020, lightOn: "Подсветка вкл", lightOff: "Подсветка выкл")
sportCar.lightOff
sportCar.lightOn
sportCar.engineOn
sportCar.engineOff
let trunkCar = TrunCar(model: "Renault", yearRelease: 2015, loadFull: "Заполнен грузом", loadEmpty: "Груза нет")
trunkCar.loadEmpty
trunkCar.loadFull
trunkCar.engineOn
trunkCar.engineOff
