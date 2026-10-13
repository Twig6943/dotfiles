"""MelonLoader"""

from protonfixes import util

def main() -> None:
    util.protontricks('dotnetdesktop6')
    util.winedll_override('winmm', util.OverrideOrder.NATIVE_BUILTIN)
    util.winedll_override('version', util.OverrideOrder.NATIVE_BUILTIN)
