#import "SystemPropertiesPlugin.h"
#if __has_include(<system_properties/system_properties-Swift.h>)
#import <system_properties/system_properties-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "system_properties-Swift.h"
#endif

@implementation SystemPropertiesPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSystemPropertiesPlugin registerWithRegistrar:registrar];
}
@end
