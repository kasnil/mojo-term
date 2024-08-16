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
    alias CLS = "\033[2J"


fn send(cmd: String):
    print(cmd, flush=True)


fn clear():
    """Clears screen and homes cursor"""
    send(CP.CLS)
