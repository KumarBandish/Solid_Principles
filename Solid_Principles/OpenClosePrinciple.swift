//
//  OpenClosePrinciple.swift
//  Solid_Principles
//
//  Created by Bandish Kumar on 16/11/24.
//

import Foundation

///Before Applying OCP
class NotificationHandler {
    func sendNotification(type: String) {
        if type == "email" {
            // Send email notification
            handleEmailNotification("email@example.com")
        } else if type == "sms" {
            // Send SMS notification
            let sms = "Hello World"
            handleSMSNotification(sms)
        }
    }
    
    func handleEmailNotification(_ email: String) {
        
    }
    
    func handleSMSNotification(_ sms: String) {
        
    }
}

///After Applying OCP
protocol Notification {
    func send()
}


class EmailNotificationHandler: Notification {
    func send() {
        debugPrint("Sending Email Notification")
    }
    
   
}

class SMSNotificationHandler: Notification {
    func send() {
        debugPrint("Sending SMS Notification")
    }
    
}


class NotificationHandler1 {
    func sendNotification(_ notification: Notification) {
        notification.send()
    }
}

///Add New Notification Types Without Modifying Existing Code:

class PushNotificationHandler: Notification {
    func send() {
        debugPrint("Sending Push Notification")
    }
}

//Benefits:
///1.Scalability: Easily add new features without modifying existing code.
///2.Maintainability: Code is easier to understand and maintain.
///3.Flexibility: Promotes the use of interfaces and abstractions, making your code more flexible.


//For more info: https://www.codeproject.com/Articles/5387687/Methods-to-Implement-the-Open-Closed-Principle-OCP
