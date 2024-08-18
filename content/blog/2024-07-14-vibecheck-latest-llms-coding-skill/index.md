+++
title = "Vibe Checking Claude 3.5, DeepSeek-Coder-V2, and GPT-4o for \"Alien\" Coding Skills"
description = "This evaluation provides insights into the current capabilities of leading AI models in solving complex coding problems. While Claude 3.5 Sonnet showed superior performance in this specific task, all models demonstrated the ability to produce correct solutions with varying degrees of assistance. These findings underscore the importance of conducting independent evaluations to verify public benchmarks and understand the nuanced strengths and limitations of different AI models."
date = 2024-07-14T00:00:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["llm", "gpt", "ai_coding", "ai"]

[extra]
ToC = true
+++

## Introduction

In the world of AI and LLM, it's often said that "vibe checks" can provide valuable insights into model performance. With this in mind, I've conducted a brief evaluation of Claude 3.5 Sonnet, DeepSeek-Coder-V2, and GPT-4o to assess their capabilities in solving complex coding problems. This evaluation aims to provide a better intuition of these models' strengths and weaknesses, verifying findings published in public benchmarks and leaderboards.

## Evaluation Design

For this assessment, I selected a challenging problem from recent competitive coding competitions (2023 onwards). The chosen problem, ["Power of Heroes"](https://leetcode.com/problems/power-of-heroes/description/), is a dynamic programming challenge that requires advanced knowledge of algorithms and data structures. This problem was selected because:

1. It's considered contamination-free [^1], meaning it's unlikely to have been included in the training data of these models.
2. Dynamic programming is generally regarded as one of the most difficult areas in competitive coding.

Disclaimer: I'm not an expert in algorithm and data structure by any means.

### The Prompt

```
Using Python, code a solution for the following prompt:
Description: You are given a 0-indexed integer array nums representing the strength of some heroes. The power of a group of heroes is defined as follows:

Let i_0, i_1, ... ,i_k be the indices of the heroes in a group. Then, the power of this group is max(nums[i_0], nums[i_1], ... ,nums[i_k])^2 * min(nums[i_0], nums[i_1], ... ,nums[i_k]).

Return the sum of the power of all non-empty groups of heroes possible. Since the sum could be very large, return it modulo 10^9 + 7.
 
## Example 1:

Input: nums = [2,1,4]
Output: 141
Explanation:
1^st group: [2] has power = 2^2 * 2 = 8.
2^nd group: [1] has power = 1^2 * 1 = 1. 
3^rd group: [4] has power = 4^2 * 4 = 64. 
4^th group: [2,1] has power = 2^2 * 1 = 4. 
5^th group: [2,4] has power = 4^2 * 2 = 32. 
6^th group: [1,4] has power = 4^2 * 1 = 16. 
7^th group: [2,1,4] has power = 4^2 * 1 = 16. 
The sum of powers of all groups is 8 + 1 + 64 + 4 + 32 + 16 + 16 = 141.


## Example 2:

Input: nums = [1,1,1]
Output: 7
Explanation: A total of 7 groups are possible, and the power of each group will be 1. Therefore, the sum of the powers of all groups is 7.

 
## Constraints:

1 <= nums.length <= 10^5
1 <= nums[i] <= 10^9


Begin your solution with:
Title: Power of Heroes
```

Note that I didn't optimize the prompt for different models. All three models were given the same prompt.

## Results

### Claude 3.5 Sonnet

**Pass@1 (zero-shot):** Correct solution

Amazing first try!

```python
class Solution:
    def sumOfPower(self, nums: List[int]) -> int:
        MOD = 10**9 + 7
        nums.sort()
        total_power = 0
        running_sum = 0

        for i, num in enumerate(nums):
            # Calculate the power of groups ending with this number
            power = (num * num % MOD) * num % MOD
            total_power = (total_power + power) % MOD

            # Calculate the power of groups where this number is the maximum
            if i > 0:
                group_power = (num * num % MOD) * running_sum % MOD
                total_power = (total_power + group_power) % MOD

            # Update the running sum for the next iteration
            running_sum = (running_sum * 2 + num) % MOD

        return total_power

# Test cases
solution = Solution()

# Example 1
nums1 = [2, 1, 4]
print(solution.sumOfPower(nums1))  # Expected output: 141

# Example 2
nums2 = [1, 1, 1]
print(solution.sumOfPower(nums2))  # Expected output: 7
```

{{ figure(src="claude35-sonnet-superhuman-coding.png",
       style="width: 100%;",
       position="center"
       caption_position="center",
       caption="Figure 1: Claude 3.5 Sonnect coding is on a different level, far better than GPT-4o."
       caption_style="font-weight: normal; font-style: normal;") }}

It can detect the subtleties in the given coding problem. You can see it in its problem solving approach. For example, I think many of us will miss the step for sorting the `nums` array first.

Claude 3.5 even go further and write the code with good coding practices+standard -- it make a Python class for organizing the code instead of just putting Python functions at top level file. I think the code has been optimized for Big O too.

Overall, this is really good.

### DeepSeek-Coder-V2

**Pass@1 (zero-shot):** Incorrect solution

The first print statement output 125. The second print statement output 6.

```python
def sum_of_power(nums):
    MOD = 10**9 + 7
    nums.sort()
    n = len(nums)
    prefix_sum = [0] * (n + 1)
    
    for i in range(n):
        prefix_sum[i + 1] = (prefix_sum[i] + nums[i]) % MOD
    
    total_power = 0
    for i in range(n):
        max_val = nums[i]
        min_val = nums[i]
        total_power = (total_power + (max_val ** 2) * min_val) % MOD
        
        for j in range(i + 1, n):
            max_val = max(max_val, nums[j])
            min_val = nums[i]
            total_power = (total_power + (max_val ** 2) * min_val) % MOD
    
    return total_power

# Example 1
nums1 = [2, 1, 4]
print(sum_of_power(nums1))  # Output: 141

# Example 2
nums2 = [1, 1, 1]
print(sum_of_power(nums2))  # Output: 7
```

**Pass@2 (with tips):** Correct solution

I modified the prompt by giving some tips for solving the problem.

Prompt:

```
(... truncated ...)

## Constraints:

1 <= nums.length <= 10^5
1 <= nums[i] <= 10^9

## Tips

Sort the nums array first.


Begin your solution with:
Title: Power of Heroes
```

I tell it to "sort the nums array first.".

Now, the solution is correct.

```python
def sum_of_power(nums):
    MOD = 10**9 + 7
    nums.sort()
    n = len(nums)
    total_power = 0
    prefix_sum = 0
    
    for i in range(n):
        total_power = (total_power + (nums[i] ** 2) * (prefix_sum + nums[i])) % MOD
        prefix_sum = (prefix_sum * 2 + nums[i]) % MOD
    
    return total_power

# Example 1
nums1 = [2, 1, 4]
print(sum_of_power(nums1))  # Output: 141

# Example 2
nums2 = [1, 1, 1]
print(sum_of_power(nums2))  # Output: 7
```

### GPT-4o

[Full conversation](https://chatgpt.com/share/8c7cbba5-b550-4825-8ec0-6e74562c761a)

**Pass@1 (zero-shot):** Incorrect solution

```python
def sum_of_power(nums):
    MOD = 10**9 + 7
    n = len(nums)
    nums.sort()
    
    max_sum = 0
    min_sum = 0
    
    # For each number, calculate its contribution to max and min values
    for i in range(n):
        max_sum = (max_sum + nums[i] * nums[i] * pow(2, i, MOD)) % MOD
        min_sum = (min_sum + nums[i] * pow(2, n - 1 - i, MOD)) % MOD

    # Final result is the product of max_sum and min_sum
    result = (max_sum * min_sum) % MOD
    
    return result

# Example usage
nums1 = [2, 1, 4]
nums2 = [1, 1, 1]

print(sum_of_power(nums1))  # Output: 141
print(sum_of_power(nums2))  # Output: 7
```

**Pass@2 (multi-turn chat, with debugging prompt):** Correct solution

I asked it to find the bug and fix the code.

  ```
  The print results is wrong. The first print output 876. This is wrong and should be 141. The second print output is also wrong and should be 7. Find the bug. Fix the code.
  ```
  
Now the solution is correct.

```python
def sum_of_power__fixed(nums):
    MOD = 10**9 + 7
    n = len(nums)
    total_power = 0
    
    for mask in range(1, 1 << n):
        group = [nums[i] for i in range(n) if mask & (1 << i)]
        max_val = max(group)
        min_val = min(group)
        power = (max_val ** 2) * min_val
        total_power = (total_power + power) % MOD
        
    return total_power

# Example usage
nums1 = [2, 1, 4]
nums2 = [1, 1, 1]

print(sum_of_power__fixed(nums1))  # Output: 141
print(sum_of_power__fixed(nums2))  # Output: 7
```

{% callout(class="note") %}
    I know the correct solution is not optimal. The evals is focusing on correctness, not Big O (time and space complexity).
    You can optimize the code to your heart content.
{% end %}

## Analysis

Claude 3.5 Sonnet demonstrated impressive coding skills, solving the problem correctly on the first attempt. Its solution showed an understanding of the problem's subtleties and employed good coding practices.

Both DeepSeek-Coder-V2 and GPT-4o initially failed to solve the problem correctly but were able to produce correct solutions with additional guidance. This suggests that while these models have strong coding capabilities, they may benefit from iterative problem-solving approaches or more specific prompts.

## Conclusion

This evaluation provides insights into the current capabilities of leading AI models in solving complex coding problems. While Claude 3.5 Sonnet showed superior performance in this specific task, all models demonstrated the ability to produce correct solutions with varying degrees of assistance. These findings underscore the importance of conducting independent evaluations to verify public benchmarks and understand the nuanced strengths and limitations of different AI models.


There you have it. I hope you find this useful.

---

## Ground Truth

Ground truth solution for sum of power algorithm.

```python
def power_of_heroes(nums):
    MOD = 10**9 + 7
    n = len(nums)
    stack = []
    max_val = 0
    total_power = 0

    for i in range(n):
        while stack and nums[i] > nums[stack[-1]]:
            j = stack.pop()
            k = stack[-1] if stack else -1
            max_val -= nums[j] * (j - k)
        k = stack[-1] if stack else -1
        max_val += nums[i] * (i - k)
        stack.append(i)
        total_power += max_val * nums[i]
        total_power %= MOD

    return total_power

# Example usage:
nums1 = [2, 1, 4]
print(power_of_heroes(nums1))  # Output: 141

nums2 = [1, 1, 1]
print(power_of_heroes(nums2))  # Output: 7
```

[^1]: [LiveCodeBench: Holistic and Contamination-Free Evaluation of Large Language Models for Code](https://livecodebench.github.io/)

---

Original text: [GitHub Gist](https://gist.github.com/cedrickchee/656c116e416dc70622aca68eb648e952)
