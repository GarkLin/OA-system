package ssh.service;

import java.util.List;

import ssh.entity.Water;

public interface WaterService {
	public List<Water> WaterList(int id);
	public List<Water> WaterList2(int id);
	public int sumWater();
	public int sumWaters();
	public void addWater(Water water);
	public void addElectricity(Water water);
	public Water findWater(String name,String address);
}
