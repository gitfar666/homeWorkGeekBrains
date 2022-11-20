import UIKit

enum EnternetError: Error {
    case pageNotFound
    case internalError(Int, String)
}

class Network {
    static let reponses = [200, 404, 500]
    
    static func request() -> Int {
        return reponses.randomElement()!
    }
}

class NetworkManager {
    func userRequest(text: String) throws -> String {
        let statusCode = Network.request()
        
        guard statusCode != 404 else { throw EnternetError.pageNotFound}
        guard statusCode != 500 else { throw EnternetError.internalError(statusCode, "intenal server error")}
        
        return "picture with \(text)"
    }
}

class Browser {
    let networkManager: NetworkManager
    init(networkMeneger: NetworkManager) {
        self.networkManager = networkMeneger
    }
    func getPage(request: String) {
        do {
            let result = try networkManager.userRequest(text: request)
            print(result)
        } catch EnternetError.pageNotFound {
            print("page not found")
        } catch let EnternetError.internalError(code, reason) {
            print("error with code: \(code), reason: \(reason)")
        } catch {
            print(error.localizedDescription)
        }
    }
}
let networkManager = NetworkManager()
let safari = Browser(networkMeneger: networkManager)
safari.getPage(request: "Car")
safari.getPage(request: "Car")
safari.getPage(request: "Car") 
