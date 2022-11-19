import UIKit

enum Actions {
    case windowOpen, windowClose
    case baggageIsFull, baggageIsEmpty
    case engineStart, engineFinish
}

struct sportCar {
    let modelCar: String
    let yearRelease: Int
    var isWindowOpen, isWindowClose: String
    var isFullBaggage, isEmptyBaggage: String
    var isEngineStart, isEngineFinish: String
    
    mutating func cange (action: Actions) {
        switch action {
        case .windowOpen:
            isWindowOpen = "Окно открыто"
        case .windowClose:
            isWindowClose = "Оконо закрыто"
        case .baggageIsFull:
            isFullBaggage = "Багажник полон"
        case .baggageIsEmpty:
            isEmptyBaggage = "Багажник пуст"
        case .engineStart:
            isEngineStart = "Двигатель запущен"
        case .engineFinish:
            isEngineFinish = "Двигатель заглушен"
        }
    }
}
let mitsubishi = sportCar(modelCar: "Mitsubushi", yearRelease: 2020, isWindowOpen: "Окно открыто", isWindowClose: "Окно закрыто", isFullBaggage: "Багажник полон", isEmptyBaggage: "Багажник пуст", isEngineStart: "Двигатель запущен", isEngineFinish: "Двигатель заглушен")

mitsubishi.isEngineStart
mitsubishi.isWindowOpen
mitsubishi.isEmptyBaggage
mitsubishi.isFullBaggage
mitsubishi.yearRelease
mitsubishi.isWindowClose
