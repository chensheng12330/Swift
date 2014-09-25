//
//  SHAutomaticReferenceCounting.swift
//  SwiftTest
//
//  Created by sherwin on 14-9-25.
//  Copyright (c) 2014年 sherwin. All rights reserved.
//  自动引用计数

import UIKit

class Person {
    let name: String
    init(name:String){
        self.name = name;
        println("\(name) is being initialized")
    }
    
    deinit{
        //var ttName:String? = self.name;
        //ttName = nil;
        
        println("\(name) is being deinitialized")
    }
}


class SHAutomaticReferenceCounting: SHWObject {
    override func GoTest() {
        
        var reference1: Person?
        weak var reference2: Person?
        unowned var reference3: Person
        
        reference1 = Person(name: "My Name?");
        reference2 = reference1;
        reference3 = reference2!;
        
        //强引用模式
        reference1 = nil;
        reference1 = nil;
        reference2 = nil;
        ///reference3 = nil;
        
        var country:Country = Country(name: "china", capitalName: "beijing");
        var city:City? = City(name: "shenzheng", country: country)
        
        city = nil;
        
        
        var paragraph:HTMLElement? = HTMLElement(name: "p", text: "hello");
        println(paragraph!.asHTML());
        paragraph = nil;
    }
}


class Country {
    let name: String
    let capitalCity: City!
    init(name: String, capitalName: String) {
        self.name = name
        self.capitalCity = City(name: capitalName, country: self)
    }
    deinit{
        println("Country is being deinitialized");
    }
}

class City {
    let name: String
    unowned let country: Country
    init(name: String, country: Country) {
        self.name = name
        self.country = country
    }
    
    deinit{
        println("City is being deinitialized");
    }
}

class HTMLElement{
    let name:String = ""
    let text:String?
    
    lazy var asHTML:() ->String = {
        [unowned self] in
        if let text = self.text{
            return "<\(self.name)>\(text)</\(self.name)>";
        }
        else{
            return "<\(self.name) />";
        }
    }
    
    init(name:String, text:String?=nil)
    {
        self.name = name;
        self.text = text;
    }
    
    deinit{
        println("\(name) is being deinitialized");
    }
}
