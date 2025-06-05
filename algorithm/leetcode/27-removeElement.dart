/**
 * 27. 移除元素
 * 给你一个数组 nums 和一个值 val，你需要 原地 移除所有数值等于 val 的元素。
 * 元素的顺序可能发生改变。然后返回 nums 中与 val 不同的元素的数量。
 * 
 * 假设 nums 中不等于 val 的元素数量为 k，要通过此题，您需要执行以下操作：
 * 更改 nums 数组，使 nums 的前 k 个元素包含不等于 val 的元素。nums 的其余元素和 nums 的大小并不重要。
 * 返回 k。
 * 
 * 
 * 评测机将使用以下代码测试您的解决方案：
    int[] nums = [...]; // 输入数组
    int val = ...; // 要移除的值
    int[] expectedNums = [...]; // 长度正确的预期答案。
                                // 它以不等于 val 的值排序。
    int k = removeElement(nums, val); // 调用你的实现
    assert k == expectedNums.length;
    sort(nums, 0, k); // 排序 nums 的前 k 个元素
    for (int i = 0; i < actualLength; i++) {
      assert nums[i] == expectedNums[i];
    }
  * 如果所有的断言都通过，你的解决方案将会 通过。

  * input: nums = [3,2,2,3], val = 3            output: 2, nums = [2,2,_,_]
  * input: nums = [0,1,2,2,3,0,4,2], val = 2    output: 5, nums = [0,1,4,0,3,_,_,_]
 */

class Solution {
  int removeElement(List<int> nums, int val) {
    int j = 0; // 有几个呢?
    
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != val) {
        nums[j] = nums[i];
        j++;
      }
    }

    return j;
  }
}

void main () {
  Solution s = Solution();

  print(s.removeElement([3,2,2,3], 2));
  print(s.removeElement([0,1,2,2,3,0,4,2], 2));
}