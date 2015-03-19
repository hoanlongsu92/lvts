package com.lvts.appmanager;

import com.lvts.appmanager.R;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;

import java.util.List;

public class NetworkFragment extends Fragment {

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,Bundle savedInstanceState) {
			
		View rootView = inflater.inflate(R.layout.fragment_network,null);
		
		TextView tv = (TextView) rootView.findViewById(R.id.textView);

		 ActivityManager activityManager = (ActivityManager) this.getActivity().getSystemService(Activity.ACTIVITY_SERVICE);

		 List<RunningAppProcessInfo> procInfos = activityManager.getRunningAppProcesses();
		 for (int idx = 0; idx < procInfos.size(); idx++) {
		   tv.setText(tv.getText() + "" + (idx + 1) + "."
		     + procInfos.get(idx).processName + "\n");
		  }

		//View rootView = inflater.inflate(R.layout.fragment_network, container, false);
		
		return rootView;
	}

}
