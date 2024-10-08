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
    alias RGB = "38;2"


struct BG:
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
    alias RGB = "48;2"


struct CSI:
    alias ESC = "\033"
    alias BEGIN = "["
    alias PREFIX = CSI.ESC + CSI.BEGIN
    alias END = "m"
    alias PAR_SEP = ";"


struct SGR:
    alias RESET = "0"
    alias BOLD = "1"
    alias FAINT = "2"
    alias ITALIC = "3"
    alias UNDERLINE = "4"
    alias BLINK = "5"
    alias INVERT = "7"
    alias CONCEAL = "8"
    alias STRIKE = "9"


struct Color:
    alias FG_COLOR_DEFAULT = CSI.PREFIX + "39" + CSI.END
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
    alias FG_BRIGHT_YELLOW = CSI.PREFIX + FG.BRIGHT_YELLOW + CSI.END
    alias FG_BRIGHT_BLUE = CSI.PREFIX + FG.BRIGHT_BLUE + CSI.END
    alias FG_BRIGHT_MAGENTA = CSI.PREFIX + FG.BRIGHT_MAGENTA + CSI.END
    alias FG_BRIGHT_CYAN = CSI.PREFIX + FG.BRIGHT_CYAN + CSI.END
    alias FG_BRIGHT_WHITE = CSI.PREFIX + FG.BRIGHT_WHITE + CSI.END
    alias FG_RGB = CSI.PREFIX + FG.RGB
    alias BG_COLOR_DEFAULT = CSI.PREFIX + "49" + CSI.END
    alias BG_BLACK = CSI.PREFIX + BG.BLACK + CSI.END
    alias BG_RED = CSI.PREFIX + BG.RED + CSI.END
    alias BG_GREEN = CSI.PREFIX + BG.GREEN + CSI.END
    alias BG_YELLOW = CSI.PREFIX + BG.YELLOW + CSI.END
    alias BG_BLUE = CSI.PREFIX + BG.BLUE + CSI.END
    alias BG_MAGENTA = CSI.PREFIX + BG.MAGENTA + CSI.END
    alias BG_CYAN = CSI.PREFIX + BG.CYAN + CSI.END
    alias BG_WHITE = CSI.PREFIX + BG.WHITE + CSI.END
    alias BG_BRIGHT_GRAY = CSI.PREFIX + BG.BRIGHT_GRAY + CSI.END
    alias BG_BRIGHT_RED = CSI.PREFIX + BG.BRIGHT_RED + CSI.END
    alias BG_BRIGHT_GREEN = CSI.PREFIX + BG.BRIGHT_GREEN + CSI.END
    alias BG_BRIGHT_YELLOW = CSI.PREFIX + BG.BRIGHT_YELLOW + CSI.END
    alias BG_BRIGHT_BLUE = CSI.PREFIX + BG.BRIGHT_BLUE + CSI.END
    alias BG_BRIGHT_MAGENTA = CSI.PREFIX + BG.BRIGHT_MAGENTA + CSI.END
    alias BG_BRIGHT_CYAN = CSI.PREFIX + BG.BRIGHT_CYAN + CSI.END
    alias BG_BRIGHT_WHITE = CSI.PREFIX + BG.BRIGHT_WHITE + CSI.END
    alias BG_RGB = CSI.PREFIX + BG.RGB

    @staticmethod
    fn fg_black(s: String) -> String:
        return Color.fg_wrap(s, Color.FG_BLACK)

    @staticmethod
    fn fg_red(s: String) -> String:
        return Color.fg_wrap(s, Color.FG_RED)

    @staticmethod
    fn fg_green(s: String) -> String:
        return Color.fg_wrap(s, Color.FG_GREEN)

    @staticmethod
    fn fg_yellow(s: String) -> String:
        return Color.fg_wrap(s, Color.FG_YELLOW)

    @staticmethod
    fn fg_blue(s: String) -> String:
        return Color.fg_wrap(s, Color.FG_BLUE)

    @staticmethod
    fn fg_magenta(s: String) -> String:
        return Color.fg_wrap(s, Color.FG_MAGENTA)

    @staticmethod
    fn fg_cyan(s: String) -> String:
        return Color.fg_wrap(s, Color.FG_CYAN)

    @staticmethod
    fn fg_white(s: String) -> String:
        return Color.fg_wrap(s, Color.FG_WHITE)

    @staticmethod
    fn fg_bright_gray(s: String) -> String:
        return Color.fg_wrap(s, Color.FG_BRIGHT_GRAY)

    @staticmethod
    fn fg_bright_red(s: String) -> String:
        return Color.fg_wrap(s, Color.FG_BRIGHT_RED)

    @staticmethod
    fn fg_bright_green(s: String) -> String:
        return Color.fg_wrap(s, Color.FG_BRIGHT_GREEN)

    @staticmethod
    fn fg_bright_yellow(s: String) -> String:
        return Color.fg_wrap(s, Color.FG_BRIGHT_YELLOW)

    @staticmethod
    fn fg_bright_blue(s: String) -> String:
        return Color.fg_wrap(s, Color.FG_BRIGHT_BLUE)

    @staticmethod
    fn fg_bright_magenta(s: String) -> String:
        return Color.fg_wrap(s, Color.FG_BRIGHT_MAGENTA)

    @staticmethod
    fn fg_bright_cyan(s: String) -> String:
        return Color.fg_wrap(s, Color.FG_BRIGHT_CYAN)

    @staticmethod
    fn fg_bright_white(s: String) -> String:
        return Color.fg_wrap(s, Color.FG_BRIGHT_WHITE)

    @staticmethod
    fn fg_rgb(s: String, r: UInt8, g: UInt8, b: UInt8) -> String:
        return Color.fg_rgb_wrap(s, Color.compose_rgb(Color.FG_RGB, r, g, b))

    @staticmethod
    fn bg_black(s: String) -> String:
        return Color.bg_wrap(s, Color.BG_BLACK)

    @staticmethod
    fn bg_red(s: String) -> String:
        return Color.bg_wrap(s, Color.BG_RED)

    @staticmethod
    fn bg_green(s: String) -> String:
        return Color.bg_wrap(s, Color.BG_GREEN)

    @staticmethod
    fn bg_yellow(s: String) -> String:
        return Color.bg_wrap(s, Color.BG_YELLOW)

    @staticmethod
    fn bg_blue(s: String) -> String:
        return Color.bg_wrap(s, Color.BG_BLUE)

    @staticmethod
    fn bg_magenta(s: String) -> String:
        return Color.bg_wrap(s, Color.BG_MAGENTA)

    @staticmethod
    fn bg_cyan(s: String) -> String:
        return Color.bg_wrap(s, Color.BG_CYAN)

    @staticmethod
    fn bg_white(s: String) -> String:
        return Color.bg_wrap(s, Color.BG_WHITE)

    @staticmethod
    fn bg_bright_gray(s: String) -> String:
        return Color.bg_wrap(s, Color.BG_BRIGHT_GRAY)

    @staticmethod
    fn bg_bright_red(s: String) -> String:
        return Color.bg_wrap(s, Color.BG_BRIGHT_RED)

    @staticmethod
    fn bg_bright_green(s: String) -> String:
        return Color.bg_wrap(s, Color.BG_BRIGHT_GREEN)

    @staticmethod
    fn bg_bright_yellow(s: String) -> String:
        return Color.bg_wrap(s, Color.BG_BRIGHT_YELLOW)

    @staticmethod
    fn bg_bright_blue(s: String) -> String:
        return Color.bg_wrap(s, Color.BG_BRIGHT_BLUE)

    @staticmethod
    fn bg_bright_magenta(s: String) -> String:
        return Color.bg_wrap(s, Color.BG_BRIGHT_MAGENTA)

    @staticmethod
    fn bg_bright_cyan(s: String) -> String:
        return Color.bg_wrap(s, Color.BG_BRIGHT_CYAN)

    @staticmethod
    fn bg_bright_white(s: String) -> String:
        return Color.bg_wrap(s, Color.BG_BRIGHT_WHITE)

    @staticmethod
    fn bg_rgb(s: String, r: UInt8, g: UInt8, b: UInt8) -> String:
        return Color.bg_rgb_wrap(s, Color.compose_rgb(Color.BG_RGB, r, g, b))

    @staticmethod
    fn bg_fg(
        s: String, bg: String, fg: String, is_bold: Bool = False
    ) -> String:
        var sgr = "1" if is_bold else "0"
        return Color.wrap(
            s,
            CSI.PREFIX
            + str(sgr)
            + CSI.PAR_SEP
            + fg
            + CSI.PAR_SEP
            + bg
            + CSI.END,
            CP.RESET_ALL,
        )

    @staticmethod
    fn fg_wrap(s: String, attribute: String) -> String:
        return Color.wrap(s, attribute, Color.FG_COLOR_DEFAULT)

    @staticmethod
    fn fg_rgb_wrap(s: String, attribute: String) -> String:
        return Color.wrap(s, attribute, Color.FG_COLOR_DEFAULT)

    @staticmethod
    fn bg_wrap(s: String, attribute: String) -> String:
        return Color.wrap(s, attribute, Color.BG_COLOR_DEFAULT)

    @staticmethod
    fn bg_rgb_wrap(s: String, attribute: String) -> String:
        return Color.wrap(s, attribute, Color.BG_COLOR_DEFAULT)

    @staticmethod
    fn wrap(s: String, attribute: String, reset_attribute: String) -> String:
        return attribute + s + reset_attribute

    @staticmethod
    fn compose_rgb(prefix: String, r: UInt8, g: UInt8, b: UInt8) -> String:
        return (
            prefix
            + CSI.PAR_SEP
            + str(r)
            + CSI.PAR_SEP
            + str(g)
            + CSI.PAR_SEP
            + str(b)
            + CSI.END
        )


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


