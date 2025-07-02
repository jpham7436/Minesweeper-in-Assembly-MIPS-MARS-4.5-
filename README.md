# Minesweeper-in-Assembly-MIPS-MARS-4.5-

- There is a lot of bloat code at the beginning because I am storing all the necessary coordinates to print all 8 numbers + other display elements.
  In hindsight, I should have created a different file, but I'm not sure how that works in Assembly yet.

The settings for the Bitmap Display are :
- 8 pixel height/width
- 512 display width
- 256 display height
- Base Address: 0x10040000 (heap)
