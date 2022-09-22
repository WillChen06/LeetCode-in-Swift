import Foundation

public class MergeSortedArraySolution {
    public static func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var last = m + n - 1
        var m = m
        var n = n
        while m > 0 && n > 0 {
            if nums1[m - 1] > nums2[n - 1] {
                nums1[last] = nums1[m - 1]
                m -= 1
            } else {
                nums1[last] = nums2[n - 1]
                n -= 1
            }
            last -= 1
        }
        while n > 0 {
            nums1[last] = nums2[n - 1]
            n -= 1
            last -= 1
        }
    }
}
