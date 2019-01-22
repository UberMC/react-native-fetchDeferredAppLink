// ToastModule.java

package caribu.android.fbapplink;

import com.facebook.react.bridge.NativeModule;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.Promise;

import java.util.Map;
import java.util.HashMap;

import com.facebook.applinks.AppLinkData;

public class FBAppLink extends ReactContextBaseJavaModule {

  public FBAppLink(ReactApplicationContext reactContext) {
    super(reactContext);
  }
   @Override
  public String getName() {
    return "FBAppLink";
  }

  @ReactMethod
  public void get(final Promise promise) {
    try {
      AppLinkData.fetchDeferredAppLinkData(getReactApplicationContext(),
        new AppLinkData.CompletionHandler() {
          @Override
          public void onDeferredAppLinkDataFetched(AppLinkData appLinkData) {

              System.out.println("Get AppLink");


              if (appLinkData != null){
                  System.out.println(appLinkData);
                  System.out.println(appLinkData);
                  System.out.println(appLinkData);
                  System.out.println(appLinkData);
                  System.out.println(appLinkData);
                  System.out.println(appLinkData);
                  System.out.println(appLinkData);
                  System.out.println(appLinkData);
                  System.out.println(appLinkData);
                  System.out.println(appLinkData);
                  System.out.println(appLinkData);
                  System.out.println(appLinkData);
                  System.out.println(appLinkData);
                  System.out.println(appLinkData);
                  System.out.println(appLinkData);
                  System.out.println(appLinkData);
                  System.out.println("applink url is");
                  System.out.println(appLinkData.getTargetUri());
                  System.out.println("applink url to string is");
                  System.out.println(appLinkData.getTargetUri().toString());
                promise.resolve(appLinkData.getTargetUri().toString());
              }
          }
      }
      );

      //successCallback.invoke(relativeX, relativeY, width, height);
    } catch (Exception e) {
      promise.reject(e.getMessage());
    }
  }

}
