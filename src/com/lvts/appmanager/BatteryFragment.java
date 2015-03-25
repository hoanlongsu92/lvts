package com.lvts.appmanager;

import java.util.ArrayList;
import java.util.List;

import com.lvts.appmanager.R;
import com.lvts.appmanager.adapter.ApplicationAdapter;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ProgressDialog;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.ListFragment;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;


public class BatteryFragment extends ListFragment{		
	private ApplicationAdapter listadaptor = null;
	private List<ApplicationInfo> applist = null;
	private MenuItem refreshMenuItem;
	
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {

		View rootView = inflater.inflate(R.layout.fragment_battery, container, false);		
		
//		Intent myIntent = new Intent((MainActivity)getActivity(), AllAppsActivity.class);
//		this.getActivity().startActivity(myIntent); 
//		TextView tv = (TextView) rootView.findViewById(R.id.textView);
//		for (int idx = 0; idx < procInfos.size(); idx++) {
//		tv.setText(tv.getText() + "" + (idx + 1) + "." + procInfos.get(idx).processName + "\n");
//	}		
		ActivityManager activityManager = (ActivityManager) this.getActivity().getSystemService(Activity.ACTIVITY_SERVICE);
		List<RunningAppProcessInfo> procInfos = activityManager.getRunningAppProcesses();		
		applist = checkForLaunchIntent(CreateApplicationInfoList(procInfos));
		
//		new LoadApplications().execute();
//		PackageManager pm = this.getActivity().getPackageManager();
//		for (ApplicationInfo info : applist) {
//			try {
//				tv.setText(tv.getText() + "@" + info.processName + "\n");				
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//		}
		
//		listadaptor = new ApplicationAdapter(this.getActivity(),R.layout.snippet_list_row, applist);
//		setListAdapter(listadaptor);
		new LoadApplications().execute();
		return rootView;
	}
	
	private List<ApplicationInfo> checkForLaunchIntent(List<ApplicationInfo> list) {
		ArrayList<ApplicationInfo> applist = new ArrayList<ApplicationInfo>();
		for (ApplicationInfo info : list) {
			try {
				if (null != this.getActivity().getPackageManager().getLaunchIntentForPackage(info.packageName)) {
					applist.add(info);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return applist;
	}
	
	private List<ApplicationInfo> CreateApplicationInfoList(List<RunningAppProcessInfo> list) {
		ArrayList<ApplicationInfo> applist = new ArrayList<ApplicationInfo>();
		PackageManager pm = this.getActivity().getPackageManager();
		for(RunningAppProcessInfo process : list) {			
		    try {
		        ApplicationInfo ai = pm.getApplicationInfo(process.processName, PackageManager.GET_META_DATA);
		        applist.add(ai);
		    } catch (NameNotFoundException e) {
		        e.printStackTrace();
		    }
		}
		return applist;
	}
	
	public class LoadApplications extends AsyncTask<Void, Void, Void> {
		private ProgressDialog progress = null;

		@Override
		protected Void doInBackground(Void... params) {
			applist = checkForLaunchIntent(applist);
			listadaptor = new ApplicationAdapter(getActivity(),
					R.layout.snippet_list_row, applist);

			return null;
		}

		@Override
		protected void onCancelled() {
			super.onCancelled();
		}

		@Override
		protected void onPostExecute(Void result) {
			setListAdapter(listadaptor);
//			refreshMenuItem.collapseActionView();
//            refreshMenuItem.setActionView(null);
			progress.dismiss();
			super.onPostExecute(result);
		}

		@Override
		protected void onPreExecute() {
//            refreshMenuItem.setActionView(R.layout.action_progressbar);            
//            refreshMenuItem.expandActionView();
			progress = ProgressDialog.show(getActivity(), null,
					"Loading application info...");
			super.onPreExecute();
		}

		@Override
		protected void onProgressUpdate(Void... values) {
			super.onProgressUpdate(values);
		}
	}
	
}
