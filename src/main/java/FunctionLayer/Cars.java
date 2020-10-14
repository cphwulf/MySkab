package FunctionLayer;

import FunctionLayer.entities.Car;

import java.util.ArrayList;
import java.util.List;
import DBAccess.CarMapper;

public class Cars {
    private static List<Car> cars;

    public static void initCars() {
        if (cars == null) {
            cars = new ArrayList<>();
            cars = CarMapper.getTopCars();
            /*
            Car car = new Car("Volvo","V70",2);
            Car car2 = new Car("BMW","320i",3);
            cars.add(car);
            cars.add(car2);
             */
        }

    }

    public static List<Car> getCars() {

        return cars;
    }
}
