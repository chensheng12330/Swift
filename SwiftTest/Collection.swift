//
//  Collection.swift
//  SwiftTest
//
//  Created by sherwin on 14-8-21.
//  Copyright (c) 2014年 sherwin. All rights reserved.
//

import UIKit

class SHCollection: SHWObject {
    
    var shoppingList:[String] = ["a","b"]
    
    override func GoTest()
    {
        outPutArray(shoppingList);
        
        var intAr = [1,2,3,4];
        outPutArray(intAr);
        
        if shoppingList.isEmpty
        {
            println("空的");
        }
        
        shoppingList.append("cdef");
        
        //shoppingList += "hig";
        
        shoppingList += ["j","k","l","m"];
        
        //shoppingList
        outPutArray(shoppingList);
        
        //索引值
        for (index, value) in enumerate(shoppingList) {
            println("Item \(index + 1): \(value)")
        }
        
        var someInts = [Int]()
        println("someInts is of type Int[] with \(someInts.count) items.")
        someInts.append(3)
        outPutArray(someInts);
        // someInts现在包含了一个整型值
        someInts = []
        outPutArray(someInts);
        
        
        var threeDoubles = [Double](count: 3, repeatedValue: 0.0)
        var anotherThreeDoubles = Array(count: 3, repeatedValue: 2.5)
        outPutArray(threeDoubles)
        outPutArray(anotherThreeDoubles)
        
        
        var airports: Dictionary<String, String> = ["TYO": "Tokyo", "DUB": "Dublin"]
        outPutDiction(airports);
        
        println("The dictionary of airports contains \(airports.count) items.")
        
        airports["CHS"] = "Beijin";
        
        airports["CHS"] = "SHAHAI";
        outPutDiction(airports);
        
        //更新判断
        if let oldValue = airports.updateValue("Dublin International", forKey: "DUB") {
            println("The old value for DUB was \(oldValue).")
        }
        
        //删掉
        airports["TYO"] = nil
        outPutDiction(airports);
        
        //删掉判断
        if let removedValue = airports.removeValueForKey("DUB") {
            println("The removed airport's name is \(removedValue).")
        } else {
            println("The airports dictionary does not contain a value for DUB.")
        }
        
        
        var namesOfIntegers = Dictionary<Int, String>()
        
        namesOfIntegers[16] = "sixteen"
        // namesOfIntegers现在含有1个键值对
        
        //outPutDiction(namesOfIntegers)
        println(namesOfIntegers)
        
        namesOfIntegers = [:]
        // namesOfIntegers又成为一个类型为Int，String的空字典
        //outPutDiction(namesOfIntegers)
        println(namesOfIntegers)
        
        
    }
    
    func outPutArray(ary:Array<AnyObject>)
    {
        //AnyObject
        //AnyClass
        
        for str in ary
        {
            println("classN: \(str) value:\(str)");
        }
    }
    
    func outPutDiction(dict:Dictionary<String,AnyObject>)
    {
        for(key,value) in dict
        {
            println("key:\(key) value:\(value)");
        }
    }
}
