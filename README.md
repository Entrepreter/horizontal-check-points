# Horizontal Check Points

A flutter package to create horizontal check point as in image attached

<img src="images/check_ss.jpeg" alt="Horizontal Check point SS" width="256">

### Installation

Add the following lines in your pubspec.yaml
```sh
dependencies:
  flutter:
    sdk: flutter
    
  #...
  check_points:
    git:
      url: https://github.com/Entrepreter/horizontal-check-points
      path: packages/check_points
```

### How to use

```sh
CheckPoints(
    checkPoints: [
        "Packing",
         "Removing",
         "Arriving",
         "Delivering",
        ],
    checkedTill: 2,
    )
```


