enum LiturgicalColor {
  Red;
  White;
  Gold;
  Green;
  Purple;
  Black;
  Rose;
  Blue;
}

class LiturgicalColors {
  static name(color: LiturgicalColor){
    return EnumValueTools.getName(color).toLowerCase();
  }

  static cssVer(color: LiturgicalColor){
    return "--lit_${LiturgicalColors.name(color)}";
  }

  static hexColor(color: LiturgicalColor): String {
    return switch(color){
      case Red:
        "#d90000";
      case White:
        "#ffffff";
      case Gold:
        "#fff176";
      case Green:
        "#32ab38";
      case Purple:
        "#8a2be2";
      case Black:
        "#000000";
      case Rose:
        "#e08282";
      case Blue:
        "#0000f8";
    }
  }

  static color(color: LiturgicalColor): Color{
    return Color.fromString(LiturgicalColors.haxColor(color));
  }

  static squareChar(color: LiturgicalColor): String {
    return String.fromCharCode(switch(color){
      case Red:
        0x1f7e5;
      case White:
        0x2b1b + 1;
      case Gold:
        0x1f7e5 + 3;
      case Green:
        0x1f7e5 + 4;
      case Purple:
        0x1f7e5 + 5;
      case Black:
        0x2b1b;
      case Rose:
        0x1f7e5 + 5;
      case Blue:
        0x1f7e5 + 1;
    });
  }
}

/*
<cssVer(), hexColor(): CSS Variables>
--lit_red: #d90000;
--lit_white: #ffffff;
--lit_gold: #fff176;
--lit_gold_h: #c39000;
--lit_green: #32ab38;
--lit_purple: #8a2be2;
--lit_purple_l: #cf87ff;
--lit_black: #4d5f53;
--lit_rose: #e08282;
--lit_blue: #0000f8;

<squareChar(): Geometric Shape Square>
black: 0x2b1b
white: 0x2b1b + 1
red: 0x1f7e5
blue: 0x1f7e5 + 1
gold: 0x1f7e5 + 3
green: 0x1f7e5 + 4
purple: 0x1f7e5 + 5
*/