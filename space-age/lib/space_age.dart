extension Ex on double {
  double toPercision(int n) => double.parse(toStringAsFixed(n));
}

class SpaceAge {
  double age({String? planet, int? seconds}) {
    final double _secondsInYear = 365.25 * 24 * 60 * 60;
    double age = seconds! / _secondsInYear;

    switch (planet) {
      case "Mercury":
        age /= 0.2408467;
        break;
      case "Venus":
        age /= 0.61519726;
        break;
      case "Earth":
        break;
      case "Mars":
        age /= 1.8808158;
        break;
      case "Jupiter":
        age /= 11.862615;
        break;
      case "Saturn":
        age /= 29.447498;
        break;
      case "Uranus":
        age /= 84.016846;
        break;
      case "Neptune":
        age /= 164.79132;
        break;
      default:
        throw ArgumentError("Invalid planet name");
    }

    return age.toPercision(2);
  }
}
