/**
 * 给你一个整数 x ，如果 x 是一个回文整数，返回 true ；否则，返回 false 。
 * 回文数是指正序（从左向右）和倒序（从右向左）读都是一样的整数。
 * 例如，121 是回文，而 123 不是。
 */

/**
 * 输入：x = 121  输出：true
 * 输入：x = -121  输出：false
 * 输入：x = 10  输出：false
 */

class Solution {
  bool isPalindrome(int x) {
    if (x < 0) {
      return false;
    }

    String xString = x.toString();
    bool flag = true;

    final int xStringLength = xString.length;
    for(var i = 0; i < (xStringLength / 2).floor(); i++) {
      if (xString[i] != xString[xStringLength - 1 - i]) {
        flag = false;
        break;
      }
    }

    return flag;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.isPalindrome(-909));
  print(solution.isPalindrome(-908));
  print(solution.isPalindrome(908));
  print(solution.isPalindrome(0));
  print(solution.isPalindrome(909));
}

/**
 * 优化思路:
 * 负数可以直接返回 false
 * %10 生成新的数据
 * 两套数据相比<个数 分奇数 和 偶数>
 */