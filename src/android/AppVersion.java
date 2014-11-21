package uk.co.whiteoctober.cordova;

import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CallbackContext;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.PackageManager;
import android.content.pm.PackageInfo;

public class AppVersion extends CordovaPlugin {
  @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
        boolean result = false;
        
        PackageManager packageManager = this.cordova.getActivity().getPackageManager();
        PackageInfo packageInfo = null;
        try {
          packageInfo = packageManager.getPackageInfo(this.cordova.getActivity().getPackageName(), 0);
        } catch (NameNotFoundException e1) {
          // TODO Auto-generated catch block
          e1.printStackTrace();
        }

        if (action.equals("getVersionName")) {
          callbackContext.success(packageInfo.versionName);
          return true;
        }

        if (action.equals("getVersionCode")) {
          callbackContext.success(packageInfo.versionCode);
          return true;
        }

        return false;
      }
  }
}