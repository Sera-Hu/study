/**
 * 给定一个整数数组 nums 和一个整数目标值 target
 * 请你在该数组中找出 和为目标值 target  的那 两个 整数，并返回它们的数组下标。
 * 你可以假设每种输入只会对应一个答案，并且你不能使用两次相同的元素。
 * 你可以按任意顺序返回答案。
 * */

/** 
 * input nums = [2,7,11,15], target = 9
 * output [0,1]
 * 因为 nums[0] + nums[1] == 9 ，返回 [0, 1]
 * 
 * */

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    var numArrMap = {}; // 记录格式 [相加的第二个数]: [第一个数的索引值]
    List<int> finallyRes = []; // 返回结果
    for(var i = 0; i < nums.length; i++) {
      if (numArrMap.containsKey(nums[i])) { // 当前已保存数据中是否包含 遍历到的数字nums[i], 如果包含则表示有这个数据,那么就可以赋值返回.
        finallyRes = [i, numArrMap[nums[i]]];
        break;
      } else {
        numArrMap[target - nums[i]] = i; // 按照numArrMap格式进行赋值
      }
    }

    return finallyRes;
  }
}

void main () {
  Solution solution = Solution();

  solution.twoSum([3,3], 6);
}
