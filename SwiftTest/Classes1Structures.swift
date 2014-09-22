//
//  Classes1Structures.swift
//  SwiftTest
//
//  Created by sherwin on 14-9-2.
//  Copyright (c) 2014年 sherwin. All rights reserved.
//
/*
类和结构体对比

Swift 中类和结构体有很多共同点。共同处在于：

定义属性用于储存值
定义方法用于提供功能
定义下标用于通过下标语法访问值
定义初始化器用于生成初始化值
通过扩展以增加默认实现的功能
符合协议以对某类提供标准功能

更多信息请参见 属性，方法，下标，初始过程，扩展，和协议。

与结构体相比，类还有如下的附加功能：

继承允许一个类继承另一个类的特征
类型转换允许在运行时检查和解释一个类实例的类型
取消初始化器允许一个类实例释放任何其所被分配的资源
引用计数允许对一个类的多次引用

类是引用类型
结构体是复制值类型

*/
import UIKit

class Classes1Structures: SHWObject {
    
    struct Resolution {
        var width = 0
        var heigth = 0
    }
    
    class VideoMode {
        var resolution = Resolution()
        var interlaced = false
        var frameRate = 0.0
        var name: String?
    }
    
   
    override func GoTest() {
        var res:Resolution = Resolution(width: 1, heigth: 2);
        println(res);
        
        //无论何时将一个字典实例赋给一个常量或变量，或者传递给一个函数或方法，这个字典会即会在赋值或调用发生时被拷贝。

        var ages = ["Peter": 23, "Wei": 35, "Anish": 65, "Katya": 19]
        var copiedAges = ages
        
        println(ages);
        println(copiedAges);
        
        copiedAges["Peter"] = 24;
        
        println(ages);
        println(copiedAges);
        
        /*
        数组的赋值和拷贝行为
        
        如果你将一个数组(Array)实例赋给一个变量或常量，或者将其作为参数传递给函数或方法调用，在事件发生时数组的内容不会被拷贝。相反，数组公用相同的元素序列。当你在一个数组内修改某一元素，修改结果也会在另一数组显示。

        */
        
        var a = ["1", "2", "3"]
        var b = a
        
        println(a);
        println(b);
        
        b.append("2");
        b[0]="2014";
        
        println(a);
        println(b);
        
        //我们通过使用恒等运算符(identity operators)( === and !==)来判定两个数组或子数组共用相同的储存空间或元素。
//        if b[0] === a[0] {
//            println("b and c still share the same array elements.")
//        } else {
//            println("b and c now refer to two independent sets of array elements.")
//        }
        
        //强制复制
        var names1:Array = ["Mohsen", "Hilary", "Justyn", "Amy", "Rich", "Graham", "Vic"]
        //var copiedNames = names1
        
    }
}
