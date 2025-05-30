/**
 * 给定一个只包括 '('，')'，'{'，'}'，'['，']' 的字符串 s ，判断字符串是否有效。
 * 
 * 有效字符串需满足：
 * 1. 左括号必须用相同类型的右括号闭合。
 * 2. 左括号必须以正确的顺序闭合。
 * 3. 每个右括号都有一个对应的相同类型的左括号。
 * 
 *  * 示例:
 * input: s = "()"         output: true
 * input: s = "()[]{}"     output: true
 * input: s = "(]"         output: false
 * input: s = "([])"       output: true
 * input: s = "])"         output: false
 * input: s = '(){}}{'     output: false
 * 
 * 1 <= s.length <= 104
 * s 仅由括号 '()[]{}' 组成
 */

class Solution {
  bool isValid(String s) {
    List<String> uniqueSymbol = [];
    Map<String, String> bracketsMap = {
      "(": ")",
      "[": "]",
      "{": "}"
    };
    for (var i = 0; i < s.length; i++) {
      if (bracketsMap.containsValue(s[i])) {
        if (uniqueSymbol.length > 0 && bracketsMap[uniqueSymbol.last] == s[i]) {
          uniqueSymbol.removeLast();
        } else {
          return false;
        }
      } else {
        uniqueSymbol.add(s[i]);
      }
    }
    return uniqueSymbol.isEmpty;
  }
}

class Solution2 {
  bool isValid(String s) {
    List<String> uniqueSymbol = [];
    for (var i = 0; i < s.length; i++) {
      if (s[i] == '(') {
        uniqueSymbol.add(')');
      } else if (s[i] == '[') {
        uniqueSymbol.add(']');
      } else if (s[i] == '{') {
        uniqueSymbol.add('}');
      } else if (s[i] != uniqueSymbol.last) {
        return false;
      } else {
        uniqueSymbol.removeLast();
      }
    }
    return uniqueSymbol.isEmpty;
  }
}

void main() {
  Solution s = Solution();

  print(s.isValid("()"));
  print(s.isValid("()[]{}"));
  print(s.isValid("(]"));
  print(s.isValid("([])"));
  print(s.isValid("])"));

  Solution solution = Solution();

  print(solution.isValid("()"));
  print(solution.isValid("()[]{}"));
  print(solution.isValid("(]"));
  print(solution.isValid("([])"));
  print(solution.isValid("])"));
}