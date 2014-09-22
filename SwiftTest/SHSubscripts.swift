//
//  SHSubscripts.swift
//  SwiftTest
//
//  Created by sherwin on 14-9-22.
//  Copyright (c) 2014年 sherwin. All rights reserved.
//  附属脚本
/*
附属脚本 可以定义在类（Class）、结构体（structure）和枚举（enumeration）这些目标中，可以认为是访问对象、集合或序列的快捷方式，不需要再调用实例的特定的赋值和访问方法。举例来说，用附属脚本访问一个数组(Array)实例中的元素可以这样写 someArray[index] ，访问字典(Dictionary)实例中的元素可以这样写 someDictionary[key]。

对于同一个目标可以定义多个附属脚本，通过索引值类型的不同来进行重载，而且索引值的个数可以是多个。

根据使用场景不同附属脚本也具有不同的含义。通常附属脚本是用来访问集合（collection），
列表（list）或序列（sequence）中元素的快捷方式。你可以在你自己特定的类或结构体中自由的实现附属脚本来提供合适的功能。
*/

import UIKit

class SHSubscripts: SHWObject {
    
    subscript(index:Int) ->String{
        get{
            return "Get Value: \(index)";
        }
        set(newValue){
            
            NSLog("set newValue is: \(newValue)");
        }
    }
    
    override func GoTest() {
        
        self[1] = "100";
        var info = self[100];
        
        NSLog(info);
    }
}
