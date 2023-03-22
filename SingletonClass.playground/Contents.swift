import UIKit

struct UserInfo {
    var firstName: String
    var lastName: String // The data name which is received from login api
}

var objUserInfo:UserInfo?

class Singleton{
    static let shared = Singleton()
    private init(){}
    func getUserInfo() -> UserInfo?{
        return objUserInfo
    }
    func updateUserInfo(updateduserinfo: UserInfo) -> (){
        objUserInfo = updateduserinfo
    }
}

class user{
    func getUser() -> UserInfo? {
        return Singleton.shared.getUserInfo() // To get userInfo in object.
    }
    func updateUserInfo(userDetails:UserInfo) -> (){
        Singleton.shared.updateUserInfo(updateduserinfo: userDetails)
    }
}

let objUser = user()
objUser.updateUserInfo(userDetails: UserInfo(firstName: "First Name", lastName: "Last Name"))
objUser.getUser()

if let USER = objUser.getUser(){
    print(USER.firstName)
    print(USER.lastName)
}
