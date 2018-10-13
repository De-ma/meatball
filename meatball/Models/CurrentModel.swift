struct Currently: Codable {
    var time: Int
    var summary: String?
    var icon: String?
    var nearestStormDistance: Int?
    var nearestStormBearing: Int?
    var precipIntensity: Int?
    var precipProbability: Int?
    var temperature: Double?
    var apparentTemperature: Double?
    var dewPoint: Double?
    var humidity: Double?
    var pressure: Double?
    var windSpeed: Double?
    var windGust: Double?
    var windBearing: Double?
    var cloudCover: Double?
    var uvIndex: Int?
    var ozone: Double?
}

struct Alerts: Codable {
    var title: String?
    var regions: [String]?
    var severity: String?
    var time: Int?
    var expires: Int?
    var description: String?
    var uri: String?
}
