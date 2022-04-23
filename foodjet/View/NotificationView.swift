//
//  NotificationView.swift
//  foodjet
//
//  Created by Natdanai Chaiyakan on 23/3/2565 BE.
//

import SwiftUI

struct NotificationView: View {
    @ObservedObject var datas = ReadNotificationData()
    
    var body: some View {
        NavigationView {
            List(datas.notificationList) { notification in
                NotificationItemView(title: notification.title,time: notification.time,desc: notification.description)
            }.navigationTitle(Text("Notification")).listStyle(InsetGroupedListStyle())
        }
    }
}

struct NotificationItemView: View {
    var title: String
    var time: String
    var desc: String
    
    init(title: String, time: String, desc: String) {
        self.title = title
        self.time = time
        self.desc = desc
    }
    
    var body: some View {
        HStack(spacing : 20) {
            VStack(alignment: .leading, spacing: -20) {
                HStack {
                    Text(title).bold().frame(height: 50)
                    Spacer()
                    Text(time).frame(height: 50)
                }
                HStack(alignment: .lastTextBaseline) {
                    Text(desc).frame(height: 50).font(.caption2)
                }
            }
            Circle().fill(Color.orangeLight).frame(width: 10, height: 10)
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}

class ReadNotificationData: ObservableObject  {
    @Published var notificationList = [NotificationItem]()

        
    init(){
        loadData()
    }
    
    func loadData()  {
        guard let url = Bundle.main.url(forResource: "MockNotification", withExtension: "json")
            else {
                print("Json file not found")
                return
            }
        
        let data = try? Data(contentsOf: url)
        let notification = try? JSONDecoder().decode([NotificationItem].self, from: data!)
        self.notificationList = notification!
    }
}
