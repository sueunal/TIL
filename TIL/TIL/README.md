#  TIL

### Generic
- 주로 <T>로 사용이 되며 T가 아니라 다른 이름을 입력해도 상관 없다.

만약 함수가 한 변수의 다른 타입을 입력 받아야한다면 어떻게 해야 할까?
```
var num1 = 1
var num2 = 2

func intCalculate(_ first: Int, _ second: Int){
    print(num1 + num2)
}

var num1 = 1.1
var num2= 2.2

func doubleCalculate(_ first: Double, _ second: Double){
    print(num1 + num2)
}
```
이렇게 같은 역할은 하지만 타입이 변경되었기 때문에 다른 함수를 하나 더 만들어야 한다.    
한 두개의 함수만 만들면 상관 없겠지만 Int, String, Double, Float 등 다양한 타입으로 변경이 된다면   
모든 타입을 만족하는 함수를 만들어야 된다.  

이 문제를 해결해주는 것이 제네릭이다.   
제네릭은 타입을 입력받을 수 있게 해주어서 내가 어떤 타입을 넣든 그 타입으로 변경해준다.   
```
var num1 = 1
var num2 = 2

func genericCalculate<T>(_ first: T, _ second: T){
    print(first, second)
}


genericCalculate(num1, num2)
genericCalculate("1","2")
genericCalculate(1.1,2.2)
```

이렇게 같은 함수에 타입이 다른 값을 넣어도 출력이 된다.   
