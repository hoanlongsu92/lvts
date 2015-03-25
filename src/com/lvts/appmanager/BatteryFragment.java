package com.lvts.appmanager;

import com.lvts.appmanager.R;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class BatteryFragment extends Fragment {

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {

		View rootView = inflater.inflate(R.layout.fragment_battery, container, false);
		
		
//		Intent myIntent = new Intent((MainActivity)getActivity(), AllAppsActivity.class);
//		this.getActivity().startActivity(myIntent); 
		
		return rootView;
	}
}
