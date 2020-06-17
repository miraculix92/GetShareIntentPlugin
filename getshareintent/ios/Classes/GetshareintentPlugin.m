#import "GetshareintentPlugin.h"
#if __has_include(<getshareintent/getshareintent-Swift.h>)
#import <getshareintent/getshareintent-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "getshareintent-Swift.h"
#endif

@implementation GetshareintentPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGetshareintentPlugin registerWithRegistrar:registrar];
}
@end
