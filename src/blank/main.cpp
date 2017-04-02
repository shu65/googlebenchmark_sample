#include <benchmark/benchmark.h>

static void BlankBenchmark(benchmark::State& state) {
  while (state.KeepRunning()) {
  }
}

BENCHMARK(BlankBenchmark);


static void PauseAndResumeBenchmark(benchmark::State& state) {
  while (state.KeepRunning()) {
	  state.PauseTiming();
	  state.ResumeTiming();
  }
}
BENCHMARK(PauseAndResumeBenchmark);

BENCHMARK_MAIN();
