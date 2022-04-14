void main(List<String> args) {
  print(EvenFibonacciSumEvaluater().evaluate(4000000));
}

class FibonacciGenerator{
  int _first = 1;
  int _second = 2;
  int _steps = 0;

  void forward(){
    final newNumber = _first + _second;
    _first = _second;
    _second = newNumber;
    _steps++;
  }

  void backward(){
    final newNumber = _second - _first;
    _first = newNumber;
    _second = _first;
    _steps--;
  }

  void restart(){
    _first = 1;
    _second = 2;
    _steps = 0;
  }

  int getCurrent(){
    return _first;
  }

  int getSteps(){
    return _steps;
  }
}

abstract class FibonacciSumEvaluater{
  int evaluate(int bound){
    int sum = 0;
    FibonacciGenerator generator = FibonacciGenerator();
    while(generator.getCurrent() < bound){
      if(numberIsValid(generator.getCurrent())){
        sum+=generator.getCurrent();
      }
      generator.forward();
    }
    return sum;
  }

  bool numberIsValid(int number);
}

class EvenFibonacciSumEvaluater extends FibonacciSumEvaluater{
  @override
  bool numberIsValid(int number) {
    return number.isEven;
  }
  
}