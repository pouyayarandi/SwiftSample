
func toSeconds(time: String) -> (Int) -> Int {
    switch time {
        case "hour": return { $0 * 60 * 60 }
        case "minute": return { $0 * 60 }
        default: return { $0 }
    }
}

let timesInMin = [2, 10, 15, 1]
let min2sec = toSeconds(time: "minute")

let timesInSec = timesInMin.map(min2sec)
// let timesInSec = timesInMin.map { min2sec($0) }

print(timesInSec) // [120, 600, 900, 60]
