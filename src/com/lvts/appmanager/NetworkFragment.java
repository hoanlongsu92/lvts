package com.lvts.appmanager;

import java.util.HashMap;
import java.util.Map;

import com.lvts.appmanager.R;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.support.v4.app.ListFragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;


public class NetworkFragment extends ListFragment{
	
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		View rootView = inflater.inflate(R.layout.fragment_network, container, false);		
		
		Map<String, String> networkDetails = new HashMap<String, String>();
		try {
			ConnectivityManager connectivityManager = (ConnectivityManager) getActivity().getSystemService(Context.CONNECTIVITY_SERVICE);
			NetworkInfo wifiNetwork = connectivityManager
					.getNetworkInfo(ConnectivityManager.TYPE_WIFI);
			if (wifiNetwork != null && wifiNetwork.isConnected()) {

				networkDetails.put("Type", wifiNetwork.getTypeName());
				networkDetails.put("Sub type", wifiNetwork.getSubtypeName());
				networkDetails.put("State", wifiNetwork.getState().name());
			}

			NetworkInfo mobileNetwork = connectivityManager
					.getNetworkInfo(ConnectivityManager.TYPE_MOBILE);
			if (mobileNetwork != null && mobileNetwork.isConnected()) {
				networkDetails.put("Type", mobileNetwork.getTypeName());
				networkDetails.put("Sub type", mobileNetwork.getSubtypeName());
				networkDetails.put("State", mobileNetwork.getState().name());
				if (mobileNetwork.isRoaming()) {
					networkDetails.put("Roming", "YES");
				} else {
					networkDetails.put("Roming", "NO");
				}
			}
		} catch (Exception e) {
			networkDetails.put("Status", e.getMessage());
		}
		
		if (networkDetails.isEmpty()) {
			rootView.findViewById(R.id.tableRow1).setVisibility(0);
			TextView value = (TextView) rootView.findViewById(R.id.status);
			value.setText("Connection unavailable");
		} else {
			if (networkDetails.containsKey("State")) {
				rootView.findViewById(R.id.tableRow1).setVisibility(0);
				TextView value = (TextView) rootView.findViewById(R.id.status);
				value.setText(networkDetails.get("State"));
			}
			if (networkDetails.containsKey("Type")) {
				rootView.findViewById(R.id.tableRow2).setVisibility(0);
				TextView value = (TextView) rootView.findViewById(R.id.type);
				value.setText(networkDetails.get("Type"));
			}
			if (networkDetails.containsKey("Sub type")) {
				rootView.findViewById(R.id.tableRow3).setVisibility(0);
				TextView value = (TextView) rootView.findViewById(R.id.subtype);
				value.setText(networkDetails.get("Sub type"));
			}
			if (networkDetails.containsKey("Roming")) {
				rootView.findViewById(R.id.tableRow4).setVisibility(0);
				TextView value = (TextView) rootView.findViewById(R.id.roaming);
				value.setText(networkDetails.get("Roming"));
			}
		}
		Toast.makeText(getActivity().getApplicationContext(), networkDetails.toString(), Toast.LENGTH_SHORT).show();
		return rootView;
	}

	public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
		inflater.inflate(R.menu.menu_fragment, menu);		
		super.onCreateOptionsMenu(menu, inflater);
	}
	
	private Map<String, String> getConnectionDetails() {
		Map<String, String> networkDetails = new HashMap<String, String>();
		try {
			ConnectivityManager connectivityManager = (ConnectivityManager) getActivity().getSystemService(Context.CONNECTIVITY_SERVICE);
			NetworkInfo wifiNetwork = connectivityManager
					.getNetworkInfo(ConnectivityManager.TYPE_WIFI);
			if (wifiNetwork != null && wifiNetwork.isConnected()) {

				networkDetails.put("Type", wifiNetwork.getTypeName());
				networkDetails.put("Sub type", wifiNetwork.getSubtypeName());
				networkDetails.put("State", wifiNetwork.getState().name());
			}

			NetworkInfo mobileNetwork = connectivityManager
					.getNetworkInfo(ConnectivityManager.TYPE_MOBILE);
			if (mobileNetwork != null && mobileNetwork.isConnected()) {
				networkDetails.put("Type", mobileNetwork.getTypeName());
				networkDetails.put("Sub type", mobileNetwork.getSubtypeName());
				networkDetails.put("State", mobileNetwork.getState().name());
				if (mobileNetwork.isRoaming()) {
					networkDetails.put("Roming", "YES");
				} else {
					networkDetails.put("Roming", "NO");
				}
			}
		} catch (Exception e) {
			networkDetails.put("Status", e.getMessage());
		}
		return networkDetails;
	}
	
}



