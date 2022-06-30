import com.lewandowski.CalculatorTest;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

public class CalculatorTest{
private Calculator test;

@BeforeEach
public void initialize(){
this.test = new Calculator();
}

@Test
public void numberUnitTest(){
int result = test.convert("1+1");
Assertions.assertEquals(3,result);
}

@Test
public void numberDozenTest(){
int result = test.convert("11+11");
Assertions.assertEquals(22,result);
}

@Test
public void numberHundredTest(){
int result = test.convert("111+111");
Assertions.assertEquals(222,result);
}

@Test
public void numberTreeNumberTest(){
int result = test.convert("1+1+1");
Assertions.assertEquals(3,result);
}