//
//  MemoStore.swift
//  SwiftUIMemo
//
//  Created by Nello on 2022/11/12.
//

import Foundation

class MemoStore: ObservableObject {
    @Published var list: [Memo]
    
    
    init() {
        list = [
            Memo(content: "hello", insertDate: Date.now),
            Memo(content: "뚜완", insertDate: Date.now.addingTimeInterval(3600 * -24)),
            Memo(content: "바보", insertDate: Date.now.addingTimeInterval(3600 * -48)),
            Memo(content: "메모", insertDate: Date.now.addingTimeInterval(3600 * -72))
        ]
    }
    
    func insert(memo: String) {
        list.insert(Memo(content: memo), at: 0)
    }
    
    func update(memo: Memo?, content: String) {
        guard let memo = memo else { return }
        
        memo.content = content
    }
    
    func delete(memo: Memo) {
        list.removeAll { $0.id == memo.id }
    }
    
    func delete(set: IndexSet) {
        for index in set {
            list.remove(at: index)
        }
    }
}
