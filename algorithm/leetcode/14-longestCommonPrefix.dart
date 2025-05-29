/**
 * 编写一个函数来查找字符串数组中的最长公共前缀。
 * 如果不存在公共前缀，返回空字符串 ""。
 * 
 * 示例:
 * input: strs = ["flower","flow","flight"]     output: "fl"
 * input: strs = ["dog","racecar","car"]     output: ""
 * 
 * 提示
 * 1. 1 <= strs.length <= 200
 * 2. 0 <= strs[i].length <= 200
 * 3. strs[i] 如果非空，则仅由小写英文字母组成
 * */

class Solution {
  String longestCommonPrefix(List<String> strs) {
    String maxPrefix = strs[0];
    for (var i = 1; i < strs.length; i++) {
      String curStr = strs[i];
      if (maxPrefix.length > curStr.length) {
        maxPrefix = maxPrefix.substring(0, curStr.length);
      }
      while (curStr.startsWith(maxPrefix) == false && maxPrefix.isNotEmpty) {
        if (maxPrefix.length > 0) {
          maxPrefix = maxPrefix.substring(0, maxPrefix.length - 1);
        }
      }
    }
    return maxPrefix;
  }
}

void main () {
  Solution s = Solution();

  print(s.longestCommonPrefix(["flower","flow","flight"]));
  print(s.longestCommonPrefix(["dog","racecar","car"]));
  print(s.longestCommonPrefix(["reflower","racecar","car"]));
}
