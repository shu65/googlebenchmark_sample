#include <benchmark/benchmark.h>

class MyFixture : public benchmark::Fixture {};

BENCHMARK_F(MyFixture, StringCreationBenchmark)(benchmark::State& st) {
   while (st.KeepRunning()) {
	   std::string empty_string;
  }
}

BENCHMARK_DEFINE_F(MyFixture, StringCopyBenchmark)(benchmark::State& st) {
	std::string x = "hello";
   while (st.KeepRunning()) {
	   std::string copy(x);
  }
}
/* BarTest is NOT registered */
BENCHMARK_REGISTER_F(MyFixture, StringCopyBenchmark)->Threads(2);
/* BarTest is now registered */

BENCHMARK_MAIN();
