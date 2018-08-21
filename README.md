# RateMyApp
Display Rate Message after period of time User open the app !

This is a good example on how to use `SKStoreReviewController.requestReview()`

It will counting how many time User did open the app 
and after period of time it will display Rate Message 

## How to use it ?
- Copying and pasting `RateMyApp.swift` to your project
- On `ViewController` that you want to display Rate Message on it write this code
(Don't forget to select after how many time you want the Rate Message to be displayed by giving number to minimumRunCount variable )

```
    override func viewDidLoad() {
        super.viewDidLoad()

   RateMyApp.shared.showReview(minimumRunCount: 5)
        
    }
```

- on `AppDelegate.swift` write this code to make the app count how many time user open the app !
```
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
      
      RateMyApp.shared.incrementAppRuns()
      
        return true
    }
```
