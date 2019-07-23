package ssh.dao;

import java.util.List;
import ssh.entity.Water;
public interface WaterDao {
	public List<Water> Water(int id);
	public List<Water> Water2(int id);
	public List<Water> SumWater();
	public List<Water> SumWaters();
	public void addWater(Water water);
	public void addElectricity(Water water);
	public Water findWater(String name,String address);
}
