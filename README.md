![Placeholder](https://user-images.githubusercontent.com/13930558/28310017-c3f8c296-6bb3-11e7-9572-83f99515149e.png)

[![Build Status](https://travis-ci.org/incetro/Message.svg?branch=master)](https://travis-ci.org/incetro/Message)
[![CocoaPods](https://img.shields.io/cocoapods/v/Message.svg)](https://img.shields.io/cocoapods/v/Message.svg)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![GitHub license](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/incetro/Message/master/LICENSE.md)
[![Platforms](https://img.shields.io/cocoapods/p/Message.svg)](https://cocoapods.org/pods/Message)

Message is a framework written in Swift that makes it easy for you to show your informational messages

- [Features](#features)
- [Usage](#usage)
- [Requirements](#requirements)
- [Communication](#communication)
- [Installation](#installation)
- [Author](#author)
- [License](#license)

## Features
- [x] Standard alert with text fields and buttons
- [x] Standard action sheet with buttons
- [x] Delegation
- [ ] Dropdown message

## Usage
### Simple Alert
```swift
Alert(withTitle: "Title", message: "Your message").addTextField { textField in
                
    textField.placeholder = "Placeholder"
}
            
.addButton(withTitle: "Ok")
            
.addCancelButton(withTitle: "Close")
            
.show()
```
### Simple ActionSheet
```swift
ActionSheet(withTitle: "Title", message: "Your message")
            
.addButton(withTitle: "Ok")
            
.addCancelButton(withTitle: "Cancel")
            
.addDestructiveButton(withTitle: "Destructive")
            
.show()
```
### Using delegate
```swift
class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        Alert(withTitle: "Title", message: "Your message").addTextField { textField in
                
            textField.placeholder = "Placeholder"
        }
            
        .addButton(withTitle: "Ok")
            
        .addCancelButton(withTitle: "Close")
            
        .show(withDelegate: self)
    }
}

extension ViewController: AlertDelegate {
    
    func willShow(_ alert: AlertProtocol) {
           
    }
    
    func didShow(_ alert: AlertProtocol) {
        
    }
    
    func willDisappear(_ alert: AlertProtocol) {
        
    }
    
    func didDisappear(_ alert: AlertProtocol) {
        
    }
}
```
### Advanced usage
```swift
Alert(withMessage: "Message").addButton(withTitle: "Ok").show(after: 1.0)
        
Alert(withMessage: "Message").show(andCloseAfter: 2.0)
        
Alert(withMessage: "Message").show(after: 1.0, andCloseAfter: 2.0)
```
## Requirements
- iOS 8.0+
- Xcode 8.1, 8.2, 8.3, and 9.0
- Swift 3.0, 3.1, 3.2, and 4.0

## Communication

- If you **found a bug**, open an issue.
- If you **have a feature request**, open an issue.
- If you **want to contribute**, submit a pull request.

## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate Message into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
use_frameworks!

target "<Your Target Name>" do
    pod "Message"
end
```

Then, run the following command:

```bash
$ pod install
```

### Manually

If you prefer not to use any dependency managers, you can integrate Message into your project manually.

#### Embedded Framework

- Open up Terminal, `cd` into your top-level project directory, and run the following command "if" your project is not initialized as a git repository:

  ```bash
  $ git init
  ```

- Add Message as a git [submodule](http://git-scm.com/docs/git-submodule) by running the following command:

  ```bash
  $ git submodule add https://github.com/incetro/Message.git
  ```

- Open the new `Message` folder, and drag the `Message.xcodeproj` into the Project Navigator of your application's Xcode project.

    > It should appear nested underneath your application's blue project icon. Whether it is above or below all the other Xcode groups does not matter.

- Select the `Message.xcodeproj` in the Project Navigator and verify the deployment target matches that of your application target.
- Next, select your application project in the Project Navigator (blue project icon) to navigate to the target configuration window and select the application target under the "Targets" heading in the sidebar.
- In the tab bar at the top of that window, open the "General" panel.
- Click on the `+` button under the "Embedded Binaries" section.
- You will see two different `Message.xcodeproj` folders each with two different versions of the `Message.framework` nested inside a `Products` folder.

    > It does not matter which `Products` folder you choose from, but it does matter whether you choose the top or bottom `Message.framework`.

- Select the top `Message.framework` for iOS.

- And that's it!

  > The `Message.framework` is automagically added as a target dependency, linked framework and embedded framework in a copy files build phase which is all you need to build on the simulator and a device.
  
## Author

incetro, incetro@ya.ru

## License

Message is available under the MIT license. See the LICENSE file for more info.
