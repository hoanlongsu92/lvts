package com.lvts.appmanager.adapter;

import com.lvts.appmanager.RunningAppFragment;
import com.lvts.appmanager.NetworkFragment;
import com.lvts.appmanager.BatteryFragment;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;

public class TabsPagerAdapter extends FragmentPagerAdapter {

	public TabsPagerAdapter(FragmentManager fm) {
		super(fm);
	}

	@Override
	public Fragment getItem(int index) {

		switch (index) {
		case 0:
			// Top Rated fragment activity
			return new RunningAppFragment();
		case 1:
			// Games fragment activity
			return new NetworkFragment();
//		case 2:
//			// Movies fragment activity
//			return new BatteryFragment();
		}

		return null;
	}

	@Override
	public int getCount() {
		// get item count - equal to number of tabs
		return 2;
	}

}
