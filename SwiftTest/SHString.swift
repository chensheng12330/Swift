//
//  SHString.swift
//  SwiftTest
//
//  Created by sherwin on 14-8-5.
//  Copyright (c) 2014年 sherwin. All rights reserved.
//

import UIKit

class SHString: SHWObject {
   override func GoTest(){
    
    //不同格式的 Unicode 标量
    let wiseWords = "\"我是要成为海贼王的男人\" - 路飞"
    // "我是要成为海贼王的男人" - 路飞
    let dollarSign = "\u{24}"
    let blackHeart = "\u{2665}"
    let sparklingHeart = "\u{0001F496}"
    
    NSLog(dollarSign,blackHeart,sparklingHeart);
    println("\(dollarSign)  \(blackHeart) \(sparklingHeart)");
    
    
    // 操作
    
    var mystr:String = "abc";
    var mystr1 = String();
    
    mystr += "def";
    //mystr -= "ab";
    println(mystr);
    println(mystr1);
    
    if mystr.isEmpty
    {
        println("是空的");
    }
    else
    {
         println("不是空的");
    }
    
    //
    for character in "Dog!🐶" {
        println(character)
    }
    
    
    
    }
}
