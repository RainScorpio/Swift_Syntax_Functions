//
//  ViewController.swift
//  Swift_Syntax_Functions
//
//  Created by Rain on 15/12/23.
//  Copyright © 2015年 Rain. All rights reserved.
//

import UIKit

// MARK: - 知识点1 具有多个返回值的函数

/** 函数返回值类型为元组(tuple)类型. */
//class ViewController: UIViewController {
//
//    /**
//     * 定义一个minMax(_:)函数
//     * 找出array数组中的最小值和最大值, 并返回.
//     * 返回值类型为元组类型.
//     */
//    func minMax(array:[Int]) -> (min: Int, max: Int) {
//        
//        var currentMin = array[0]
//        var currentMax = array[0]
//        for value in array{
//            
//            if value < currentMin {
//                currentMin = value
//            } else if value > currentMax {
//                currentMax = value
//            }
//            
//        }
//        return (currentMin, currentMax)
//    }
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        let bounds = minMax([8, -6, 2, 109, 3, 71])
//        
//        /** 元组成员名作为函数返回类型的一部分, 所以可以直接使用点语法访问. */
//        print("min is \(bounds.min) and max is \(bounds.max)")
//        
//        /** 注意: */
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//
//}

// MARK: - 知识点2 可选元组返回类型

//class ViewController: UIViewController {
//    
//    /**
//     * 当返回值类型可能没有值时, 可以选择返回可选元组类型.
//     * 在元组类型右括号后放置一个? 来定义一个可选元组.
//     * 注意: (Int, Int)? 和 (Int?, Int?)是不同的, 前者是整个元组是可选的, 后者是元组中的每个元素是可选的.
//     */
//    func minMax(array:[Int]) -> (min: Int, max: Int)? {
//        
//        if array.isEmpty { return nil }
//        var currentMin = array[0]
//        var currentMax = array[0]
//        for value in array{
//            
//            if value < currentMin {
//                currentMin = value
//            } else if value > currentMax {
//                currentMax = value
//            }
//            
//        }
//        return (currentMin, currentMax)
//    }
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        /** 当函数返回值类型为可选元组时, 原先的写法就会报错. */
////        let bounds = minMax([5, 1, -3, 9])
////        print("min is \(bounds.min) and max is \(bounds.max)")
//        
//        /** 可以使用可选绑定来检查minMax(_:)函数返回的是一个元组值还是nil. */
////        if let bounds = minMax([8, -6, 2, 109, 3, 71]) {
////            print("min is \(bounds.min) and max is \(bounds.max)")
////        }
////        
//        /** 当你确定返回的元组一定有值的时候, 可以加!, 告诉编译器返回的元组一定有值. */
////        let bounds = minMax([3, 2, 8, 1])!
////        print("min is \(bounds.min) and max is \(bounds.max)")
//        
//        /** 也可以这么写. */
////        let bounds = minMax([3, 2, 8, 1])
////        print("min is \(bounds!.min) and max is \(bounds!.max)")
//        
//    }
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//    
//}

// MARK: - 知识点3 参数

// FIXME: 函数参数命名规范

    /**
     * 1. 由一个外部参数名和局部参数名组成, 两者用空格分开. 
     * 当函数被调用的时候使用外部参数名, 在函数实现内部使用局部参数名.
     */
//func addAction(externalFirstNumber firstNumber: Int, externalSecondNumber secondNumber: Int) {
//    
//    /**
//     * externalFirstNumber: 第一个参数的局部参数名
//     * firstNumber: 第一个参数的局部参数名
//     * externalSecondNumber: 第二个参数的外部参数名
//     * secondNumber: 第二个参数的局部参数名
//     */
//    
//    /** 在函数内, 使用局部参数名. */
//    let sum = firstNumber + secondNumber
//    print("sum = \(sum)")
//}


/** 
 * 2. 默认情况下第一个参数的外部名称省略, 第二个及以后的参数名称使用使用局部参数名作为外部参数名.
 * 所有参数必须有唯一的局部参数名, 可以有相同的外部参数名, 但不同的外部参数名让你的代码更有可读性.
 */
