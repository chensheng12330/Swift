//
//  SHMethods.swift
//  SwiftTest
//
//  Created by sherwin on 14-9-22.
//  Copyright (c) 2014年 sherwin. All rights reserved.
//

import Foundation

//全局
func gobleFunction() ->Int
{
    return 1;
}

class SHMethods: SHWObject {
    
    //实例方法
    func userGobleFunc(arg1:Int, arg2:NSString, arg3:String) ->String
    {
        var intvaule = gobleFunction();
        
        var info = "arg1: \(arg1) arg2:\(arg2) arg3:\(arg3)";
        return info;
    }
    
    //2
    func method1(inout arg1:String )->(String,String)
    {
        return ("1","2");
    }
    
    //3 
    func method2(inout arg1:String, arg2:SHMethods )->(String)
    {
        arg1 = "change value.";
        return "method2";
    }
    
    
    //类方法
    class  func someTypeMethod() {
        NSLog("class someType method.");
    }
    
    
    //重载方法
    override func GoTest() {
        var fucInfo:String = userGobleFunc(1024, arg2: "1234567", arg3: "321");
        print(fucInfo);
        
        SHMethods.someTypeMethod();
        
        var strTT = "abc";
        var mergeValue = self.method1(&strTT);
        println("\(mergeValue.0)");
        println(mergeValue.1);
        
        var chageValue = self.method2(&strTT, arg2: self);
        println(chageValue);
        println(strTT);
        
        
    }
    
    //变异方法可以分配一个全新的实例给隐式的self属性。上面所示的Point例子也可以勇下面的方式来替代：
    //moveByX方法的mutating 版本创建了一个全新的结构体，并将x和y的值设置到目标位置。调用这个版本的方法的最终返回结果和调用之前版本的结果完全一样。
    
    struct Point {
        
        var x = 0.0, y = 0.0
        mutating func moveByX(deltaX: Double, y deltaY: Double) {
            self = Point(x: x + deltaX, y: y + deltaY)
        }
    }
}
