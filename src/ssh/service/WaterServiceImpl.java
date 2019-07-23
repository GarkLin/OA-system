package ssh.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import ssh.dao.WaterDao;
import ssh.entity.Water;
public class WaterServiceImpl implements WaterService{
	private WaterDao waterDao;


	public void setWaterDao(WaterDao waterDao) {
		this.waterDao = waterDao;
	}

	@Override
	public List<Water> WaterList(int id) {
		// TODO Auto-generated method stub
		System.out.println("water service");
		return waterDao.Water(id);
	}

	@Override
	public List<Water> WaterList2(int id) {
		// TODO Auto-generated method stub
		return waterDao.Water2(id);
	}

	@Override
	public int sumWater() {
		// TODO Auto-generated method stub
		int sum = 0;
		List list = waterDao.SumWater();
		for(int i =0;i<list.size();i++){
			System.out.println(i);
			Object a = list.get(i);
			int b = Integer.parseInt(String.valueOf(a));
			sum = b+sum;
		}
		System.out.println(list.size());
		return sum;
	}

	@Override
	public int sumWaters() {
		// TODO Auto-generated method stub
		int sum = 0;
		List list = waterDao.SumWaters();
		for(int i =0;i<list.size();i++){
			System.out.println(i);
			Object a = list.get(i);
			int b = Integer.parseInt(String.valueOf(a));
			sum = b+sum;
		}
		System.out.println(list.size());
		return sum;
	}

	@Override
	public void addWater(Water water) {
		// TODO Auto-generated method stub
		waterDao.addWater(water);
	}

	@Override
	public void addElectricity(Water water) {
		// TODO Auto-generated method stub
		waterDao.addElectricity(water);
	}

	@Override
	public Water findWater(String name, String address) {
		// TODO Auto-generated method stub
		return waterDao.findWater(name, address);
	}
}
