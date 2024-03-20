import 'dart:io';

void main() {
  measureExecutionTime(myMethod);
  countProcessors();
}

void measureExecutionTime(Function fn) {
  final stopWatch = Stopwatch()..start();
  //myMethod();
  fn();
  stopWatch.stop();
  print('Execution Time = ${stopWatch.elapsed}');
  print(
    'Execution Time(in milli seconds) = ${stopWatch.elapsedMilliseconds}',
  );
}

void myMethod() {
  for (int i = 0; i < 100000000; i++) {}
}

//dart function to count number of pocessors
void countProcessors() {
  print('==================');
  print('Total Numbers Of Processors = ${Platform.numberOfProcessors}');
}
