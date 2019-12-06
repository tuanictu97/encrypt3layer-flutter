#import "Encrypt3layerPlugin.h"
#import <encrypt3layer/encrypt3layer-Swift.h>

@implementation Encrypt3layerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftEncrypt3layerPlugin registerWithRegistrar:registrar];
}
@end
