# **Ed Goold's tic-tac-toe Tech Test**

### **Introduction**

This is my response to the tic-tac-toe tech test from week 9 of the Dec 2017 Makers Academy course.

The aim is to create an application that allows two participants to play a game of tic-tac-toe until either a win or a draw is decided.

---

### **Installation**

The application requires the following the dependencies:

 -- Ruby 2.4.1
 -- Datamapper
 -- Rspec

Following download, please install by running the following from the command line:

```
 $ bundle install
```

### **Rules of the Game**

The players decide which will play with an X and which with an O.

A square grid is then created, by default separated into 3 rows of 3 squares - i.e. 9 squares in total.

The players take turns to fill in a square with their symbol until either (a) 3 symbols in a i) horizontal, ii) vertical or iii) diagonal row are completed, resulting in a win for the player represented by that 3-in-a-row or (b) all squares in the grid are filled without a 3-in-a-row result therefore concluding in a draw.

As a result, there are 8 possible ways to win the game - 3 on the horizontal, 3 on the vertical, and 2 on the diagonal.

### **Approach Taken**

My initial approach involved the following:

 -- Create a grid organised into 3 arrays of 3 hashes each.  The default arrangement of these arrays represented 3 horizontal rows with the hashes representing a square.  The key for each hash was "square" (with no specific reference) while the default value was nil - representing an empty square.
 -- Players would then take a turn to fill out one of these squares/hashes by calling a tick method (taking the arguments grid, square - by reference to its position in an one of the 3 array/rows - and a symbol of X or O).
 -- If the square was empty, it would then be filled by the relevant symbol.  If not, it would return an error message and ask the player to play again.
 -- Having filled in a square, an evaluate method would be called on a game logic object, which would then assess the whole grid to determine whether there had been a:
   -- horizontal;
   -- vertical; or
   -- diagonal victory.  If so, the game would conclude in favour of the winning player.
   Failing that, a draw might be returned by the game if all squares had been filled out or else the game would move on to the next turn.

### **License**

[MIT](https://choosealicense.com/licenses/mit/)
