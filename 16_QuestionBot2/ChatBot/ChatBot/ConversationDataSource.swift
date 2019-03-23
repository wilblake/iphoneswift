import Foundation
class ConversationDataSource {
    
    /// The number of Messages in the conversation
    var messageCount = 0
    var messages = [openingLine]
    // var messages = [Message]()
    
    /// Add a new question to the conversation
    func add(question: String) {
        var messageCount: Int {
            return messages.count
        }
        let message = Message(date:Date(), text: question, type: .question )
        messages.append(message)
        print("Asked to add question: \(question)")
    }
    
    /// Add a new answer to the conversation
    func add(answer: String) {
        // messageCount += 1
        var messageCount: Int {
            return messages.count
        }
        let message = Message(date:Date(), text: answer, type: .answer )
        messages.append(message)
        print("Asked to add answer: \(answer)")
    }
    
    /// The Message at a specific point in the conversation
    func messageAt(index: Int) -> Message {
        print("Asking for message at index \(index)")
        return messages[index]
        // return Message(date: Date(), text: "Hello, world!", type: .answer)
    }
}