//func addAction(firstNumber: Int, secondNumber: Int) {
//    
//    /**
//     * firstNumber: 第一个参数的局部参数名, 默认省略外部参数名.
//     * secondNumber: 第二个参数的局部参数名, 也是外部参数名.
//     */
//     
//     /** 在函数内, 使用局部参数名. */
//    let sum = firstNumber + secondNumber
//    print("sum = \(sum)")
//}

/**
 * 3. 省略外部参数名.
 * 用_(下划线)代替外部参数名.
 * 第一个参数的外部参数名已经是默认省略的, 所以不必再写一个下划线.
 */

//func addAction(firstNumber: Int, _ secondNumber: Int) {
//    
//    /**
//     * firstNumber: 第一个参数的局部参数名, 默认省略外部参数名.
//     * secondNumber: 第二个参数的局部参数名, 也是外部参数名.
//     */
//     
//     /** 在函数内, 使用局部参数名. */
//    let sum = firstNumber + secondNumber
//    print("sum = \(sum)")
//}


//class ViewController: UIViewController {
//     override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        /** 1. 调用函数时, 使用外部参数名. */
////        addAction(externalFirstNumber: 1, externalSecondNumber: 2)
//        
//        /** 2. 默认情况下. */
////        addAction(1, secondNumber: 2)
//        
//        /** 3. 省略外部参数名. */
//        addAction(1, 2)
//    }
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//}



// FIXME: 默认参数值

//func someFunction(parameterWithDefault: Int = 12) {
//    print("parameterWithDefault = \(parameterWithDefault)")
//}
//
///** 将带有默认值的参数放在函数参数列表的最后。这样可以保证在函数调用时，没有默认值的参数的顺序是一致的，同时使得相同的函数在不同情况下调用时显得更为清晰. */
//func sayHello(person: String, otherPerson : String = "Rain") {
//    print("\(person) to \(otherPerson) say hello.")
//}
//
// FIXME: 可变参数
//
///** 
// * 在变量类型后面加...定义可变参数. 
// * 一个函数只能有一个可变参数.
// */
//func arithmeticMean(numbers: Double...) -> Double {
//    var total: Double = 0
//    for number in numbers {
//        total += number
//    }
//    
//    return total / Double(numbers.count)
//}
//
///** 当带有默认值的参数和可变参数同时存在的时候, 把可变参数放在参数列表的最后. */
//func classMember(className: String = "ClassOne", studentNames: String...) {
//    print("\(className): ")
//    for name in studentNames {
//        print(name)
//    }
//}
//
// FIXME: 常量参数和变量参数(有待改进)
//
///**
// * 函数参数默认为常量, 在函数体内改变常量参数值将会导致编译错误
// * 在参数名前面加关键字: var, 定义变量参数
// * 注意: 变量参数只存在于函数调用的生命周期. 对变量参数所进行的修改在函数调用结束后便消失了, 并且对于函数体外是不可变的.
// */
//func alignRight(var string: String, totalLength: Int, pad: Character) -> String {
//    
//    let amountToPad = totalLength - string.characters.count
//    if amountToPad < 1 {
//        return string;
//    }
//    
//    let padString = String(pad) /**< 将pad转换成String类型, 一个String值不能添加到Character上.  */
//    for _ in 1...amountToPad {
//        string = padString + string
//    }
//    return string
//}
//
// FIXME: 输入输出参数, 关键字: inout
///**
// * 修改函数参数的值, 并且在函数调用结束后修改仍然存在.
// * 在参数名前加关键字: inout, 定义输入输出参数.
// * 注意: inout参数不能有默认值, 也不可以定义为可变参数, 用inout标记一个参数, 就不能用var或者let标记.
// */
//
///** 交换a和b的值. */
//func swapTwoInts(inout a: Int, inout _ b: Int) {
//    let temporaryA = a
//    a = b
//    b = temporaryA
//}
//
//
//class ViewController: UIViewController {
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        /** 默认参数值. */
//        
//        /** 可以忽略有默认值的参数. */
//        someFunction() /**< 输出12. */
//        someFunction(6) /**< 输出6. */
//        
//        sayHello("Tom") /**< Tom to Rain say hello. */
//        sayHello("Merry", otherPerson: "Nikita") /** Merry to Nikita say hello. */
//        
//        /** 可变参数. */
//        print("reslut = \(arithmeticMean(2.3, 5.4, 1, 5))")
//        print("reslut = \(arithmeticMean(3, 89.7))")
//        
//        classMember(studentNames: "Rain", "Scott", "Black")
//        classMember("ClassTwo", studentNames: "Caoyuan", "Machunyu", "Zhangxu")
//        
//        /** 常量参数和变量参数. */
//        let originalString = "hello"
//        let paddedString = alignRight(originalString, totalLength: 10, pad: "-")
//        print("originalString: \(originalString)") /**< originalString: hello */
//        print("paddedString: \(paddedString)") /**< paddedString: -----hello */
//        
//        
//        /** 输入输出函数. */
//        var someInt = 3
//        var anotherInt = 107
//        
//        /** 只能传递变量给inout参数, 不能传入常量或字面量这些不能被修改的量. 在实参名前面加上&符号. */
//        swapTwoInts(&someInt, &anotherInt)
//        print("someInt is now \(someInt), and anotherInt is now \(anotherInt)") /**< someInt is now 107, and anotherInt is now 3 */
//        
//        
//    }
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }

