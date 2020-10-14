package FunctionLayer;

import DBAccess.CarMapper;
import FunctionLayer.entities.Car;
import org.junit.Test;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.*;

public class CarsTest {

    @Test
    public void getCars() {
        Cars.initCars();
        List<Car> cars = Cars.getCars();
        System.out.println("here");
    }
}