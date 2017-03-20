//: Playground - noun: a place where people can play

import Cocoa



var swStr = "Hello Swift"
var sss : NSString = "Hello Swift"


var s = swStr.substringToIndex(swStr.startIndex.advancedBy(3))
var sa = swStr.substringWithRange(swStr.startIndex.advancedBy(1)...swStr.startIndex.advancedBy(4))
var sp = swStr.characters.split(" ")
print(String(sp))
for i in sp{
    print(String(i))
}
print("🙂")