//}


// MARK: - 知识点4 函数

// FIXME: 函数类型
/** 函数类型由函数参数类型和返回类型组成. */
func addTwoInts(a: Int, _ b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(a: Int, _ b: Int) -> Int {
    return a * b
}

/**
 * 上面两个函数都是 (Int, Int) -> Int 类型, 可以解读为"这个函数类型由两个Int型参数并返回一个Int型的值".
 */


func printHelloWorld() {
    print("hello, world")
}
/** 这个函数类型是 () -> void, 或者叫没有参数, 并返回Void类型的函数. */

// FIXME: 使用函数类型
/** 详见viewDidLoad()方法内. */

// FIXME: 函数类型作为参数类型
func printMathResult(mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    
    print("Result: \(mathFunction(a, b))")
}

// FIXME: 函数类型作为返回类型

func stepForward(input: Int) -> Int {
    return input + 1
}

func stepBackward(input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
    return backwards ? stepBackward : stepForward
}

// FIXME: 嵌套函数

/** 可以嵌套定义函数, 这是与OC中的嵌套函数的很大区别. */

func chooseStepFunctionOfNested(backwards: Bool) -> (Int) -> Int {
    
    // MARK: 有问题
    /** 被嵌套的函数是对外界不可见的, 但是可以被嵌套它的函数调用, 也可以返回被嵌套的函数. */
    func stepForward(input: Int) -> Int {
        return input + 1
    }
    
    func stepBackward(input: Int) -> Int {
        return input - 1
    }
    
    return backwards ? stepBackward : stepForward
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
       /** FIXME: 使用函数类型 */
        var mathFunction: (Int, Int) -> Int = addTwoInts
        print("Result: \(mathFunction(2, 3))") /**< Result: 5 */
        
        mathFunction = multiplyTwoInts
        print("Result: \(mathFunction(2, 3))") /**< Result: 5 */
        
        let anotherMathFunction = addTwoInts
        print("Result: \(anotherMathFunction(3, 9))") /**< Result: 12 */
        
        /** 函数类型作为参数类型. */
        printMathResult(addTwoInts, 3, 5) /**< Result: 8 */
        
        
        /** 函数类型作为返回类型. */
        var currentValue = 3
        let moveNearerToZero = chooseStepFunction(currentValue > 0)
        print("Counting to zero: ")
        while currentValue != 0 {
            print("\(currentValue)...")
            currentValue = moveNearerToZero(currentValue)
        }
        
       /** 输出
        * Counting to zero:
          3...
          2...
          1...
        */
       
        
        /** 嵌套函数 */
        var currentNumber = -4
        let moveToZero = chooseStepFunctionOfNested(currentNumber > 0)
        while currentNumber != 0 {
            print("\(currentNumber)...")
            currentNumber = moveToZero(currentNumber)
        }
        print("zero!")
        /**
           -4...
           -3...
           -2...
           -1...
           zero!
         */
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


