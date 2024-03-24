# Task 2 - Capture the flag

## Documentation

This was a fairly easy task, the more time I spent on it the stupider I fell after compeleting it.

### Looking up resources

The first article you get when you look up reverse engineering is [this.](https://infosecwriteups.com/reverse-engineering-a-binary-with-ida-free-346cab16be9f)

### Submission
So even before I opened the file I went through the objdump and then put it in IDA-freeware. From that I found the check_win subroutine, from which I realised the flag was "acm_ftw". But I still did not understand what the input value was, especially because the stringcmp func was comparing the input and "ACMR", which was already give. Then after banging my head a few times I realised that the memory address for "safe_var" and the input was same on the heap. Which made me realise I could overflow it with my input and hence _capture the flag_.

**Input:** ACMRACMRACMRACMRACMRACMRACMRACMRACMR 
**Flag:** acm_ftw
