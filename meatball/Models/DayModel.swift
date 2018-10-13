struct Daily: Codable {
    var summary: String?
    var icon: String?
    var data: [DailyData]?
}

struct DailyData: Codable {
    var time: Int
    var summary: String?
    var icon: String?
    var sunriseTime: Int?
    var sunsetTime: Int?
    var moonPhase: Double?
    var precipIntensity: Double?
    var precipIntensityMax: Double?
    var precipIntensityMaxTime: Int?
    var precipProbability: Double?
    var precipType: String?
    var temperatureHigh: Double?
    var temperatureHighTime: Int?
    var temperatureLow: Double?
    var temperatureLowTime: Int?
    var apparentTemperatureHigh: Double?
    var apparentTemperatureHighTime: Int?
    var apparentTemperatureLow: Double?
    var apparentTemperatureLowTime: Int?
    var dewPoint: Double?
    var humidity: Double?
    var pressure: Double?
    var windSpeed: Double?
    var windGust: Double?
    var windGustTime: Int?
    var windBearing: Int?
    var cloudCover: Double?
    var uvIndex: Int?
    var uvIndexTime: Int?
    var visibility: Int?
    var ozone: Double?
    var temperatureMin: Double?
    var temperatureMinTime: Int?
    var temperatureMax: Double?
    var temperatureMaxTime: Int?
    var apparentTemperatureMin: Double?
    var apparentTemperatureMinTime: Int?
    var apparentTemperatureMax: Double?
    var apparentTemperatureMaxTime: Int?
}
