# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names Shane Roy, Luke Wallack. #59

## Summary
In this lab we created a half-subtractor, which subtracts two bits to give an output bit and a carry bit.
We also implemented a 4-bit one's complement adder, which is capable of adding two signed numbers between 7 and -7.
It works by chaining full-adders together, and then wrapping around the output carry at the end. This results in 8 total full-adders.
The third part of this lab was implementing an 8-bit 2's complement converter, which converts a number into it's negative 2's complement counterpart. It does this by flipping all of the bits to their opposite value, then adding 1. It is also implemented
with 9 total full-adders.

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
The half-adder carry is A&B, while the half-subtractor borrow is ~A&B. This is the only difference between these two circuits,
the borrow being the subtractor's equivalent of carry.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
It requires the use of 2n full-adders, rather than just n, where n is the length of the bitstring. This is because wrapping
the carry aroud requires an additional addition operation, requiring another full set of full-adders.

### 3 - What is the edge case and problem with Two’s Complement number representation?
The distribution of numbers is asymmetric, because space must be allocated for 0. For example, with a bit width of 4 this results in
positive numbers only being able to go up to 7, while negatives go down to negative 8. Another problem is that it is harder to read
by humans, as the numbers jump from positive 7 to -8 with the addition of 1 bit.

