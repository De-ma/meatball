
import Foundation

struct WeatherModel {
    var latitude: Double
    var longitude: Double
    var timezone: String
    var currently: Currently
    var minutely: Minutely
    var hourly: Hourly
    var daily: Daily
    var flags: Flags
    var offset: Int
}

struct Minutely {
    var summary: String
    var icon: String
    var data: MinuteData
}

struct MinuteData {
    var time: Int
    var precipIntensity: Double
    var precipIntensityError: Double
    var precipProbability: Double
    var precipType: String
}

struct Hourly {
    var summary: String
    var icon: String
    var data: HourlyData
}

struct HourlyData {
    var time: Int
    var summary: String
    var icon: String
    var precipIntensity: Double
    var precipProbability: Double
    var precipType: Double
    var temperature: Double
    var apparentTemperature: Double
    var dewPoint: Double
    var himidity: Double
    var pressure: Double
    var windSpeed: Double
    var windGust: Double
    var windBearing: Int
    var cloudCover: Double
    var uvIndex: Int
    var visibility: Double
    var ozone: Double
}

struct Daily {
    var summary: String
    var icon: String
    var data: DailyData
}

struct DailyData {
    var time: Int
    var summary: String
    var icon: String
    var sunriseTime: Int
    var sunsetTime: Int
    var moonPhase: Double
    var precipIntensity: Double
    var precipIntensityMax: Double
    var precipIntensityMaxTime: Int
    var precipProbability: Double
    var precipType: String
    var temperatureHigh: Double
    var temperatureHighTime: Int
    var temperatureLow: Double
    var temperatureLowTime: Int
    var apparentTemperatureHigh: Double
    var apparentTemperatureHighTime: Int
    var apparentTemperatureLow: Double
    var apparentTemperatureLowTime: Int
    var dewPoint: Double
    var humidity: Double
    var pressure: Double
    var windSpeed: Double
    var windGust: Double
    var windGustTime: Int
    var windBearing: Int
    var cloudCover: Double
    var uvIndex: Int
    var uvIndexTime: Int
    var visibility: Int
    var ozone: Double
    var temperatureMin: Double
    var temperatureMinTime: Int
    var temperatureMax: Double
    var temperatureMaxTime: Int
    var apparentTemperatureMin: Double
    var apparentTemperatureMinTime: Int
    var apparentTemperatureMax: Double
    var apparentTemperatureMaxTime: Int
}

struct Flags {
    var sources: [String]
    var nearestStation: Double
    var units: String
}
