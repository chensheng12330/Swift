//
//  Operators.swift
//  SwiftTest
//
//  Created by sherwin on 14-8-5.
//  Copyright (c) 2014年 sherwin. All rights reserved.
//

import UIKit


class Operators: SHWObject {
    
    override func GoTest()
    {
        //字符串 重载
        let dog: Character = "d"
        let cow: Character = "c"
        let dogCow = dog + cow;
        println(dogCow);
        
        for c in dogCow
        {
            println("character is: \(c)");
        }
        
        //区间运算符
        for index in 1...5 {
            println("\(index) * 5 = \(index * 5)")
        }
        
        var endnum = 10;
        
        for num in 1...endnum{
            println("num:\(num)");
        }
        
        
        let names = ["Anna", "Alex", "Brian", "Jack"]
        let count = names.count
        for i in 0..<count {
            println("第 \(i + 1) 个人叫 \(names[i])")
        }
        //浮点取余
        var flt = 3.4555;
        var yflt = flt % 0.2;
        println("\(flt) % 0.2 = \(yflt)");
        
    }
    
}