fn bright_yellow_text(s: String) -> String:
    """Bright yellow text."""
    return Color.fg_bright_yellow(s)


fn bright_blue_text(s: String) -> String:
    """Bright blue text."""
    return Color.fg_bright_blue(s)


fn bright_magenta_text(s: String) -> String:
    """Bright magenta text."""
    return Color.fg_bright_magenta(s)


fn bright_cyan_text(s: String) -> String:
    """Bright cyan text."""
    return Color.fg_bright_cyan(s)


fn bright_white_text(s: String) -> String:
    """Bright white text."""
    return Color.fg_bright_white(s)


fn rgb_text(s: String, r: UInt8, g: UInt8, b: UInt8) -> String:
    """Sets the current text color of the sentence using RGB values."""
    return Color.fg_rgb(s, r, g, b)


fn black_background(s: String) -> String:
    """Black background."""
    return Color.bg_black(s)


fn red_background(s: String) -> String:
    """Red background."""
    return Color.bg_red(s)


fn green_background(s: String) -> String:
    """Green background."""
    return Color.bg_green(s)


fn yellow_background(s: String) -> String:
    """Yellow background."""
    return Color.bg_yellow(s)


fn blue_background(s: String) -> String:
    """Blue background."""
    return Color.bg_blue(s)


fn magenta_background(s: String) -> String:
    """Magenta background."""
    return Color.bg_magenta(s)


