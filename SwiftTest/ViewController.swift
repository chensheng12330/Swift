//
//  ViewController.swift
//  SwiftTest
//
//  Created by sherwin on 14-6-13.
//  Copyright (c) 2014年 sherwin. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var tag=10;
        
        switch tag{
        case 0:
            var t0:letOrVar = letOrVar();
            t0.GoTest();
            
        case 1:
            var t1:Operators = Operators();
            t1.GoTest();
        case 2:
            var t2:SHString = SHString();
            t2.GoTest();
        case 3:
            var t3:SHCollection = SHCollection();
            t3.GoTest();
        case 4:
            var t4:SHControlFlow = SHControlFlow();
            t4.GoTest();
        case 5:
            var t5:Classes1Structures = Classes1Structures();
            t5.GoTest();
        case 6:
            var t6:SHProperties = SHProperties();
            t6.GoTest();
        case 7:
            var t7:SHMethods = SHMethods();
            t7.GoTest();
        case 8:
            var t8:SHSubscripts = SHSubscripts();
            t8.GoTest();
            
        case 9:
            var t9:SHInheritance = SHInheritance();
            t9.GoTest();
        case 10:
            var t10:SHAutomaticReferenceCounting = SHAutomaticReferenceCounting();
            t10.GoTest();
        default:
            break
        }
    }
}

