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


public class RunningAppFragment extends ListFragment{		
	private ApplicationAdapter listadaptor = null;
	private List<ApplicationInfo> applist = null;
	
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		setHasOptionsMenu(true);
		View rootView = inflater.inflate(R.layout.fragment_running_app, container, false);		
		
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
//package com.lvts.appmanager;
//
//import com.lvts.appmanager.R;
//import android.os.Bundle;
//import android.support.v4.app.Fragment;
//import android.view.LayoutInflater;
//import android.view.View;
//import android.view.ViewGroup;
//
//import com.lvts.appmanager.adapter.CustomListAdapter;
//import com.lvts.appmanager.app.AppController;
//import com.lvts.appmanager.model.Movie;
//
//import java.util.ArrayList;
//import java.util.List;
//
//import org.json.JSONArray;
//import org.json.JSONException;
//import org.json.JSONObject;
//
//import android.app.ProgressDialog;
//import android.util.Log;
//import android.widget.ListView;
//
//import com.android.volley.Response;
//import com.android.volley.VolleyError;
//import com.android.volley.VolleyLog;
//import com.android.volley.toolbox.JsonArrayRequest;
//
//public class RunningAppFragment extends Fragment {
//	// Log tag
//	private static final String TAG = MainActivity.class.getSimpleName();
//	
//	// Movies json url
//    private static final String url = "http://api.androidhive.info/json/movies.json";
//    private ProgressDialog pDialog;
//    private List<Movie> movieList = new ArrayList<Movie>();
//    private ListView listView;
//    private CustomListAdapter adapter;
//    
//    @Override
//	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
//    	View rootView = inflater.inflate(R.layout.fragment_running_app,null);
//		listView = (ListView) rootView.findViewById(R.id.list);
//		
//        adapter = new CustomListAdapter(this.getActivity(), movieList);
//        listView.setAdapter(adapter);
//        pDialog = new ProgressDialog(this.getActivity());
//        // Showing progress dialog before making http request
//        pDialog.setMessage("Loading...");
//        pDialog.show();
//        
//     // Creating volley request obj
//        JsonArrayRequest movieReq = new JsonArrayRequest(url,
//                new Response.Listener<JSONArray>() {
//                    @Override
//                    public void onResponse(JSONArray response) {
//                        Log.d(TAG, response.toString());
//                        hidePDialog();
// 
//                        // Parsing json
//                        for (int i = 0; i < response.length(); i++) {
//                            try {
// 
//                                JSONObject obj = response.getJSONObject(i);
//                                Movie movie = new Movie();
//                                movie.setTitle(obj.getString("title"));
//                                movie.setThumbnailUrl(obj.getString("image"));
//                                movie.setRating(((Number) obj.get("rating"))
//                                        .doubleValue());
//                                movie.setYear(obj.getInt("releaseYear"));
// 
//                                // Genre is json array
//                                JSONArray genreArry = obj.getJSONArray("genre");
//                                ArrayList<String> genre = new ArrayList<String>();
//                                for (int j = 0; j < genreArry.length(); j++) {
//                                    genre.add((String) genreArry.get(j));
//                                }
//                                movie.setGenre(genre);
// 
//                                // adding movie to movies array
//                                movieList.add(movie);
// 
//                            } catch (JSONException e) {
//                                e.printStackTrace();
//                            }
// 
//                        }
// 
//                        // notifying list adapter about data changes
//                        // so that it renders the list view with updated data
//                        adapter.notifyDataSetChanged();
//                    }
//                }, new Response.ErrorListener() {
//                    @Override
//                    public void onErrorResponse(VolleyError error) {
//                        VolleyLog.d(TAG, "Error: " + error.getMessage());
//                        hidePDialog();
// 
//                    }
//                });
// 
//        // Adding request to request queue
//        AppController.getInstance().addToRequestQueue(movieReq);      
//		//View rootView = inflater.inflate(R.layout.fragment_running_app, container, false);
//		
//		return rootView;
//	}
//
//
//	@Override
//	public void onDestroy() {
//	    super.onDestroy();
//	    hidePDialog();
//	}
//	
//	private void hidePDialog() {
//	    if (pDialog != null) {
//	        pDialog.dismiss();
//	        pDialog = null;
//	    }
//	}
//
//}