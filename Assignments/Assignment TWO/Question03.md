# Question 3 
## Why can’t we use a foreach loop for popping all the elements in a queue?

Queue indices change when elements are removed. If foreach advances to the next index,
it can miss elements that shifted into earlier positions.<br>
Let's see why, using q = '{10,20,30,40,50} and imagining that you pop the front during iteration.<br>
Initially, index 0 contains 10.<br>
After removing 10, the queue becomes {20,30,40,50}.<br>
Now index 0 contains 20, index 1 contains 30, and so on.<br>
That's why a foreach loop is not suitable for repeatedly popping elements from the same queue.
