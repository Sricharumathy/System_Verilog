# How does a dynamic array differ from an associative array?

### A dynamic array is an ordered, contiguous array indexed by integers 0..size-1, and you set its size at run time with new[]. <br>
### An associative array is sparse, so it allocates storage only for the indexes you actually use, and the index can be any type (an integer, a string, and so on).<br>
### Example
```
int dyn[];            // dynamic array
int assoc[string];    // associative array

initial begin
  dyn = new[4];       // allocates 4 elements: indexes 0 to 3
  dyn[2] = 7;

  assoc["apple"] = 5; // only this one entry exists in memory
end
```
