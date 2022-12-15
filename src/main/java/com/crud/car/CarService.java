package com.crud.car;

import com.crud.car.bean.CarVO;

import java.util.List;

public interface CarService {
    public int insertCar(CarVO vo);
    public int deleteCar(int id);
    public int updateCar(CarVO vo);
    public CarVO getCar(int seq);
    public List<CarVO> getCarList();
}
