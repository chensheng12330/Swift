//
//  SHInheritance.swift
//  SwiftTest
//
//  Created by sherwin on 14-9-23.
//  Copyright (c) 2014年 sherwin. All rights reserved.
//  继承（Inheritance）
/*!
防止重写

你可以通过把方法，属性或附属脚本标记为final来防止它们被重写，只需要在声明关键字前加上@final特性即可。（例如：@final var, @final func, @final class func, 以及 @final subscript）

如果你重写了final方法，属性或附属脚本，在编译时会报错。在扩展中，你添加到类里的方法，属性或附属脚本也可以在扩展的定义里标记为 final。

你可以通过在关键字class前添加@final特性（@final class）来将整个类标记为 final 的，这样的类是不可被继承的，否则会报编译错误。
*/

import UIKit

//基类声明
class Vehicle{
    var numberOfWheels:Int
    
    var maxPassengers:Int = 0
    
    //防止被重写
    final var itMe:Int=0;
    final func dontOverrideMe()
    {
        
    }
    
    func description() ->String{
        return "\(numberOfWheels) wheels; up to \(maxPassengers) passengers";
    }
    
    init()
    {
        numberOfWheels = 0;
        maxPassengers  = 1;
    }
    
    init(wheels:Int, maxPas:Int)
    {
        numberOfWheels = wheels;
        maxPassengers  = maxPas;
    }
    
    //析构
    deinit{
        
    }
}

//sub
class Bicycle: Vehicle {
    override init() {
        super.init()
        numberOfWheels = 2
    }
    
    // 属性重载
    override var numberOfWheels:Int{
        get{
            return super.numberOfWheels;
        }
        set{
            super.numberOfWheels = min(newValue, 10);
        }
    }
    
}


class SHInheritance: SHWObject {
    
    override func GoTest() {
        var baseObj:Vehicle = Vehicle();
        NSLog(baseObj.description());
        
        var baseObj1 = Vehicle(wheels: 12,maxPas: 4);
        NSLog(baseObj1.description());
    
    }
}
