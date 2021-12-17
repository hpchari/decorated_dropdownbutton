Use `decorated_dropdown` button to add DropdownButton with decoration properties like box shadow, border, background color, border radius, gradient background, icons, and many more.

## Features

This package will help you to add decoration on DropdownButton

## Getting started

To start using this package, add the following lines in pubspec.yaml file.
```dart
dependencies:
  decorated_dropdownbutton: ^0.0.1
```
Import package in your script:
```dart
import 'package:decorated_dropdownbutton/decorated_dropdownbutton.dart';
```

## Usage
You can use DecoratedDropdownButton() like below:
```Dart
DecoratedDropdownButton(
    value: "item1",
    items: [ 
        DropdownMenuItem(
            child: Text("Dropdown Item I"), 
            value: "item1"
        ),

        DropdownMenuItem(
            child: Text("Dropdown Item II"), 
            value: "item2"
        )
    ],
    onChanged: (value){
       print("You selected $value");
    },
)
```
Add More Design to `DecoratedDropdownButton()`:

```dart
DecoratedDropdownButton(
    value: "item1",
    items: [ 
        DropdownMenuItem(
            child: Text("Dropdown Item I"), 
            value: "item1"
        ),

        DropdownMenuItem(
            child: Text("Dropdown Item II"), 
            value: "item2"
        )
    ],
    onChanged: (value){
       print("You selected $value");
    },
    color: Colors.orange, //background color
    border: Border.all(color:Colors.redAccent, width: 2), //border 
    borderRadius: BorderRadius.circular(20), //border radius
    style: TextStyle( //text style
        color:Colors.white,
        fontSize: 20
    ),
    icon: Icon(Icons.arrow_downward), //icon
    iconEnableColor: Colors.white, //icon enable color
    dropdownColor: Colors.orange,  //dropdown background color
)
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
