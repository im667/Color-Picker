//
//  Observerble.swift
//  Color-Picker-ProtoType
//
//  Created by mac on 2022/03/18.
//

import Foundation

class Observable<T>{
    private var listener: ( (T) -> Void )?
    
    var value: T{
        didSet {
            listener?(value)
        }
    }
    
    init(_ value: T){
        self.value = value
    }
    
    func bind(_ closure: @escaping (T)-> Void){
        closure(value)
        listener = closure
    }
    
}
