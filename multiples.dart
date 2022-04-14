void main(List<String> args) {
  
}

int multiplesSum(List<int> baseNumbers, int bound){
  int result = 0;
  for(int base in baseNumbers){
    result+=multiplesSumOf(base, bound);
  }
  return result;
}

int multiplesSumOf(int number, int bound){
  int result = 0;
  int i = 1;
  while(i*number < bound){
    result+=i*number;
    i++;
  }
  return result;
}