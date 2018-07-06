import UIKit
import CoreLocation
import Moya

class ViewController: UIViewController {

    @IBOutlet weak var latLabel: UILabel!
    @IBOutlet weak var longLabel: UILabel!

    var currentLocation: CLLocation?
    let locationManager = CLLocationManager()

    var latitude: String?
    var longitude: String?

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
            latitude = "\(currentLocation?.coordinate.latitude)"
            longitude = "\(currentLocation?.coordinate.longitude)"
            getTemperature()
        }
    }

    func getTemperature() {
        let WeatherServiceProvider = MoyaProvider<WeatherService>()
        WeatherServiceProvider.request(.getWeather(latitude: latitude!, longitude: longitude!)) { result in
            print(result.value)
        }
    }
}

