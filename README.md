# Horizontal Check Points

A flutter package to create horizontal check point as in image attached

  - Type some Markdown on the left
  - See HTML in the right
  - Magic


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


