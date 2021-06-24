//
//  Date.swift
//  music-service
//
//  Created by Artur Luis on 23/06/21.
//

import Foundation


struct DateService {
    static func formatDuration(duration: TimeInterval) -> String {
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .abbreviated
        formatter.allowedUnits = [ .minute, .second ]
        formatter.zeroFormattingBehavior = [ .pad ]

        let formattedDuration = formatter.string(from: duration)
        return formattedDuration ?? ""
    }
    
    static func formatDate(date: Date) -> String {
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "MMM dd,yyyy"
        return dateFormatterPrint.string(from: date)
    }
    
}
