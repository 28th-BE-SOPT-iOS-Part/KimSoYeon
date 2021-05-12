//
//  NetworkResult.swift
//  AssignmentWeek1
//
//  Created by soyeon on 2021/05/12.
//

import Foundation

enum NetworkResult<T> {
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
}
