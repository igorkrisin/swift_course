import UIKit

func test() -> String {
    var text = "Hello"
    
    defer {
        text = "выход"
    }
    
    text = "World"
    return text
    
}

print(test())
