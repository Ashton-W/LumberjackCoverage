#import "AppDelegate.h"
#import "DDLog.h"
#import "DDTTYLogger.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [DDLog addLogger:[DDTTYLogger sharedInstance]];
    
    return YES;
}

@end
