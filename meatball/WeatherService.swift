import Foundation
import Moya

enum WeatherService {
    case getWeather(latitude: Double, longitude: Double)
}

extension WeatherService: TargetType {
    var baseURL: URL {
        return URL(string: "https://api.darksky.net/forecast/a21726f08d55c921fa9c1c51f726ff59/")!
    }
    
    var path: String {
        switch self {
        case let .getWeather(latitude, longitude):
            return("\(latitude),\(longitude)")
        }
    }
    
    var method: Moya.Method {
        return .get
    }
    
    var sampleData: Data {
        var something: Data
        something = try! JSONEncoder().encode("uh")
        return something
    }
    
    var task: Moya.Task {
        return .requestPlain
    }
    
    var headers: [String : String]? {
        return [:]
    }
    
    
}
