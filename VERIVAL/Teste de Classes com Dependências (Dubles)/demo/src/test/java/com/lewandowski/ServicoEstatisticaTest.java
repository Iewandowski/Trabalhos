package com.lewandowski;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import java.util.Arrays;

import org.junit.jupiter.api.BeforeAll;

public class ServicoEstatisticaTest {
    private static IEventoRepository rep;
    private static ICalculoEstatistica rep2;

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
        rep2 = mock(ICalculoEstatistica.class);
        when(rep2.calculaEstatisticas(5000)).thenReturn(new EstatisticasDTO(38.5 * 60, 41.5 * 60, 8.11 * 60));
    }

    public void testaCalculaAumentoPerformance() {
        ServicoEstatistica servEstatistica = new ServicoEstatistica(rep, rep2);
        PerformanceDTO resp = servEstatistica.calculaAumentoPerformance(5000, 2021);
        PerformanceDTO esperado = new PerformanceDTO("NIKE RUN", "SUMMER RUN", 41.0 * 60);
        assertEquals(esperado, resp);
    }
}
