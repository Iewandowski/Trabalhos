//Caroline Lewandowski - 20102626
//Testes de valor limite
package com.lewandowski;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class handsOnTest {
    private handsOn funcionario;

    @Test
    public void testSbeT1() {
        Assertions.assertThrows(IllegalArgumentException.class, ()->{new handsOn(0.0);});
    }

    @Test
    public void testSbeT2() {
        funcionario = new handsOn(1);
        double result = funcionario.getSalarioBruto();
        Assertions.assertEquals(1, result);
    }

    @Test
    public void testSbeT3() {
        funcionario = new handsOn(30);
        double result = funcionario.getSalarioBruto();
        Assertions.assertEquals(30, result);
    }

    @Test
    public void testSbeT4() {
        Assertions.assertThrows(IllegalArgumentException.class, ()->{new handsOn(-31.0);});
    }

    @Test
    public void testSbeT5() {
        funcionario = new handsOn(29);
        double result = funcionario.getSalarioBruto();
        Assertions.assertEquals(29, result);
    }

    @Test
    public void testInssT5() {
        Assertions.assertThrows(IllegalArgumentException.class, ()->{new handsOn(0.0);});
    }

    @Test
    public void testInssT6() {
        funcionario = new handsOn(1);
        double result = funcionario.getINSS();
        Assertions.assertEquals(1 * 0.045, result);
    }

    @Test
    public void testInssT7() {
        funcionario = new handsOn(5000);
        double result = funcionario.getINSS();
        Assertions.assertEquals(5000.0 * 0.045, result);
    }

    @Test
    public void testInssT8() {
        funcionario = new handsOn(5001);
        double result = funcionario.getINSS();
        Assertions.assertEquals(5000.0 * 0.045, result);
    }

    @Test
    public void testInssT9() {
        funcionario = new handsOn(5001);
        double result = funcionario.getINSS();
        Assertions.assertEquals(5000.0 * 0.045, result);
    }

    @Test
    public void testIrT10() {
        funcionario = new handsOn(2500);
        double result = funcionario.getIRPF();
        Assertions.assertEquals(0, result);
    }

    @Test
    public void testIrT11() {
        funcionario = new handsOn(2501);
        double result = funcionario.getIRPF();
        Assertions.assertEquals((2501 - 2500) * 0.12, result);
    }
}
