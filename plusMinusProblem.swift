import Foundation

// Complete the plusMinus function below.
func plusMinus(arr: [Int]) -> Void {
    var positive : Float = 0.0 , negative : Float = 0.0 , zero : Float  = 0.0
    var arrayCount = Float(arr.count)
    for index in arr {
        if index < 0 {
            negative += 1
        }else if index == 0 {
            zero += 1
        }else {
            positive += 1
        }
    }
    var positiveRatio = positive / arrayCount
    var negativeRatio = negative / arrayCount
    var zeroRatio = zero / arrayCount
    print(positiveRatio)
    print(negativeRatio)
    print(zeroRatio)
}

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let arrTemp = readLine() else { fatalError("Bad input") }
let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }

plusMinus(arr: arr)
