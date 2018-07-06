import Foundation
import Moya

enum WeatherService {
    case getWeather(latitude: String, longitude: String)
}

extension WeatherService: TargetType {
    var baseURL: URL {
        return URL(string: "https://api.darksky.net/forecase/a6682acd877238fd5d632f038320c841/")!
    }
    
    var path: String {
        switch self {
        case let .getWeather(latitude, longitude):
            return("\(latitude),\(longitude)?exclude=minutely,hourly,daily,flags&units=si")
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
