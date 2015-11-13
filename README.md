[日本語](README_jp.md)

# Load XIB Dynamically (LXD) iOS

LXD is a simple library for loading xib dynamically.

# Demo

![demo.gif](Document/demo.gif)

# Install

pod 'LoadXIBDynamically', git: 'https://github.com/hmuronaka/LoadXIBDynamically.git'

# Prepare

```obj-c

// AppDelegate.m

#import "UIApplication+LoadXIBDynamically.h"

@interface AppDelegate ()
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [[UIApplication sharedApplication] lx_setupWebDAVServer];
  return YES;
}
```

```obj-c

#import "LXDViewController.h" // <-- add
@interface ViewController: LXDViewController <-- change from UIViewController to LXDViewController

```

or

```obj-c

#import "UIViewController+LoadXIBDynamically.h"

@interface ViewController: UIViewController
@end

@implementation ViewController

-(void)loadView { // <-- add
  if(![self lx_loadView]) {
    [super loadView];
  }
}

@end

```

# Usage

1: You edit a xib file from Xcode

2: You upload a xib file to your app using ibtool and curl.

```bash

$ > ibtool MyViewController.xib --compile MyViewController.xib.lxd # The compiled file's suffix must be .xib.lxd.
$ > curl -T MyViewController.xib.lxd http://your iOS ipaddress:8080/

```

3: You reload a view controller on the app.



# LICENSE

MIT LICENSE
