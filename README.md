# react-native-fetchDeferredAppLink

<B> Installation</B>
<br>
yarn add UberMC/react-native-fetchDeferredAppLink
<br>
<br>
   <B>Usage</B>
   <BR>
   const { FBAppLink } = NativeModules;
  
    FBAppLink.get().then(url => {
    
      console.log(url);

      //or console.log(queryString.parseUrl(url)) to get an object with params;
      //npm i query-string
      //yarn add query-string
    });


<B>Android</B>
app/build.gradle
<br>
implementation project(':react-native-fbapplink')
<br>
MainApplication.java
<br>
import caribu.android.fbapplink.FBAppLinkPackage;
<br>
 @Override
 <br>
    protected List<ReactPackage> getPackages() {
   <br>
      return Arrays.<ReactPackage>asList(
   <br>
new FBAppLinkPackage()
   <br>
   <br>
   
   <B>iOS</B>
   <br>
   podfile
   <br>
   pod 'react-native-fbapplink', :path => '../node_modules/react-native-fbapplink'


