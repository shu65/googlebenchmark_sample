#include <benchmark/benchmark.h>

static void StringCreationBenchmark(benchmark::State& state) {
  while (state.KeepRunning())
    std::string empty_string;
}
// Register the function as a benchmark
BENCHMARK(StringCreationBenchmark);

// Define another benchmark
static void StringCopyBenchmark(benchmark::State& state) {
  std::string x = "hello";
  while (state.KeepRunning())
    std::string copy(x);
}
BENCHMARK(StringCopyBenchmark);

BENCHMARK_MAIN();
