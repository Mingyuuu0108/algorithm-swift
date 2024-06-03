func solution(_ str1:String, _ str2:String) -> String {

    var result = ""
    for idx in str1.indices {
        result.append(String(str1[idx]) + String(str2[idx]))
    }
    return result
}
