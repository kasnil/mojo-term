struct FG:
    alias BLACK = "30"
    alias RED = "31"
    alias GREEN = "32"
    alias YELLOW = "33"
    alias BLUE = "34"
    alias MAGENTA = "35"
    alias CYAN = "36"
    alias WHITE = "37"
    alias BRIGHT_GRAY = "90"
    alias BRIGHT_RED = "91"
    alias BRIGHT_GREEN = "92"
    alias BRIGHT_YELLOW = "93"
    alias BRIGHT_BLUE = "94"
    alias BRIGHT_MAGENTA = "95"
    alias BRIGHT_CYAN = "96"
    alias BRIGHT_WHITE = "97"


struct BF:
    alias BLACK = "40"
    alias RED = "41"
    alias GREEN = "42"
    alias YELLOW = "43"
    alias BLUE = "44"
    alias MAGENTA = "45"
    alias CYAN = "46"
    alias WHITE = "47"
    alias BRIGHT_GRAY = "100"
    alias BRIGHT_RED = "101"
    alias BRIGHT_GREEN = "102"
    alias BRIGHT_YELLOW = "103"
    alias BRIGHT_BLUE = "104"
    alias BRIGHT_MAGENTA = "105"
    alias BRIGHT_CYAN = "106"
    alias BRIGHT_WHITE = "107"


struct CP:
    alias RESET_ALL = "\033[0m"
    alias CLS_SCR = "\033[2J"
    alias CLR_BUF = "\033[3J"
    alias CUR_HOME = "\033[H"

    @staticmethod
    fn move_backward(n: Int = 1) -> String:
        return "\033[" + str(n) + "D"

    @staticmethod
    fn move_down(n: Int = 1) -> String:
        return "\033[" + str(n) + "B"

    @staticmethod
    fn move_up(n: Int = 1) -> String:
        return "\033[" + str(n) + "A"


fn send(cmd: String):
    print(cmd, flush=True)


fn clear_screen():
    """Clears screen and homes cursor."""
    send(CP.CLS_SCR)


fn home_pos():
    """Move the cursor to the upper-left corner of the screen."""
    send(CP.CUR_HOME)


fn clear_scrollback():
    """Remove any lines that can be scrolled to."""
    send(CP.CLR_BUF)


fn move_up(lines: Int = 1):
    """Move cursor up # of lines."""
    send(CP.move_up(lines))


fn move_down(lines: Int = 1):
    """Move cursor down # of lines."""
    send(CP.move_down(lines))


fn move_left(chars: Int = 1):
    """Move cursor backward # of chars."""
    send(CP.move_backward(chars))
