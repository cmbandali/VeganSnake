Fields:
  The coordinates of the snake are stored in two separate ArrayLists
  of type integer.
  The dir variable is used for the direction of the snake.
  The block variable is used to set the height and width of rectangles
  within my draw function. (The snake and food)
  The variable kX and kY are the coordinates of the kale.
  The variables score and highScore store the current score while the
  game is not over and the highest score since the game began.
  The dx and dy arrays are the directional arrays for the snake.
  The boolean variable gameOver is used to determine when the score board
  and snake should be reset.

setup Method:
  The screen size is set to 600 pixels by 600 pixels.
  The initial coordinates of the snake are set to 5.

Draw Method:
  A grid layout is created along with a title line, a score board
  and the snake body that is to be displayed.
  The following code is placed within a conditional statement that
  executes only if the boolean variable gameOver is false.
  For every 5 frames, a block is added to the front of the snake.
      When the head of the snake and the kale rectangle have the
      same coordinates a block is not removed from the end of the
      snake and the score is incremented by one. If this is not the
      case, a block from the end of the snake is continually removed.
  The game ends if the snake: 1. goes pass a boarder of the screen.
                              2. has matching coordinates with any part
                                 of its body.
      When one of these conditionals are met:
        1. The high score gets set to equal the current score, if the current
           score is larger.
        2. The current score gets set to zero.
        3. The x and y array lists for the snake get cleared and reset to
           one random number dictating the initial coordinate of the new
           snake.
        4. The boolean value of gameOver is declared as false.

KeyPressed Method:
  This method has one field (a variable that stands for new direction).
  The a,w,e,d keys on a keyboard dictate the direction of the snake.
  A conditional statement does not allow the snake to move backwards if
  it has more than one rectangle forming it's body.
