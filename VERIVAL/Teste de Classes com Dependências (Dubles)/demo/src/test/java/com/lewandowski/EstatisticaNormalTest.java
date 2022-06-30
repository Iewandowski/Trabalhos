package com.lewandowski;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import java.util.Arrays;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

public class EstatisticaNormalTest {
    private static IEventoRepository rep;

    @BeforeAll
    public static void inicializa() {
        rep = mock(IEventoRepository.class);
        when(rep.todos()).thenReturn(Arrays.asList(
                new Evento(10, "POA Day RUN", 10, 3, 2021, 5000, 0, 43, 0),
                new Evento(12, "POA Night RUN", 15, 5, 2021, 5000, 0, 42, 0),
                new Evento(11, "NIKE RUN", 17, 6, 2021, 21000, 1, 22, 0),
                new Evento(14, "SUMMER RUN", 22, 8, 2021, 5000, 0, 41, 0),
                new Evento(16, "SPRING RUN", 22, 8, 2021, 5000, 0, 41, 30),
                new Evento(18, "WINTER RUN", 2, 8, 2021, 5000, 0, 42, 30)));
    }

    @Test
    public void testaEstatisticaNormalMedia() {
        EstatisticaNormal estNormal = new EstatisticaNormal(rep);
        EstatisticasDTO resp = estNormal.calculaEstatisticas(5000);
        assertEquals(2920, resp.getMedia(), 0.01);
    }

    @Test
    public void testaEstatisticaNormalMediana() {
        EstatisticaNormal estNormal = new EstatisticaNormal(rep);
        EstatisticasDTO resp = estNormal.calculaEstatisticas(5000);
        assertEquals(42535, resp.getMediana(), 0.01);
    }

    @Test
    public void testaEstatisticaNormalDesvioPadrao() {
        EstatisticaNormal estNormal = new EstatisticaNormal(rep);
        EstatisticasDTO resp = estNormal.calculaEstatisticas(5000);
        assertEquals(980.714, resp.getDesvioPadrao(), 0.001);
    }
}
