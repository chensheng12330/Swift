//
//  SHProperties.swift
//  SwiftTest
//
//  Created by sherwin on 14-9-4.
//  Copyright (c) 2014年 sherwin. All rights reserved.
//

import UIKit

class DataImporter {
    
    //DataImporter 是一个将外部文件中的数据导入的类。这个类的初始化会消耗不少时间。
   
    var fileName = "data.txt"
    // 这是提供数据导入功能
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
    // 这是提供数据管理功能
}


struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    

    //计算属性不直接存储值，而是提供一个 getter 来获取值，一个可选的 setter 来间接设置其他属性或变量的值
    var origin = Point()
    var size: Size {
        get{
            return Size(width: 1, height: 1)
        }
        set(newSize)
        {
            size.width = newSize.width
            size.height=newSize.height
        }
        
        /*属性监视器  不能与 get set 同时启用
        willSet在设置新的值之前调用
        didSet在新的值被设置之后立即调用
        */
        /*
        willSet(newValue)
        {
            println();
        }
        
        didSet(newValue)
        {
            
        }*/
    }
    
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}


struct SomeStructure {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        // 这里返回一个 Int 值
        return 1
    }
}
enum SomeEnumeration {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        // 这里返回一个 Int 值
        return 1
    }
}
class SomeClass {
    class var computedTypeProperty: Int {
        // 这里返回一个 Int 值
        return 1
    }
}
//提前声明类


///////类型属性语法
/*
在 Swift 编程语言中，类型属性是作为类型定义的一部分写在类型最外层的花括号内，因此它的作用范围也就在类型支持的范围内。
使用关键字static来定义值类型的类型属性，关键字class来为类（class）定义类型属性。下面的例子演示了存储型和计算型类型属性的语法：
*/
struct SomeStructure1 {
    static var storedTypeProperty = "some value"
    static var computedTypeProperty:Int{
    return 1;
    }
}



////////////测试类
class SHProperties: SHWObject {
    
     override func GoTest() {
        
        //简单来说，一个存储属性就是存储在特定类或结构体的实例里的一个常量或变量，存储属性可以是变量存储属性（用关键字var定义），也可以是常量存储属性（用关键字let定义）。
        struct FixedLengthRange {
            var firstValue: Int
            let length: Int
        }
        
        var rangeIt = FixedLengthRange(firstValue: 1, length: 2);
        rangeIt.firstValue = 2;
        //rangeIt.length = 1; //不用调用，因为是常量let设置
        
        
        //延迟存储属性是指当第一次被调用的时候才会计算其初始值的属性。在属性声明前使用@lazy来标示一个延迟存储属性。
        
        
        let manager = DataManager()
        manager.data .append("Some data")
        manager.data .append("Some more data")
        // DataImporter 实例的 importer 属性还没有被创建  importer.storage
        
        println(manager.data);
        
        
        var MM = manager.importer;
        var info = manager.importer.fileName
        println(info)
        
        
        
        //计算属性
        //除存储属性外，类、结构体和枚举可以定义计算属性，计算属性不直接存储值，而是提供一个 getter 来获取值，一个可选的 setter 来间接设置其他属性或变量的值。
        
        
        
        var xpoint = Point(x: 1.0, y: 2.0)
        var xsize  = Size(width: 10.0, height: 10.0)
        
        var square = Rect(origin: xpoint)
        square.size = xsize
        
        let initialSquareCenter = square.center
        square.center = Point(x: 15.0, y: 15.0)
        println("square.origin is now at (\(square.origin.x), \(square.origin.y))")
        // 输出 "square.origin is now at (10.0, 10.0)”
        
        
        //xsize.width = 0.0;
        //square.
        
        
        //类型属性语法   静态常量和静态变量的定义是通过特定类型加上global关键字。在 Swift 编程语言中，类型属性是作为类型定义的一部分写在类型最外层的花括号内，因此它的作用范围也就在类型支持的范围内。
        
        println(SomeClass.computedTypeProperty)
        
        println(SomeStructure.storedTypeProperty)
        
        SomeStructure.storedTypeProperty = "Another value."
        println(SomeStructure.storedTypeProperty)
    }
}
