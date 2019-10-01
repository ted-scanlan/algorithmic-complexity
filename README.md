# Algorithmic Complexity #

This project dives into the world of algorithms, on a quest to better understand complexity, and how I can improve the speed and efficiency of the code I write.

Every machine deals with processes in the same way, however the type of process you ask a computer to execute is crucial to how efficient it runs. Two algorithms may garner the same result, but may differ in the sequence of instructions used to reach the result.

the sequence is important as it dictates how the computer interacts with its memory and retrieves info. In each cell of memory, bits and bytes are stored with an address so the computer can access that information without having to go through each cell. Algorithms become inefficient when we ask the computer to execute a process that cause changes to the composition of the information stored in the memory (e.g delete_at in array which causes the array to be remapped, as apposed to pop which simply takes off the end of the array). 

## Timing Framework ##

To better understand the efficiency of algorithms, I created this simple timing framework.

To set up:

clone this repository, then:

```
cd
```
