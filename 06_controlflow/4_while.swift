let maxRetry = 3
var retryCount = 0

while retryCount < maxRetry {
    print("[while]", "It's #\(retryCount) retry")
    retryCount += 1
}

retryCount = 0

repeat {
    print("[repeat]", "It's #\(retryCount) retry")
    retryCount += 1
} while retryCount < maxRetry
