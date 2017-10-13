//: Playground - noun: a place where people can play

import UIKit

class Fibonacci{
    
    var number : Int = 0
    var number1 : Int?
    var number2 : Int?
    var fibonacciArray : Array = Array<Int>()
    var evenNumbersInFibonacci: Array = Array<Int>()
    var sumOfEvenValuedTerms: Int = 0
    
    func calculateSeries(num1 : Int , num2: Int) -> Int {
        
        var tempNum : Int = 0
        tempNum = num1 + num2
        
        self.number1 = num2
        self.number2 = tempNum
        
        if tempNum < 4000000{
            
            self.number = tempNum
            fibonacciArray.append(number)
            
        }else{
            self.number = num2
        }
        return number
    }
}

let fibonacci = Fibonacci()

fibonacci.number1 = 0
fibonacci.number2 = 1

while fibonacci.number < 4000000
 {
    fibonacci.calculateSeries(num1: fibonacci.number1!, num2: fibonacci.number2!)
}

print("Fibonacci Series Up To Four Million:")

for item in fibonacci.fibonacciArray{
    
    print(item, terminator:" ")
    
    if item%2 == 0{
        fibonacci.evenNumbersInFibonacci.append(item)
    }
}
print("\n\n")
print("Even Numbers In Fibonacci Series:")
for item in fibonacci.evenNumbersInFibonacci{
    print(item, terminator:" ")
    fibonacci.sumOfEvenValuedTerms = fibonacci.sumOfEvenValuedTerms + item
}
print("\n\n")
print("The sum of the even-valued terms:", fibonacci.sumOfEvenValuedTerms)

