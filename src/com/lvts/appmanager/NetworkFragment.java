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
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;


public class NetworkFragment extends ListFragment{		
	private ApplicationAdapter listadaptor = null;
	private List<ApplicationInfo> applist = null;
	private MenuItem refreshMenuItem;
	
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		setHasOptionsMenu(true);
		View rootView = inflater.inflate(R.layout.fragment_battery, container, false);		
		
		ActivityManager activityManager = (ActivityManager) this.getActivity().getSystemService(Activity.ACTIVITY_SERVICE);
		List<RunningAppProcessInfo> procInfos = activityManager.getRunningAppProcesses();		
		applist = checkForLaunchIntent(CreateApplicationInfoList(procInfos));

		new LoadApplications().execute();
		return rootView;
	}
	
	@Override
	public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
		inflater.inflate(R.menu.menu_fragment, menu);		
		super.onCreateOptionsMenu(menu, inflater);
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
	
	public boolean onOptionsItemSelected(MenuItem item) {
		boolean result = true;

		switch (item.getItemId()) {
			case R.id.action_refresh: {
				new LoadApplications().execute();
				break;
			}
			default: {
				result = super.onOptionsItemSelected(item);
				break;
			}
		}
		return result;
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
