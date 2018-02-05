# ZipString
When given a set of strings, such as 'frog' and 'dog'. It should return a value of it's index incrementally stepped up on both strings being combined 1 character index at a time.
Sometimes it's required if one string is 3 characters long and the other is 7; than fill the empty index values with a specified value. By default I have it set for '.', this can easily be changed.

If you input a set of strings it should be similar to the following example.
``` ruby
zipit('frog','dog')
# => fdroogg.
```
