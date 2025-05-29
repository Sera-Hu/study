/**
 * 冒泡排序 (Bubble Sort)
 * 相邻元素两两比较，大的往后冒泡。
 * 时间复杂度：O(n²)（最坏/平均）
 * 
 * 9 7 6 8
 * 
 * 第一层循环 9 7 6 8
 *      第二层循环 9 7 6 8
 *      第二层循环 7 9 6 8
 *      第二层循环 7 6 9 8
 *      第二层循环 7 6 8 9
 * 第一层循环 7 6 8 9
 *      第二层循环 6 7 8 9 
 */

void main() {

  List<int> bubbleSort (List<int> arrs) {
    for (var i = 0; i < arrs.length - 1; i++) {
      for (var j = 0; j < arrs.length - 1; j++) {
        if (arrs[j] > arrs[j + 1]) {
          var temp = arrs[j];
          arrs[j] = arrs[j + 1];
          arrs[j + 1] = temp;
        }
      }
    }
    return arrs;
  }

  print(bubbleSort([9, 8, 5, 3, 7, 9]));
}