fn cyan_background(s: String) -> String:
    """Cyan background."""
    return Color.bg_cyan(s)


fn white_background(s: String) -> String:
    """White background."""
    return Color.bg_white(s)


fn bright_gray_background(s: String) -> String:
    """Bright gray background."""
    return Color.bg_bright_gray(s)


fn bright_red_background(s: String) -> String:
    """Bright red background."""
    return Color.bg_bright_red(s)


fn bright_green_background(s: String) -> String:
    """Bright green background."""
    return Color.bg_bright_green(s)


fn bright_yellow_background(s: String) -> String:
    """Bright yellow background."""
    return Color.bg_bright_yellow(s)


fn bright_blue_background(s: String) -> String:
    """Bright blue background."""
    return Color.bg_bright_blue(s)


fn bright_magenta_background(s: String) -> String:
    """Bright magenta background."""
    return Color.bg_bright_magenta(s)


fn bright_cyan_background(s: String) -> String:
    """Bright cyan background."""
    return Color.bg_bright_cyan(s)


fn bright_white_background(s: String) -> String:
    """Bright white background."""
    return Color.bg_bright_white(s)


fn rgb_background(s: String, r: UInt8, g: UInt8, b: UInt8) -> String:
    """Sets the current background color of the sentence using RGB values."""
    return Color.bg_rgb(s, r, g, b)


fn text(s: String, bg: String, fg: String, is_bold: Bool = False) -> String:
    """Colorizing text."""
    return Color.bg_fg(s, bg, fg, is_bold)
