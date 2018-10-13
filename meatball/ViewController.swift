import UIKit
import CoreLocation
import Moya

class ViewController: UIViewController {

    @IBOutlet weak var latLabel: UILabel!
    @IBOutlet weak var longLabel: UILabel!
    @IBOutlet weak var currentWeather: UILabel!


    var currentLocation: CLLocation?
    let locationManager = CLLocationManager()

    var latitude: Double?
    var longitude: Double?

    override func viewDidLoad() {
        super.viewDidLoad()
        startReceivingVisitChanges()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func startReceivingVisitChanges() {
        locationManager.requestWhenInUseAuthorization()

        if (CLLocationManager.authorizationStatus() == .authorizedAlways || CLLocationManager.authorizationStatus() == .authorizedWhenInUse) {
            currentLocation = locationManager.location
            latitude = currentLocation?.coordinate.latitude
            longitude = currentLocation?.coordinate.longitude
            print(latitude)
            print(longitude)
            getTemperature()
        }
    }

    func getTemperature() {
        let WeatherServiceProvider = MoyaProvider<WeatherService>()
        if let lat = latitude, let long = longitude {
            WeatherServiceProvider.request(.getWeather(latitude: lat, longitude: long)) { result in
                do {
                    let decoder = JSONDecoder()
                    let data = try decoder.decode(WeatherModel.self, from: (result.value?.data)!)
                    print(data)
                } catch let err {
                    print("Err", err)
                }
            }
        }
    }
}
