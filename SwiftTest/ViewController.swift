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

        var t0:letOrVar = letOrVar();
        //tt.GoTest();
        
        var t1:Operators = Operators();
        //t1.GoTest();
        
        var t2:SHString = SHString();
        //t2.GoTest();
        
        var t3:SHCollection = SHCollection();
        //t3.GoTest();
        
        var t4:SHControlFlow = SHControlFlow();
        //t4.GoTest();
        
        var t5:Classes1Structures = Classes1Structures();
        //t5.GoTest();
        
        var t6:SHProperties = SHProperties();
        //t6.GoTest();
        
        var t7:SHMethods = SHMethods();
        t7.GoTest();
        
        var t8:SHSubscripts = SHSubscripts();
        //t8.GoTest();
        
    }
}

