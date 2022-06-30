import com.lewandowski.RomanNumeral;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

public class RomanNumeralTest {
private RomanNumeral test;

@BeforeEach
public void initialize(){
this.test = new RomanNumeral();
}

@Test
public void numberOneTest(){
int result = test.convert("I");
Assertions.assertEquals(1,result);
}

@Test
public void numberFiveTest(){
int result = test.convert("V");
Assertions.assertEquals(5,result);
}

@Test
public void numberTenTest(){
int result = test.convert("X");
Assertions.assertEquals(10,result);
}

@Test
public void numberFiftyTest(){
int result = test.convert("L");
Assertions.assertEquals(50,result);
}

@Test
public void numberHundredTest(){
int result = test.convert("C");
Assertions.assertEquals(100,result);
}

@Test
public void numberFiveHundredTest(){
int result = test.convert("D");
Assertions.assertEquals(500,result);
}

@Test
public void numberOneThousandTest(){
int result = test.convert("M");
Assertions.assertEquals(1000,result);
}

@Test
public void numberDozenTest(){
int result = test.convert("XX");
Assertions.assertEquals(20,result);
}

@Test
public void numberSumTest(){
int result = test.convert("XXII");
Assertions.assertEquals(22,result);
}

@Test
public void numberReduceTest(){
int result = test.convert("IX");
Assertions.assertEquals(9,result);
}

}

