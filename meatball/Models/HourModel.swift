struct Hourly: Codable{
    var summary: String?
    var icon: String?
    var data: [HourlyData]?
}

struct HourlyData: Codable {
    var time: Int
    var summary: String?
    var icon: String?
    var precipIntensity: Double?
    var precipProbability: Double?
    var precipType: Double?
    var temperature: Double?
    var apparentTemperature: Double?
    var dewPoint: Double?
    var humidity: Double?
    var pressure: Double?
    var windSpeed: Double?
    var windGust: Double?
    var windBearing: Int?
    var cloudCover: Double?
    var uvIndex: Int?
    var visibility: Double?
    var ozone: Double?
}

