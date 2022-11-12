//
//  Memo.swift
//  SwiftUIMemo
//
//  Created by 형욱 on 2022/11/12.
//

import Foundation
import SwiftUI

class Memo: Identifiable, ObservableObject {
    // Identifiable: 데이터를 리스트에 쉽게 바인딩 하기 위해서 사용
    // ObservedObject: 메모를 편집할 떄 뷰를 자동으로 업데이트 하기 위해 사용
    let id: UUID
    @Published var content: String
    let insertDate: Date
    
    init(content: String, insertDate: Date = Date.now) {
        id = UUID()
        self.content = content
        self.insertDate = insertDate
    }
    
}
