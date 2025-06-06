/**
 * 28. 找出字符串中第一个匹配项的下标
 * 给你两个字符串 haystack 和 needle ，请你在 haystack 字符串中找出 needle 字符串的第一个匹配项的下标（下标从 0 开始）。
 * 如果 needle 不是 haystack 的一部分，则返回  -1 
 * 
 *  输入：haystack = "sadbutsad", needle = "sad"
    输出：0
    解释："sad" 在下标 0 和 6 处匹配。
    第一个匹配项的下标是 0 ，所以返回 0 。

    输入：haystack = "leetcode", needle = "leeto"
    输出：-1
    解释："leeto" 没有在 "leetcode" 中出现，所以返回 -1 。
 */

class Solution {
  int strStr(String haystack, String needle) {
    int hLen = haystack.length;
    int nLen = needle.length;

    if (needle.isEmpty) return 0;
    if (hLen < nLen) return -1;

    for (int i = 0; i <= hLen - nLen; i++) {
      int k = i;
      int m = 0;
      while(m < nLen && haystack[k] == needle[m]) {
        k++;
        m++;
      }

      if (m == nLen) {
        return i;
      }
    }
    return -1;
  }
}

void main() {
  Solution s = Solution();
  print(s.strStr('sadbutsad', 'sad'));
  print(s.strStr('leetcode', 'leeto'));
  print(s.strStr('hello', 'll'));
  print(s.strStr('heo33ll', 'll'));
  print(s.strStr('a', 'a'));
}