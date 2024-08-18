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


struct CSI:
    alias ESC = "\033"
    alias BEGIN = "["
    alias PREFIX = CSI.ESC + CSI.BEGIN
    alias END = "m"
    alias PAR_SEP = ";"


struct Color:
    alias COLOR_DEFAULT = CSI.PREFIX + "39" + CSI.END
    alias FG_BLACK = CSI.PREFIX + FG.BLACK + CSI.END
    alias FG_RED = CSI.PREFIX + FG.RED + CSI.END
    alias FG_GREEN = CSI.PREFIX + FG.GREEN + CSI.END
    alias FG_YELLOW = CSI.PREFIX + FG.YELLOW + CSI.END
    alias FG_BLUE = CSI.PREFIX + FG.BLUE + CSI.END
    alias FG_MAGENTA = CSI.PREFIX + FG.MAGENTA + CSI.END
    alias FG_CYAN = CSI.PREFIX + FG.CYAN + CSI.END
    alias FG_WHITE = CSI.PREFIX + FG.WHITE + CSI.END
    alias FG_BRIGHT_GRAY = CSI.PREFIX + FG.BRIGHT_GRAY + CSI.END
    alias FG_BRIGHT_RED = CSI.PREFIX + FG.BRIGHT_RED + CSI.END
    alias FG_BRIGHT_GREEN = CSI.PREFIX + FG.BRIGHT_GREEN + CSI.END

    @staticmethod
    fn fg_black(s: String) -> String:
        return Color.wrap(s, Color.FG_BLACK)

    @staticmethod
    fn fg_red(s: String) -> String:
        return Color.wrap(s, Color.FG_RED)

    @staticmethod
    fn fg_green(s: String) -> String:
        return Color.wrap(s, Color.FG_GREEN)

    @staticmethod
    fn fg_yellow(s: String) -> String:
        return Color.wrap(s, Color.FG_YELLOW)

    @staticmethod
    fn fg_blue(s: String) -> String:
        return Color.wrap(s, Color.FG_BLUE)

    @staticmethod
    fn fg_magenta(s: String) -> String:
        return Color.wrap(s, Color.FG_MAGENTA)

    @staticmethod
    fn fg_cyan(s: String) -> String:
        return Color.wrap(s, Color.FG_CYAN)

    @staticmethod
    fn fg_white(s: String) -> String:
        return Color.wrap(s, Color.FG_WHITE)

    @staticmethod
    fn fg_bright_gray(s: String) -> String:
        return Color.wrap(s, Color.FG_BRIGHT_GRAY)

    @staticmethod
    fn fg_bright_red(s: String) -> String:
        return Color.wrap(s, Color.FG_BRIGHT_RED)

    @staticmethod
    fn fg_bright_green(s: String) -> String:
        return Color.wrap(s, Color.FG_BRIGHT_GREEN)

    @staticmethod
    fn wrap(
        s: String,
        attribute: String,
        reset_attribute: String = Color.COLOR_DEFAULT,
    ) -> String:
        return attribute + s + reset_attribute


struct CP:
    alias RESET_ALL = CSI.PREFIX + "0" + CSI.END
    alias CLS_SCR = CSI.PREFIX + "2J"
    alias CLR_BUF = CSI.PREFIX + "3J"
    alias CLR_END = CSI.PREFIX + "K"
    alias CUR_HOME = CSI.PREFIX + "H"
    alias CUR_SAVE = CSI.PREFIX + "s"
    alias CUR_RESTORE = CSI.PREFIX + "u"

    @staticmethod
    fn move_backward(n: Int = 1) -> String:
        return CSI.PREFIX + str(n) + "D"

    @staticmethod
    fn move_down(n: Int = 1) -> String:
        return CSI.PREFIX + str(n) + "B"

    @staticmethod
    fn move_up(n: Int = 1) -> String:
        return CSI.PREFIX + str(n) + "A"

    @staticmethod
    fn move_forward(n: Int = 1) -> String:
        return CSI.PREFIX + str(n) + "C"

    @staticmethod
    fn move(x: Int, y: Int) -> String:
        return CSI.PREFIX + str(x) + CSI.PAR_SEP + str(y) + "H"


fn send(cmd: String):
    print(cmd, flush=True, end="")


fn clear():
    """Clears screen."""
    clear_screen()
    clear_scrollback()
    home_pos()


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


fn move_right(chars: Int = 1):
    """Move cursor forward # of chars."""
    send(CP.move_forward(chars))


fn move(x: Int, y: Int):
    """Move cursor to x, y."""
    send(CP.move(x, y))


fn save():
    """Saves cursor position."""
    send(CP.CUR_SAVE)


fn restore():
    """Restores cursor position."""
    send(CP.CUR_RESTORE)


fn clear_to_eol():
    """Clears screen to end of line."""
    send(CP.CLR_END)


fn black_text(s: String) -> String:
    """Black text."""
    return Color.fg_black(s)


fn red_text(s: String) -> String:
    """Red text."""
    return Color.fg_red(s)


fn green_text(s: String) -> String:
    """Green text."""
    return Color.fg_green(s)


fn yellow_text(s: String) -> String:
    """Yellow text."""
    return Color.fg_yellow(s)


fn blue_text(s: String) -> String:
    """Yellow text."""
    return Color.fg_blue(s)


fn magenta_text(s: String) -> String:
    """Magenta text."""
    return Color.fg_magenta(s)


fn cyan_text(s: String) -> String:
    """Cyan text."""
    return Color.fg_cyan(s)


fn white_text(s: String) -> String:
    """White text."""
    return Color.fg_white(s)


fn bright_gray_text(s: String) -> String:
    """Bright gray text."""
    return Color.fg_bright_gray(s)


fn bright_red_text(s: String) -> String:
    """Bright red text."""
    return Color.fg_bright_red(s)


fn bright_green_text(s: String) -> String:
    """Bright green text."""
    return Color.fg_bright_green(s)
