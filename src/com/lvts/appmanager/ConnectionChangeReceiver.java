package com.lvts.appmanager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.widget.Toast;

public class ConnectionChangeReceiver extends BroadcastReceiver
{
  @Override
  public void onReceive(Context context, Intent intent)
  {
	boolean haveConnectedWifi = false;
    boolean haveConnectedMobile = false;
    ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService( Context.CONNECTIVITY_SERVICE );

    NetworkInfo[] netInfo = connectivityManager.getAllNetworkInfo();
    for (NetworkInfo ni : netInfo) {
        if (ni.getTypeName().equalsIgnoreCase("WIFI"))
            if (ni.isConnected())
                haveConnectedWifi = true;
        if (ni.getTypeName().equalsIgnoreCase("MOBILE"))
            if (ni.isConnected())
                haveConnectedMobile = true;
    }
    if(haveConnectedWifi){
    	Toast.makeText(context, "Active Network Type : WIFI", Toast.LENGTH_SHORT ).show();
    }
    if(haveConnectedMobile){
    	Toast.makeText(context, "Active Network Type : Mobile", Toast.LENGTH_SHORT ).show();
    }    
    
//    NetworkInfo activeNetInfo = connectivityManager.getNetworkInfo(ConnectivityManager.TYPE_WIFI);
//    NetworkInfo mobNetInfo = connectivityManager.getNetworkInfo(ConnectivityManager.TYPE_MOBILE);
//    if (activeNetInfo != null )
//    {
//      Toast.makeText(context, "Active Network Type : " + activeNetInfo.getTypeName(), Toast.LENGTH_SHORT ).show();
//    }
//    if(mobNetInfo != null )
//    {
//      Toast.makeText(context, "Mobile Network Type : " + mobNetInfo.getTypeName(), Toast.LENGTH_SHORT ).show();
//    }
//    Toast.makeText(context,"action: "+ intent.getAction(),Toast.LENGTH_SHORT).show();
  }  
	    
}