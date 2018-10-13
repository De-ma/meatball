struct Minutely: Codable {
    var summary: String?
    var icon: String?
    var data: [MinuteData]?
}

struct MinuteData: Codable {
    var time: Int
    var precipIntensity: Double?
    var precipIntensityError: Double?
    var precipProbability: Double?
    var precipType: String?
}
