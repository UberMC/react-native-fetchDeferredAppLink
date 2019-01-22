#import "FBAppLink.h"
#import "React/RCTLog.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <FBSDKShareKit/FBSDKShareKit.h>
#import "React/RCTLog.h"

@implementation FBAppLink{
  NSURL *appLinkUrl;
}
// This RCT (React) "macro" exposes the current module to JavaScript
RCT_EXPORT_MODULE();

RCT_REMAP_METHOD(get,
                 resolver:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject)
{
  dispatch_async(dispatch_get_main_queue(), ^{
    [FBSDKAppLinkUtility fetchDeferredAppLink:^(NSURL *url, NSError *error) {
      if (error) {
        RCTLogInfo(@"FBAppLink Received error while fetching deferred app link %@", error);
      }
      if (url) {
        self->appLinkUrl = url;
        [[UIApplication sharedApplication] openURL:url];
        NSString* volumeString = [NSString stringWithFormat:@"%@", self->appLinkUrl];
        resolve(volumeString);
      }
    }];
  });
}

@end
