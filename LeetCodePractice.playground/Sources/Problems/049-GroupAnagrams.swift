import Foundation

public class GroupAnagramsSolution {
    public static func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict: [String: [String]] = [:]
        for word in strs {
            let sortedWord = String(word.sorted())
            if dict[sortedWord] == nil {
                dict[sortedWord] = [word]
            } else {
                dict[sortedWord]?.append(word)
            }
        }
        return dict.map({ $0.value })
    }
}