//package com.lvts.appmanager;
//
//import java.util.ArrayList;
//import java.util.List;
//
//import com.lvts.appmanager.R;
//import com.lvts.appmanager.adapter.ApplicationAdapter;
//
//import android.app.Activity;
//import android.app.ActivityManager;
//import android.app.ProgressDialog;
//import android.app.ActivityManager.RunningAppProcessInfo;
//import android.content.pm.ApplicationInfo;
//import android.content.pm.PackageManager;
//import android.content.pm.PackageManager.NameNotFoundException;
//import android.os.AsyncTask;
//import android.os.Bundle;
//import android.support.v4.app.ListFragment;
//import android.view.LayoutInflater;
//import android.view.Menu;
//import android.view.MenuInflater;
//import android.view.MenuItem;
//import android.view.View;
//import android.view.ViewGroup;
//
//
//public class NetworkFragment extends ListFragment{		
//	private ApplicationAdapter listadaptor = null;
//	private List<ApplicationInfo> applist = null;
//	private MenuItem refreshMenuItem;
//	
//	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
//		setHasOptionsMenu(true);
//		View rootView = inflater.inflate(R.layout.fragment_battery, container, false);		
//		
//		ActivityManager activityManager = (ActivityManager) this.getActivity().getSystemService(Activity.ACTIVITY_SERVICE);
//		List<RunningAppProcessInfo> procInfos = activityManager.getRunningAppProcesses();		
//		applist = checkForLaunchIntent(CreateApplicationInfoList(procInfos));
//
//		new LoadApplications().execute();
//		return rootView;
//	}
//	
//	@Override
//	public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
//		inflater.inflate(R.menu.menu_fragment, menu);		
//		super.onCreateOptionsMenu(menu, inflater);
//	}
//	
//	private List<ApplicationInfo> checkForLaunchIntent(List<ApplicationInfo> list) {
//		ArrayList<ApplicationInfo> applist = new ArrayList<ApplicationInfo>();
//		for (ApplicationInfo info : list) {
//			try {
//				if (null != this.getActivity().getPackageManager().getLaunchIntentForPackage(info.packageName)) {
//					applist.add(info);
//				}
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//		}
//		return applist;
//	}
//	
//	public boolean onOptionsItemSelected(MenuItem item) {
//		boolean result = true;
//
//		switch (item.getItemId()) {
//			case R.id.action_refresh: {
//				new LoadApplications().execute();
//				break;
//			}
//			default: {
//				result = super.onOptionsItemSelected(item);
//				break;
//			}
//		}
//		return result;
//	}
//	private List<ApplicationInfo> CreateApplicationInfoList(List<RunningAppProcessInfo> list) {
//		ArrayList<ApplicationInfo> applist = new ArrayList<ApplicationInfo>();
//		PackageManager pm = this.getActivity().getPackageManager();
//		for(RunningAppProcessInfo process : list) {			
//		    try {
//		        ApplicationInfo ai = pm.getApplicationInfo(process.processName, PackageManager.GET_META_DATA);
//		        applist.add(ai);
//		    } catch (NameNotFoundException e) {
//		        e.printStackTrace();
//		    }
//		}
//		return applist;
//	}
//	
//	public class LoadApplications extends AsyncTask<Void, Void, Void> {
//		private ProgressDialog progress = null;
//
//		@Override
//		protected Void doInBackground(Void... params) {
//			applist = checkForLaunchIntent(applist);
//			listadaptor = new ApplicationAdapter(getActivity(),
//					R.layout.snippet_list_row, applist);
//
//			return null;
//		}
//
//		@Override
//		protected void onCancelled() {
//			super.onCancelled();
//		}
//
//		@Override
//		protected void onPostExecute(Void result) {
//			setListAdapter(listadaptor);
////			refreshMenuItem.collapseActionView();
////            refreshMenuItem.setActionView(null);
//			progress.dismiss();
//			super.onPostExecute(result);
//		}
//
//		@Override
//		protected void onPreExecute() {
////            refreshMenuItem.setActionView(R.layout.action_progressbar);            
////            refreshMenuItem.expandActionView();
//			progress = ProgressDialog.show(getActivity(), null,
//					"Loading application info...");
//			super.onPreExecute();
//		}
//
//		@Override
//		protected void onProgressUpdate(Void... values) {
//			super.onProgressUpdate(values);
//		}
//	}
//	
//}