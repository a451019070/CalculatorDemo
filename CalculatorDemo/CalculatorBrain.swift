//
//  CalculatorBrain.swift
//  CalculatorDemo
//
//  Created by ZX on 2020/3/11.
//  Copyright © 2020 ZX. All rights reserved.
//

import UIKit


enum CalculatorBrain {
    case left(String)
    case leftOp(
        left:String,
        op:CalculatorButtonItem.Op
    )
    case leftOpRight(
        left:String,
        op:CalculatorButtonItem.Op,
        right:String
    )
    case error
}
