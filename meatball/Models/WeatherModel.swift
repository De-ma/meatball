
import Foundation

struct WeatherModel: Codable {
    var latitude: Double
    var longitude: Double
    var timezone: String
    var currently: Currently?
    var minutely: Minutely?
    var hourly: Hourly?
    var daily: Daily?
    var flags: Flags?
    var offset: Int?
}

struct Flags: Codable {
    var sources: [String]?
    var nearestStation: Double?
    var units: String?
}
