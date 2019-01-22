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
<br>
<br>
settings.gradle
<br>
include ':react-native-fbapplink'
<br>
project(':react-native-fbapplink').projectDir = new File(rootProject.projectDir, '../node_modules/react-native-fbapplink/android')
<br>
<br>
app/build.gradle
<br>
implementation project(':react-native-fbapplink')
<br>
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
   <br>
   podfile
   <br>
   pod 'react-native-fbapplink', :path => '../node_modules/react-native-fbapplink'

   <br>
   For any android errors look in react-native-fbapplink/android/build.gradle and match the dependencies/support libraries
   <br>that are being used in your project.
