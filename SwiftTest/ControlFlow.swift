//
//  ControlFlow.swift
//  SwiftTest
//
//  Created by sherwin on 14-8-29.
//  Copyright (c) 2014年 sherwin. All rights reserved.
//

import Foundation

/*
Control Flow - 控制流

Swift提供了所有c类语言的控制流结构。

https://github.com/CocoaChina-editors/Welcome-to-Swift/blob/master/The%20Swift%20Programming%20Language/02Language%20Guide/05Control%20Flow.md
*/

class SHControlFlow: SHWObject {
    
    override func GoTest()
    {
        // or-in执行范围，序列，集合或级数等每一项中的一组语句 for-condition-increment执行一组语句直到确定的条件出现，通常在每一个循环结束前递增一个计数
        //Index常量仅仅存在于循环的范围内。如果你想要在循环之后得到index的值，或者想要使用index的值作为变量，你必须在循环之前声明它
        for index in 1...5
        {
        //println("index = \(index)");
        println("\(index)");
        }
        
        var index = 100;
        print(index);
        
        
        /////
        let names = ["Anna", "Alex", "Brian", "Jack"];
        for name in names
        {
            print(names); print(name);
        }
        
        ////
        let namesTag = ["spider": 8, "ant": 6, "cat": 4];
        for (name,num) in namesTag
        {
            println("name: \(name) | num \(num)");
        }
        
        ////Switch
        //每个switch语句由多个可能的case（情况）构成，都用标记的case关键字开头。除了比较对应的值，Swift还为每种case应对更复杂的匹配模式提供了几种方法
        //不须要 break, 可以多项匹配,
        let someCharacter: Character = "e"
        switch someCharacter {
        case "a", "e", "i", "o", "u":
            println("\(someCharacter) is a vowel")
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
        "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
            println("\(someCharacter) is a consonant")
        //case 1...3:
            println("Range Matching - 范围匹配");
        //case "a"..."b":println("字符串范围匹配");
        default:
            println("\(someCharacter) is not a vowel or a consonant")
        }
        
        //Range Matching - 范围匹配
        let count = 3_000_000_000_000
        let countedThings = "stars in the Milky Way"
        var naturalCount: String
        switch count {
        case 0:
            naturalCount = "no"
        case 1...3:
            naturalCount = "a few"
        case 4...9:
            naturalCount = "several"
        case 10...99:
            naturalCount = "tens of"
        case 100...999:
            naturalCount = "hundreds of"
        case 1000...999_999:
            naturalCount = "thousands of"
        default:
            naturalCount = "millions and millions of"
        }
        println("There are \(naturalCount) \(countedThings).")

        
        //Tuples 元组 你可以使用元组在相同的switch语句中测试多个值  用下划线（_）标示符来匹配任意可能的值。
        let somePoint = (1, 1)
        switch somePoint {
        case (0, 0):
            println("(0, 0) is at the origin")
        case (_, 0):
            println("(\(somePoint.0), 0) is on the x-axis")
        case (0, _):
            println("(0, \(somePoint.1)) is on the y-axis")
        case (-2...2, -2...2):
            println("(\(somePoint.0), \(somePoint.1)) is inside the box")
        default:
            println("(\(somePoint.0), \(somePoint.1)) is outside of the box")
        }
        
        ///Value Bindings 值绑定  一个switch的case能绑定用于匹配临时常量或变量值
        let anotherPoint = (2, 0)
        switch anotherPoint {
        case (let x, 0):
            println("on the x-axis with an x value of \(x)")
        case (0, let y):
            println("on the y-axis with a y value of \(y)")
        case let (x, y):
            println("somewhere else at (\(x), \(y))")
        }
        
        //x += 1;  x属于Switch局部
        
        //witch的case能使用where子句来进一步判断条件
        
        let yetAnotherPoint = (1, -1)
        switch yetAnotherPoint {
        case let (x, y) where x == y:
            println("(\(x), \(y)) is on the line x == y")
        case let (x, y) where x == -y:
            println("(\(x), \(y)) is on the line x == -y")
        case let (x, y):
            println("(\(x), \(y)) is just some arbitrary point")
        }
        
        //如果你确实需要C式的掉入特性，你可以使用fallthrough关键词
        let integerToDescribe = 5
        var description = "The number \(integerToDescribe) is"
        switch integerToDescribe {
        case 2, 3, 5, 7, 11, 13, 17, 19:
            description += " a prime number, and also"
            fallthrough
        default:
            description += " an integer."
        }
        println(description)
        
        
        //
        let finalSquare = 25
        var board = [Int](count: finalSquare + 1, repeatedValue: 0)
        board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
        board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
        var square = 0
        var diceRoll = 0
        gameLoop: while square != finalSquare {
            if ++diceRoll == 7 { diceRoll = 1 }
            switch square + diceRoll {
            case finalSquare:
                // diceRoll will move us to the final square, so the game is over
                break gameLoop
            case let newSquare where newSquare > finalSquare:
                // diceRoll will move us beyond the final square, so roll again
                continue gameLoop
            default:
                // this is a valid move, so find out its effect
                square += diceRoll
                square += board[square]
            }
        }
        println("Game over!")
        
    }
    
}