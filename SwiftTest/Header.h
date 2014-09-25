//
//  Header.h
//  SwiftTest
//
//  Created by sherwin on 14-9-23.
//  Copyright (c) 2014年 sherwin. All rights reserved.
//

#ifndef SwiftTest_Header_h
#define SwiftTest_Header_h


#endif

/*
 SHInheritance.swift
 
 定义一个基类（Base class）
 子类生成（Subclassing）
 重写（Overriding）
 防止重写
 
 在 Swift 中，类可以调用和访问超类的方法，属性和附属脚本（subscripts），
 并且可以重写（override）这些方法，属性和附属脚本来优化或修改它们的行为。
 Swift 会检查你的重写定义在超类中是否有匹配的定义，以此确保你的重写行为是正确的。
 
 可以为类中继承来的属性添加属性观察器（property observer），
 这样一来，当属性值改变时，类就会被通知到。可以为任何属性添加属性观察器，
 无论它原本被定义为存储型属性（stored property）还是计算型属性（computed property）。
 
 */


/*
 防止重写
 你可以通过把方法，属性或附属脚本标记为final来防止它们被重写，只需要在声明关键字前加上@final特性即可。（例如：@final var, @final func, @final class func, 以及 @final subscript）
 */


/*
 //--弱引用和无主引用
 //--当闭包和占有的实例总是互相引用时并且总是同时销毁时，将闭包内的占有定义为无主引用。
 */