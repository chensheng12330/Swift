//
//  letOrVar.swift
//  SwiftTest
//
//  Created by sherwin on 14-7-31.
//  Copyright (c) 2014年 sherwin. All rights reserved.
//

import UIKit

class letOrVar: SHWObject {
    
    
   override func GoTest()
   {
    
    var welcomeMessage: String = "OK-Data";
    
    let languageName = "Swift"
    //languageName = "Swift++" //error
    
    println("\(welcomeMessage) OutPut Text!");
    
    println(languageName);
    
    welcomeMessage += "abc";
    println(welcomeMessage);
    
    
    var str:NSString = "def";
    println(str);
    
    //Int
    
    let minValue = UInt8.min
    let maxV = UInt.max;
    
    var add = UInt(minValue) + maxV;
    println(add);
    
    
    /////
    let decimalInteger = 17
    let binaryInteger = 0b10001       // 二进制的17
    let octalInteger = 0o21           // 八进制的17
    let hexadecimalInteger = 0x11     // 十六进制的17
    println("b:\(binaryInteger) o:\(octalInteger) h:\(hexadecimalInteger)");
    
    ///
    /*
    0xFp2 表示 $15 × 2^{2}$，等于 60.0。
    0xFp-2 表示 $15 × 2^{-2}$，等于 3.75。
    */
    let exponentDouble = 1.21875e1
    let hexadecimalDouble = 0xC.3p2
    println("e:\(exponentDouble) he:\(hexadecimalDouble)");
    
    
    typealias AudioSample = UInt16
    typealias int = Int
    var a:int = 2014;
    a += 1024;
    a -= 1024.01;
    
    println(a);
    
    
    var orangesAreOrange = true
    let turnipsAreDelicious = false
    
    if (orangesAreOrange)
    {
        NSLog("orangesAreOrange");
    }
    
    if (turnipsAreDelicious)
    {
        NSLog("turnipsAreDelicious");
    }
    else
    {
        println("T:\(turnipsAreDelicious)");
    }
    
    /////元组（tuples）把多个值组合成一个复合值
    let http404Error = (404, "Not Found","OP",404.12)
    println("0:\(http404Error.0) 1:\(http404Error.1) 2:\(http404Error.2) 3:\(http404Error.3)");
    
    
    var httpS = (S:401, T:"Error", P:"404.12");
    
    var (a1,b1,c1) = httpS;
    println("0:\(httpS.S) 1:\(httpS.T) 2:\(httpS.P)");
    println(a1);
    
    
    var possibleString: String? = "An optional string."
    println(possibleString!) // 需要惊叹号来获取值
    
    possibleString=nil;
     println(possibleString)
    // 输出 "An optional string."
    
    var assumedString: String! = "An implicitly unwrapped optional string."
    assumedString=nil
    println(assumedString)  // 不需要感叹号
    
    //var stra=assumedString+"a";
    println(assumedString)
    
    }
    
    
    
    
    
    
}
