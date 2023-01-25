This is the list of key codes for Xdotool commands.

Scraped using a 1-minute regex (`r"#define XK_(\w*)\s*(\w*)(?:\s*\/\*\s*(.*)\s\*\/)*"`) and a Python script from this file: https://cgit.freedesktop.org/xorg/proto/x11proto/plain/keysymdef.h

Use Ctrl+F. You **will** need it.


<table>
<tr><td>BackSpace</td><td>0xff08</td><td>Back space, back char</td></tr>
<tr><td>Tab</td><td>0xff09</td><td>-</td></tr>
<tr><td>Linefeed</td><td>0xff0a</td><td>Linefeed, LF</td></tr>
<tr><td>Clear</td><td>0xff0b</td><td>-</td></tr>
<tr><td>Return</td><td>0xff0d</td><td>Return, enter</td></tr>
<tr><td>Pause</td><td>0xff13</td><td>Pause, hold</td></tr>
<tr><td>Scroll_Lock</td><td>0xff14</td><td>-</td></tr>
<tr><td>Sys_Req</td><td>0xff15</td><td>-</td></tr>
<tr><td>Escape</td><td>0xff1b</td><td>-</td></tr>
<tr><td>Delete</td><td>0xffff</td><td>International & multi-key character composition</td></tr>
<tr><td>Multi_key</td><td>0xff20</td><td>Multi-key character compose</td></tr>
<tr><td>Codeinput</td><td>0xff37</td><td>-</td></tr>
<tr><td>SingleCandidate</td><td>0xff3c</td><td>-</td></tr>
<tr><td>MultipleCandidate</td><td>0xff3d</td><td>-</td></tr>
<tr><td>PreviousCandidate</td><td>0xff3e</td><td>Japanese keyboard support</td></tr>
<tr><td>Kanji</td><td>0xff21</td><td>Kanji, Kanji convert</td></tr>
<tr><td>Muhenkan</td><td>0xff22</td><td>Cancel Conversion</td></tr>
<tr><td>Henkan_Mode</td><td>0xff23</td><td>Start/Stop Conversion</td></tr>
<tr><td>Henkan</td><td>0xff23</td><td>Alias for Henkan_Mode</td></tr>
<tr><td>Romaji</td><td>0xff24</td><td>to Romaji</td></tr>
<tr><td>Hiragana</td><td>0xff25</td><td>to Hiragana</td></tr>
<tr><td>Katakana</td><td>0xff26</td><td>to Katakana</td></tr>
<tr><td>Hiragana_Katakana</td><td>0xff27</td><td>Hiragana/Katakana toggle</td></tr>
<tr><td>Zenkaku</td><td>0xff28</td><td>to Zenkaku</td></tr>
<tr><td>Hankaku</td><td>0xff29</td><td>to Hankaku</td></tr>
<tr><td>Zenkaku_Hankaku</td><td>0xff2a</td><td>Zenkaku/Hankaku toggle</td></tr>
<tr><td>Touroku</td><td>0xff2b</td><td>Add to Dictionary</td></tr>
<tr><td>Massyo</td><td>0xff2c</td><td>Delete from Dictionary</td></tr>
<tr><td>Kana_Lock</td><td>0xff2d</td><td>Kana Lock</td></tr>
<tr><td>Kana_Shift</td><td>0xff2e</td><td>Kana Shift</td></tr>
<tr><td>Eisu_Shift</td><td>0xff2f</td><td>Alphanumeric Shift</td></tr>
<tr><td>Eisu_toggle</td><td>0xff30</td><td>Alphanumeric toggle</td></tr>
<tr><td>Kanji_Bangou</td><td>0xff37</td><td>Codeinput</td></tr>
<tr><td>Zen_Koho</td><td>0xff3d</td><td>Multiple/All Candidate(s)</td></tr>
<tr><td>Mae_Koho</td><td>0xff3e</td><td>Cursor control & motion</td></tr>
<tr><td>Home</td><td>0xff50</td><td>-</td></tr>
<tr><td>Left</td><td>0xff51</td><td>Move left, left arrow</td></tr>
<tr><td>Up</td><td>0xff52</td><td>Move up, up arrow</td></tr>
<tr><td>Right</td><td>0xff53</td><td>Move right, right arrow</td></tr>
<tr><td>Down</td><td>0xff54</td><td>Move down, down arrow</td></tr>
<tr><td>Prior</td><td>0xff55</td><td>Prior, previous</td></tr>
<tr><td>Page_Up</td><td>0xff55</td><td>-</td></tr>
<tr><td>Next</td><td>0xff56</td><td>Next</td></tr>
<tr><td>Page_Down</td><td>0xff56</td><td>-</td></tr>
<tr><td>End</td><td>0xff57</td><td>EOL</td></tr>
<tr><td>Begin</td><td>0xff58</td><td>Misc functions</td></tr>
<tr><td>Select</td><td>0xff60</td><td>Select, mark</td></tr>
<tr><td>Print</td><td>0xff61</td><td>-</td></tr>
<tr><td>Execute</td><td>0xff62</td><td>Execute, run, do</td></tr>
<tr><td>Insert</td><td>0xff63</td><td>Insert, insert here</td></tr>
<tr><td>Undo</td><td>0xff65</td><td>-</td></tr>
<tr><td>Redo</td><td>0xff66</td><td>Redo, again</td></tr>
<tr><td>Menu</td><td>0xff67</td><td>-</td></tr>
<tr><td>Find</td><td>0xff68</td><td>Find, search</td></tr>
<tr><td>Cancel</td><td>0xff69</td><td>Cancel, stop, abort, exit</td></tr>
<tr><td>Help</td><td>0xff6a</td><td>Help</td></tr>
<tr><td>Break</td><td>0xff6b</td><td>-</td></tr>
<tr><td>Mode_switch</td><td>0xff7e</td><td>Character set switch</td></tr>
<tr><td>script_switch</td><td>0xff7e</td><td>Alias for mode_switch</td></tr>
<tr><td>Num_Lock</td><td>0xff7f</td><td>Keypad functions, keypad numbers cleverly chosen to map to ASCII</td></tr>
<tr><td>KP_Space</td><td>0xff80</td><td>Space</td></tr>
<tr><td>KP_Tab</td><td>0xff89</td><td>-</td></tr>
<tr><td>KP_Enter</td><td>0xff8d</td><td>Enter</td></tr>
<tr><td>KP_F1</td><td>0xff91</td><td>PF1, KP_A, ...</td></tr>
<tr><td>KP_F2</td><td>0xff92</td><td>-</td></tr>
<tr><td>KP_F3</td><td>0xff93</td><td>-</td></tr>
<tr><td>KP_F4</td><td>0xff94</td><td>-</td></tr>
<tr><td>KP_Home</td><td>0xff95</td><td>-</td></tr>
<tr><td>KP_Left</td><td>0xff96</td><td>-</td></tr>
<tr><td>KP_Up</td><td>0xff97</td><td>-</td></tr>
<tr><td>KP_Right</td><td>0xff98</td><td>-</td></tr>
<tr><td>KP_Down</td><td>0xff99</td><td>-</td></tr>
<tr><td>KP_Prior</td><td>0xff9a</td><td>-</td></tr>
<tr><td>KP_Page_Up</td><td>0xff9a</td><td>-</td></tr>
<tr><td>KP_Next</td><td>0xff9b</td><td>-</td></tr>
<tr><td>KP_Page_Down</td><td>0xff9b</td><td>-</td></tr>
<tr><td>KP_End</td><td>0xff9c</td><td>-</td></tr>
<tr><td>KP_Begin</td><td>0xff9d</td><td>-</td></tr>
<tr><td>KP_Insert</td><td>0xff9e</td><td>-</td></tr>
<tr><td>KP_Delete</td><td>0xff9f</td><td>-</td></tr>
<tr><td>KP_Equal</td><td>0xffbd</td><td>Equals</td></tr>
<tr><td>KP_Multiply</td><td>0xffaa</td><td>-</td></tr>
<tr><td>KP_Add</td><td>0xffab</td><td>-</td></tr>
<tr><td>KP_Separator</td><td>0xffac</td><td>Separator, often comma</td></tr>
<tr><td>KP_Subtract</td><td>0xffad</td><td>-</td></tr>
<tr><td>KP_Decimal</td><td>0xffae</td><td>-</td></tr>
<tr><td>KP_Divide</td><td>0xffaf</td><td>-</td></tr>
<tr><td>KP_0</td><td>0xffb0</td><td>-</td></tr>
<tr><td>KP_1</td><td>0xffb1</td><td>-</td></tr>
<tr><td>KP_2</td><td>0xffb2</td><td>-</td></tr>
<tr><td>KP_3</td><td>0xffb3</td><td>-</td></tr>
<tr><td>KP_4</td><td>0xffb4</td><td>-</td></tr>
<tr><td>KP_5</td><td>0xffb5</td><td>-</td></tr>
<tr><td>KP_6</td><td>0xffb6</td><td>-</td></tr>
<tr><td>KP_7</td><td>0xffb7</td><td>-</td></tr>
<tr><td>KP_8</td><td>0xffb8</td><td>-</td></tr>
<tr><td>KP_9</td><td>0xffb9</td><td>-</td></tr>
<tr><td>F1</td><td>0xffbe</td><td>-</td></tr>
<tr><td>F2</td><td>0xffbf</td><td>-</td></tr>
<tr><td>F3</td><td>0xffc0</td><td>-</td></tr>
<tr><td>F4</td><td>0xffc1</td><td>-</td></tr>
<tr><td>F5</td><td>0xffc2</td><td>-</td></tr>
<tr><td>F6</td><td>0xffc3</td><td>-</td></tr>
<tr><td>F7</td><td>0xffc4</td><td>-</td></tr>
<tr><td>F8</td><td>0xffc5</td><td>-</td></tr>
<tr><td>F9</td><td>0xffc6</td><td>-</td></tr>
<tr><td>F10</td><td>0xffc7</td><td>-</td></tr>
<tr><td>F11</td><td>0xffc8</td><td>-</td></tr>
<tr><td>L1</td><td>0xffc8</td><td>-</td></tr>
<tr><td>F12</td><td>0xffc9</td><td>-</td></tr>
<tr><td>L2</td><td>0xffc9</td><td>-</td></tr>
<tr><td>F13</td><td>0xffca</td><td>-</td></tr>
<tr><td>L3</td><td>0xffca</td><td>-</td></tr>
<tr><td>F14</td><td>0xffcb</td><td>-</td></tr>
<tr><td>L4</td><td>0xffcb</td><td>-</td></tr>
<tr><td>F15</td><td>0xffcc</td><td>-</td></tr>
<tr><td>L5</td><td>0xffcc</td><td>-</td></tr>
<tr><td>F16</td><td>0xffcd</td><td>-</td></tr>
<tr><td>L6</td><td>0xffcd</td><td>-</td></tr>
<tr><td>F17</td><td>0xffce</td><td>-</td></tr>
<tr><td>L7</td><td>0xffce</td><td>-</td></tr>
<tr><td>F18</td><td>0xffcf</td><td>-</td></tr>
<tr><td>L8</td><td>0xffcf</td><td>-</td></tr>
<tr><td>F19</td><td>0xffd0</td><td>-</td></tr>
<tr><td>L9</td><td>0xffd0</td><td>-</td></tr>
<tr><td>F20</td><td>0xffd1</td><td>-</td></tr>
<tr><td>L10</td><td>0xffd1</td><td>-</td></tr>
<tr><td>F21</td><td>0xffd2</td><td>-</td></tr>
<tr><td>R1</td><td>0xffd2</td><td>-</td></tr>
<tr><td>F22</td><td>0xffd3</td><td>-</td></tr>
<tr><td>R2</td><td>0xffd3</td><td>-</td></tr>
<tr><td>F23</td><td>0xffd4</td><td>-</td></tr>
<tr><td>R3</td><td>0xffd4</td><td>-</td></tr>
<tr><td>F24</td><td>0xffd5</td><td>-</td></tr>
<tr><td>R4</td><td>0xffd5</td><td>-</td></tr>
<tr><td>F25</td><td>0xffd6</td><td>-</td></tr>
<tr><td>R5</td><td>0xffd6</td><td>-</td></tr>
<tr><td>F26</td><td>0xffd7</td><td>-</td></tr>
<tr><td>R6</td><td>0xffd7</td><td>-</td></tr>
<tr><td>F27</td><td>0xffd8</td><td>-</td></tr>
<tr><td>R7</td><td>0xffd8</td><td>-</td></tr>
<tr><td>F28</td><td>0xffd9</td><td>-</td></tr>
<tr><td>R8</td><td>0xffd9</td><td>-</td></tr>
<tr><td>F29</td><td>0xffda</td><td>-</td></tr>
<tr><td>R9</td><td>0xffda</td><td>-</td></tr>
<tr><td>F30</td><td>0xffdb</td><td>-</td></tr>
<tr><td>R10</td><td>0xffdb</td><td>-</td></tr>
<tr><td>F31</td><td>0xffdc</td><td>-</td></tr>
<tr><td>R11</td><td>0xffdc</td><td>-</td></tr>
<tr><td>F32</td><td>0xffdd</td><td>-</td></tr>
<tr><td>R12</td><td>0xffdd</td><td>-</td></tr>
<tr><td>F33</td><td>0xffde</td><td>-</td></tr>
<tr><td>R13</td><td>0xffde</td><td>-</td></tr>
<tr><td>F34</td><td>0xffdf</td><td>-</td></tr>
<tr><td>R14</td><td>0xffdf</td><td>-</td></tr>
<tr><td>F35</td><td>0xffe0</td><td>-</td></tr>
<tr><td>R15</td><td>0xffe0</td><td>Modifiers</td></tr>
<tr><td>Shift_L</td><td>0xffe1</td><td>Left shift</td></tr>
<tr><td>Shift_R</td><td>0xffe2</td><td>Right shift</td></tr>
<tr><td>Control_L</td><td>0xffe3</td><td>Left control</td></tr>
<tr><td>Control_R</td><td>0xffe4</td><td>Right control</td></tr>
<tr><td>Caps_Lock</td><td>0xffe5</td><td>Caps lock</td></tr>
<tr><td>Shift_Lock</td><td>0xffe6</td><td>Shift lock</td></tr>
<tr><td>Meta_L</td><td>0xffe7</td><td>Left meta</td></tr>
<tr><td>Meta_R</td><td>0xffe8</td><td>Right meta</td></tr>
<tr><td>Alt_L</td><td>0xffe9</td><td>Left alt</td></tr>
<tr><td>Alt_R</td><td>0xffea</td><td>Right alt</td></tr>
<tr><td>Super_L</td><td>0xffeb</td><td>Left super</td></tr>
<tr><td>Super_R</td><td>0xffec</td><td>Right super</td></tr>
<tr><td>Hyper_L</td><td>0xffed</td><td>Left hyper</td></tr>
<tr><td>Hyper_R</td><td>0xffee</td><td>Right hyper</td></tr>
<tr><td>ISO_Lock</td><td>0xfe01</td><td>-</td></tr>
<tr><td>ISO_Level2_Latch</td><td>0xfe02</td><td>-</td></tr>
<tr><td>ISO_Level3_Shift</td><td>0xfe03</td><td>-</td></tr>
<tr><td>ISO_Level3_Latch</td><td>0xfe04</td><td>-</td></tr>
<tr><td>ISO_Level3_Lock</td><td>0xfe05</td><td>-</td></tr>
<tr><td>ISO_Level5_Shift</td><td>0xfe11</td><td>-</td></tr>
<tr><td>ISO_Level5_Latch</td><td>0xfe12</td><td>-</td></tr>
<tr><td>ISO_Level5_Lock</td><td>0xfe13</td><td>-</td></tr>
<tr><td>ISO_Group_Shift</td><td>0xff7e</td><td>Alias for mode_switch</td></tr>
<tr><td>ISO_Group_Latch</td><td>0xfe06</td><td>-</td></tr>
<tr><td>ISO_Group_Lock</td><td>0xfe07</td><td>-</td></tr>
<tr><td>ISO_Next_Group</td><td>0xfe08</td><td>-</td></tr>
<tr><td>ISO_Next_Group_Lock</td><td>0xfe09</td><td>-</td></tr>
<tr><td>ISO_Prev_Group</td><td>0xfe0a</td><td>-</td></tr>
<tr><td>ISO_Prev_Group_Lock</td><td>0xfe0b</td><td>-</td></tr>
<tr><td>ISO_First_Group</td><td>0xfe0c</td><td>-</td></tr>
<tr><td>ISO_First_Group_Lock</td><td>0xfe0d</td><td>-</td></tr>
<tr><td>ISO_Last_Group</td><td>0xfe0e</td><td>-</td></tr>
<tr><td>ISO_Last_Group_Lock</td><td>0xfe0f</td><td>-</td></tr>
<tr><td>ISO_Left_Tab</td><td>0xfe20</td><td>-</td></tr>
<tr><td>ISO_Move_Line_Up</td><td>0xfe21</td><td>-</td></tr>
<tr><td>ISO_Move_Line_Down</td><td>0xfe22</td><td>-</td></tr>
<tr><td>ISO_Partial_Line_Up</td><td>0xfe23</td><td>-</td></tr>
<tr><td>ISO_Partial_Line_Down</td><td>0xfe24</td><td>-</td></tr>
<tr><td>ISO_Partial_Space_Left</td><td>0xfe25</td><td>-</td></tr>
<tr><td>ISO_Partial_Space_Right</td><td>0xfe26</td><td>-</td></tr>
<tr><td>ISO_Set_Margin_Left</td><td>0xfe27</td><td>-</td></tr>
<tr><td>ISO_Set_Margin_Right</td><td>0xfe28</td><td>-</td></tr>
<tr><td>ISO_Release_Margin_Left</td><td>0xfe29</td><td>-</td></tr>
<tr><td>ISO_Release_Margin_Right</td><td>0xfe2a</td><td>-</td></tr>
<tr><td>ISO_Release_Both_Margins</td><td>0xfe2b</td><td>-</td></tr>
<tr><td>ISO_Fast_Cursor_Left</td><td>0xfe2c</td><td>-</td></tr>
<tr><td>ISO_Fast_Cursor_Right</td><td>0xfe2d</td><td>-</td></tr>
<tr><td>ISO_Fast_Cursor_Up</td><td>0xfe2e</td><td>-</td></tr>
<tr><td>ISO_Fast_Cursor_Down</td><td>0xfe2f</td><td>-</td></tr>
<tr><td>ISO_Continuous_Underline</td><td>0xfe30</td><td>-</td></tr>
<tr><td>ISO_Discontinuous_Underline</td><td>0xfe31</td><td>-</td></tr>
<tr><td>ISO_Emphasize</td><td>0xfe32</td><td>-</td></tr>
<tr><td>ISO_Center_Object</td><td>0xfe33</td><td>-</td></tr>
<tr><td>ISO_Enter</td><td>0xfe34</td><td>-</td></tr>
<tr><td>dead_grave</td><td>0xfe50</td><td>-</td></tr>
<tr><td>dead_acute</td><td>0xfe51</td><td>-</td></tr>
<tr><td>dead_circumflex</td><td>0xfe52</td><td>-</td></tr>
<tr><td>dead_tilde</td><td>0xfe53</td><td>-</td></tr>
<tr><td>dead_perispomeni</td><td>0xfe53</td><td>alias for dead_tilde</td></tr>
<tr><td>dead_macron</td><td>0xfe54</td><td>-</td></tr>
<tr><td>dead_breve</td><td>0xfe55</td><td>-</td></tr>
<tr><td>dead_abovedot</td><td>0xfe56</td><td>-</td></tr>
<tr><td>dead_diaeresis</td><td>0xfe57</td><td>-</td></tr>
<tr><td>dead_abovering</td><td>0xfe58</td><td>-</td></tr>
<tr><td>dead_doubleacute</td><td>0xfe59</td><td>-</td></tr>
<tr><td>dead_caron</td><td>0xfe5a</td><td>-</td></tr>
<tr><td>dead_cedilla</td><td>0xfe5b</td><td>-</td></tr>
<tr><td>dead_ogonek</td><td>0xfe5c</td><td>-</td></tr>
<tr><td>dead_iota</td><td>0xfe5d</td><td>-</td></tr>
<tr><td>dead_voiced_sound</td><td>0xfe5e</td><td>-</td></tr>
<tr><td>dead_semivoiced_sound</td><td>0xfe5f</td><td>-</td></tr>
<tr><td>dead_belowdot</td><td>0xfe60</td><td>-</td></tr>
<tr><td>dead_hook</td><td>0xfe61</td><td>-</td></tr>
<tr><td>dead_horn</td><td>0xfe62</td><td>-</td></tr>
<tr><td>dead_stroke</td><td>0xfe63</td><td>-</td></tr>
<tr><td>dead_abovecomma</td><td>0xfe64</td><td>-</td></tr>
<tr><td>dead_psili</td><td>0xfe64</td><td>alias for dead_abovecomma</td></tr>
<tr><td>dead_abovereversedcomma</td><td>0xfe65</td><td>-</td></tr>
<tr><td>dead_dasia</td><td>0xfe65</td><td>alias for dead_abovereversedcomma</td></tr>
<tr><td>dead_doublegrave</td><td>0xfe66</td><td>-</td></tr>
<tr><td>dead_belowring</td><td>0xfe67</td><td>-</td></tr>
<tr><td>dead_belowmacron</td><td>0xfe68</td><td>-</td></tr>
<tr><td>dead_belowcircumflex</td><td>0xfe69</td><td>-</td></tr>
<tr><td>dead_belowtilde</td><td>0xfe6a</td><td>-</td></tr>
<tr><td>dead_belowbreve</td><td>0xfe6b</td><td>-</td></tr>
<tr><td>dead_belowdiaeresis</td><td>0xfe6c</td><td>-</td></tr>
<tr><td>dead_invertedbreve</td><td>0xfe6d</td><td>-</td></tr>
<tr><td>dead_belowcomma</td><td>0xfe6e</td><td>-</td></tr>
<tr><td>dead_currency</td><td>0xfe6f</td><td>extra dead elements for German T3 layout</td></tr>
<tr><td>dead_lowline</td><td>0xfe90</td><td>-</td></tr>
<tr><td>dead_aboveverticalline</td><td>0xfe91</td><td>-</td></tr>
<tr><td>dead_belowverticalline</td><td>0xfe92</td><td>-</td></tr>
<tr><td>dead_longsolidusoverlay</td><td>0xfe93</td><td>dead vowels for universal syllable entry</td></tr>
<tr><td>dead_a</td><td>0xfe80</td><td>-</td></tr>
<tr><td>dead_A</td><td>0xfe81</td><td>-</td></tr>
<tr><td>dead_e</td><td>0xfe82</td><td>-</td></tr>
<tr><td>dead_E</td><td>0xfe83</td><td>-</td></tr>
<tr><td>dead_i</td><td>0xfe84</td><td>-</td></tr>
<tr><td>dead_I</td><td>0xfe85</td><td>-</td></tr>
<tr><td>dead_o</td><td>0xfe86</td><td>-</td></tr>
<tr><td>dead_O</td><td>0xfe87</td><td>-</td></tr>
<tr><td>dead_u</td><td>0xfe88</td><td>-</td></tr>
<tr><td>dead_U</td><td>0xfe89</td><td>-</td></tr>
<tr><td>dead_small_schwa</td><td>0xfe8a</td><td>-</td></tr>
<tr><td>dead_capital_schwa</td><td>0xfe8b</td><td>-</td></tr>
<tr><td>dead_greek</td><td>0xfe8c</td><td>-</td></tr>
<tr><td>First_Virtual_Screen</td><td>0xfed0</td><td>-</td></tr>
<tr><td>Prev_Virtual_Screen</td><td>0xfed1</td><td>-</td></tr>
<tr><td>Next_Virtual_Screen</td><td>0xfed2</td><td>-</td></tr>
<tr><td>Last_Virtual_Screen</td><td>0xfed4</td><td>-</td></tr>
<tr><td>Terminate_Server</td><td>0xfed5</td><td>-</td></tr>
<tr><td>AccessX_Enable</td><td>0xfe70</td><td>-</td></tr>
<tr><td>AccessX_Feedback_Enable</td><td>0xfe71</td><td>-</td></tr>
<tr><td>RepeatKeys_Enable</td><td>0xfe72</td><td>-</td></tr>
<tr><td>SlowKeys_Enable</td><td>0xfe73</td><td>-</td></tr>
<tr><td>BounceKeys_Enable</td><td>0xfe74</td><td>-</td></tr>
<tr><td>StickyKeys_Enable</td><td>0xfe75</td><td>-</td></tr>
<tr><td>MouseKeys_Enable</td><td>0xfe76</td><td>-</td></tr>
<tr><td>MouseKeys_Accel_Enable</td><td>0xfe77</td><td>-</td></tr>
<tr><td>Overlay1_Enable</td><td>0xfe78</td><td>-</td></tr>
<tr><td>Overlay2_Enable</td><td>0xfe79</td><td>-</td></tr>
<tr><td>AudibleBell_Enable</td><td>0xfe7a</td><td>-</td></tr>
<tr><td>Pointer_Left</td><td>0xfee0</td><td>-</td></tr>
<tr><td>Pointer_Right</td><td>0xfee1</td><td>-</td></tr>
<tr><td>Pointer_Up</td><td>0xfee2</td><td>-</td></tr>
<tr><td>Pointer_Down</td><td>0xfee3</td><td>-</td></tr>
<tr><td>Pointer_UpLeft</td><td>0xfee4</td><td>-</td></tr>
<tr><td>Pointer_UpRight</td><td>0xfee5</td><td>-</td></tr>
<tr><td>Pointer_DownLeft</td><td>0xfee6</td><td>-</td></tr>
<tr><td>Pointer_DownRight</td><td>0xfee7</td><td>-</td></tr>
<tr><td>Pointer_Button_Dflt</td><td>0xfee8</td><td>-</td></tr>
<tr><td>Pointer_Button1</td><td>0xfee9</td><td>-</td></tr>
<tr><td>Pointer_Button2</td><td>0xfeea</td><td>-</td></tr>
<tr><td>Pointer_Button3</td><td>0xfeeb</td><td>-</td></tr>
<tr><td>Pointer_Button4</td><td>0xfeec</td><td>-</td></tr>
<tr><td>Pointer_Button5</td><td>0xfeed</td><td>-</td></tr>
<tr><td>Pointer_DblClick_Dflt</td><td>0xfeee</td><td>-</td></tr>
<tr><td>Pointer_DblClick1</td><td>0xfeef</td><td>-</td></tr>
<tr><td>Pointer_DblClick2</td><td>0xfef0</td><td>-</td></tr>
<tr><td>Pointer_DblClick3</td><td>0xfef1</td><td>-</td></tr>
<tr><td>Pointer_DblClick4</td><td>0xfef2</td><td>-</td></tr>
<tr><td>Pointer_DblClick5</td><td>0xfef3</td><td>-</td></tr>
<tr><td>Pointer_Drag_Dflt</td><td>0xfef4</td><td>-</td></tr>
<tr><td>Pointer_Drag1</td><td>0xfef5</td><td>-</td></tr>
<tr><td>Pointer_Drag2</td><td>0xfef6</td><td>-</td></tr>
<tr><td>Pointer_Drag3</td><td>0xfef7</td><td>-</td></tr>
<tr><td>Pointer_Drag4</td><td>0xfef8</td><td>-</td></tr>
<tr><td>Pointer_Drag5</td><td>0xfefd</td><td>-</td></tr>
<tr><td>Pointer_EnableKeys</td><td>0xfef9</td><td>-</td></tr>
<tr><td>Pointer_Accelerate</td><td>0xfefa</td><td>-</td></tr>
<tr><td>Pointer_DfltBtnNext</td><td>0xfefb</td><td>-</td></tr>
<tr><td>Pointer_DfltBtnPrev</td><td>0xfefc</td><td>Single-Stroke Multiple-Character N-Graph Keysyms For The X Input Method</td></tr>
<tr><td>ch</td><td>0xfea0</td><td>-</td></tr>
<tr><td>Ch</td><td>0xfea1</td><td>-</td></tr>
<tr><td>CH</td><td>0xfea2</td><td>-</td></tr>
<tr><td>c_h</td><td>0xfea3</td><td>-</td></tr>
<tr><td>C_h</td><td>0xfea4</td><td>-</td></tr>
<tr><td>C_H</td><td>0xfea5</td><td>-</td></tr>
<tr><td>3270_Duplicate</td><td>0xfd01</td><td>-</td></tr>
<tr><td>3270_FieldMark</td><td>0xfd02</td><td>-</td></tr>
<tr><td>3270_Right2</td><td>0xfd03</td><td>-</td></tr>
<tr><td>3270_Left2</td><td>0xfd04</td><td>-</td></tr>
<tr><td>3270_BackTab</td><td>0xfd05</td><td>-</td></tr>
<tr><td>3270_EraseEOF</td><td>0xfd06</td><td>-</td></tr>
<tr><td>3270_EraseInput</td><td>0xfd07</td><td>-</td></tr>
<tr><td>3270_Reset</td><td>0xfd08</td><td>-</td></tr>
<tr><td>3270_Quit</td><td>0xfd09</td><td>-</td></tr>
<tr><td>3270_PA1</td><td>0xfd0a</td><td>-</td></tr>
<tr><td>3270_PA2</td><td>0xfd0b</td><td>-</td></tr>
<tr><td>3270_PA3</td><td>0xfd0c</td><td>-</td></tr>
<tr><td>3270_Test</td><td>0xfd0d</td><td>-</td></tr>
<tr><td>3270_Attn</td><td>0xfd0e</td><td>-</td></tr>
<tr><td>3270_CursorBlink</td><td>0xfd0f</td><td>-</td></tr>
<tr><td>3270_AltCursor</td><td>0xfd10</td><td>-</td></tr>
<tr><td>3270_KeyClick</td><td>0xfd11</td><td>-</td></tr>
<tr><td>3270_Jump</td><td>0xfd12</td><td>-</td></tr>
<tr><td>3270_Ident</td><td>0xfd13</td><td>-</td></tr>
<tr><td>3270_Rule</td><td>0xfd14</td><td>-</td></tr>
<tr><td>3270_Copy</td><td>0xfd15</td><td>-</td></tr>
<tr><td>3270_Play</td><td>0xfd16</td><td>-</td></tr>
<tr><td>3270_Setup</td><td>0xfd17</td><td>-</td></tr>
<tr><td>3270_Record</td><td>0xfd18</td><td>-</td></tr>
<tr><td>3270_ChangeScreen</td><td>0xfd19</td><td>-</td></tr>
<tr><td>3270_DeleteWord</td><td>0xfd1a</td><td>-</td></tr>
<tr><td>3270_ExSelect</td><td>0xfd1b</td><td>-</td></tr>
<tr><td>3270_CursorSelect</td><td>0xfd1c</td><td>-</td></tr>
<tr><td>3270_PrintScreen</td><td>0xfd1d</td><td>-</td></tr>
<tr><td>3270_Enter</td><td>0xfd1e</td><td>-</td></tr>
<tr><td>space</td><td>0x0020</td><td>U+0020 SPACE</td></tr>
<tr><td>exclam</td><td>0x0021</td><td>U+0021 EXCLAMATION MARK</td></tr>
<tr><td>quotedbl</td><td>0x0022</td><td>U+0022 QUOTATION MARK</td></tr>
<tr><td>numbersign</td><td>0x0023</td><td>U+0023 NUMBER SIGN</td></tr>
<tr><td>dollar</td><td>0x0024</td><td>U+0024 DOLLAR SIGN</td></tr>
<tr><td>percent</td><td>0x0025</td><td>U+0025 PERCENT SIGN</td></tr>
<tr><td>ampersand</td><td>0x0026</td><td>U+0026 AMPERSAND</td></tr>
<tr><td>apostrophe</td><td>0x0027</td><td>U+0027 APOSTROPHE</td></tr>
<tr><td>quoteright</td><td>0x0027</td><td>deprecated</td></tr>
<tr><td>parenleft</td><td>0x0028</td><td>U+0028 LEFT PARENTHESIS</td></tr>
<tr><td>parenright</td><td>0x0029</td><td>U+0029 RIGHT PARENTHESIS</td></tr>
<tr><td>asterisk</td><td>0x002a</td><td>U+002A ASTERISK</td></tr>
<tr><td>plus</td><td>0x002b</td><td>U+002B PLUS SIGN</td></tr>
<tr><td>comma</td><td>0x002c</td><td>U+002C COMMA</td></tr>
<tr><td>minus</td><td>0x002d</td><td>U+002D HYPHEN-MINUS</td></tr>
<tr><td>period</td><td>0x002e</td><td>U+002E FULL STOP</td></tr>
<tr><td>slash</td><td>0x002f</td><td>U+002F SOLIDUS</td></tr>
<tr><td>0</td><td>0x0030</td><td>U+0030 DIGIT ZERO</td></tr>
<tr><td>1</td><td>0x0031</td><td>U+0031 DIGIT ONE</td></tr>
<tr><td>2</td><td>0x0032</td><td>U+0032 DIGIT TWO</td></tr>
<tr><td>3</td><td>0x0033</td><td>U+0033 DIGIT THREE</td></tr>
<tr><td>4</td><td>0x0034</td><td>U+0034 DIGIT FOUR</td></tr>
<tr><td>5</td><td>0x0035</td><td>U+0035 DIGIT FIVE</td></tr>
<tr><td>6</td><td>0x0036</td><td>U+0036 DIGIT SIX</td></tr>
<tr><td>7</td><td>0x0037</td><td>U+0037 DIGIT SEVEN</td></tr>
<tr><td>8</td><td>0x0038</td><td>U+0038 DIGIT EIGHT</td></tr>
<tr><td>9</td><td>0x0039</td><td>U+0039 DIGIT NINE</td></tr>
<tr><td>colon</td><td>0x003a</td><td>U+003A COLON</td></tr>
<tr><td>semicolon</td><td>0x003b</td><td>U+003B SEMICOLON</td></tr>
<tr><td>less</td><td>0x003c</td><td>U+003C LESS-THAN SIGN</td></tr>
<tr><td>equal</td><td>0x003d</td><td>U+003D EQUALS SIGN</td></tr>
<tr><td>greater</td><td>0x003e</td><td>U+003E GREATER-THAN SIGN</td></tr>
<tr><td>question</td><td>0x003f</td><td>U+003F QUESTION MARK</td></tr>
<tr><td>at</td><td>0x0040</td><td>U+0040 COMMERCIAL AT</td></tr>
<tr><td>A</td><td>0x0041</td><td>U+0041 LATIN CAPITAL LETTER A</td></tr>
<tr><td>B</td><td>0x0042</td><td>U+0042 LATIN CAPITAL LETTER B</td></tr>
<tr><td>C</td><td>0x0043</td><td>U+0043 LATIN CAPITAL LETTER C</td></tr>
<tr><td>D</td><td>0x0044</td><td>U+0044 LATIN CAPITAL LETTER D</td></tr>
<tr><td>E</td><td>0x0045</td><td>U+0045 LATIN CAPITAL LETTER E</td></tr>
<tr><td>F</td><td>0x0046</td><td>U+0046 LATIN CAPITAL LETTER F</td></tr>
<tr><td>G</td><td>0x0047</td><td>U+0047 LATIN CAPITAL LETTER G</td></tr>
<tr><td>H</td><td>0x0048</td><td>U+0048 LATIN CAPITAL LETTER H</td></tr>
<tr><td>I</td><td>0x0049</td><td>U+0049 LATIN CAPITAL LETTER I</td></tr>
<tr><td>J</td><td>0x004a</td><td>U+004A LATIN CAPITAL LETTER J</td></tr>
<tr><td>K</td><td>0x004b</td><td>U+004B LATIN CAPITAL LETTER K</td></tr>
<tr><td>L</td><td>0x004c</td><td>U+004C LATIN CAPITAL LETTER L</td></tr>
<tr><td>M</td><td>0x004d</td><td>U+004D LATIN CAPITAL LETTER M</td></tr>
<tr><td>N</td><td>0x004e</td><td>U+004E LATIN CAPITAL LETTER N</td></tr>
<tr><td>O</td><td>0x004f</td><td>U+004F LATIN CAPITAL LETTER O</td></tr>
<tr><td>P</td><td>0x0050</td><td>U+0050 LATIN CAPITAL LETTER P</td></tr>
<tr><td>Q</td><td>0x0051</td><td>U+0051 LATIN CAPITAL LETTER Q</td></tr>
<tr><td>R</td><td>0x0052</td><td>U+0052 LATIN CAPITAL LETTER R</td></tr>
<tr><td>S</td><td>0x0053</td><td>U+0053 LATIN CAPITAL LETTER S</td></tr>
<tr><td>T</td><td>0x0054</td><td>U+0054 LATIN CAPITAL LETTER T</td></tr>
<tr><td>U</td><td>0x0055</td><td>U+0055 LATIN CAPITAL LETTER U</td></tr>
<tr><td>V</td><td>0x0056</td><td>U+0056 LATIN CAPITAL LETTER V</td></tr>
<tr><td>W</td><td>0x0057</td><td>U+0057 LATIN CAPITAL LETTER W</td></tr>
<tr><td>X</td><td>0x0058</td><td>U+0058 LATIN CAPITAL LETTER X</td></tr>
<tr><td>Y</td><td>0x0059</td><td>U+0059 LATIN CAPITAL LETTER Y</td></tr>
<tr><td>Z</td><td>0x005a</td><td>U+005A LATIN CAPITAL LETTER Z</td></tr>
<tr><td>bracketleft</td><td>0x005b</td><td>U+005B LEFT SQUARE BRACKET</td></tr>
<tr><td>backslash</td><td>0x005c</td><td>U+005C REVERSE SOLIDUS</td></tr>
<tr><td>bracketright</td><td>0x005d</td><td>U+005D RIGHT SQUARE BRACKET</td></tr>
<tr><td>asciicircum</td><td>0x005e</td><td>U+005E CIRCUMFLEX ACCENT</td></tr>
<tr><td>underscore</td><td>0x005f</td><td>U+005F LOW LINE</td></tr>
<tr><td>grave</td><td>0x0060</td><td>U+0060 GRAVE ACCENT</td></tr>
<tr><td>quoteleft</td><td>0x0060</td><td>deprecated</td></tr>
<tr><td>a</td><td>0x0061</td><td>U+0061 LATIN SMALL LETTER A</td></tr>
<tr><td>b</td><td>0x0062</td><td>U+0062 LATIN SMALL LETTER B</td></tr>
<tr><td>c</td><td>0x0063</td><td>U+0063 LATIN SMALL LETTER C</td></tr>
<tr><td>d</td><td>0x0064</td><td>U+0064 LATIN SMALL LETTER D</td></tr>
<tr><td>e</td><td>0x0065</td><td>U+0065 LATIN SMALL LETTER E</td></tr>
<tr><td>f</td><td>0x0066</td><td>U+0066 LATIN SMALL LETTER F</td></tr>
<tr><td>g</td><td>0x0067</td><td>U+0067 LATIN SMALL LETTER G</td></tr>
<tr><td>h</td><td>0x0068</td><td>U+0068 LATIN SMALL LETTER H</td></tr>
<tr><td>i</td><td>0x0069</td><td>U+0069 LATIN SMALL LETTER I</td></tr>
<tr><td>j</td><td>0x006a</td><td>U+006A LATIN SMALL LETTER J</td></tr>
<tr><td>k</td><td>0x006b</td><td>U+006B LATIN SMALL LETTER K</td></tr>
<tr><td>l</td><td>0x006c</td><td>U+006C LATIN SMALL LETTER L</td></tr>
<tr><td>m</td><td>0x006d</td><td>U+006D LATIN SMALL LETTER M</td></tr>
<tr><td>n</td><td>0x006e</td><td>U+006E LATIN SMALL LETTER N</td></tr>
<tr><td>o</td><td>0x006f</td><td>U+006F LATIN SMALL LETTER O</td></tr>
<tr><td>p</td><td>0x0070</td><td>U+0070 LATIN SMALL LETTER P</td></tr>
<tr><td>q</td><td>0x0071</td><td>U+0071 LATIN SMALL LETTER Q</td></tr>
<tr><td>r</td><td>0x0072</td><td>U+0072 LATIN SMALL LETTER R</td></tr>
<tr><td>s</td><td>0x0073</td><td>U+0073 LATIN SMALL LETTER S</td></tr>
<tr><td>t</td><td>0x0074</td><td>U+0074 LATIN SMALL LETTER T</td></tr>
<tr><td>u</td><td>0x0075</td><td>U+0075 LATIN SMALL LETTER U</td></tr>
<tr><td>v</td><td>0x0076</td><td>U+0076 LATIN SMALL LETTER V</td></tr>
<tr><td>w</td><td>0x0077</td><td>U+0077 LATIN SMALL LETTER W</td></tr>
<tr><td>x</td><td>0x0078</td><td>U+0078 LATIN SMALL LETTER X</td></tr>
<tr><td>y</td><td>0x0079</td><td>U+0079 LATIN SMALL LETTER Y</td></tr>
<tr><td>z</td><td>0x007a</td><td>U+007A LATIN SMALL LETTER Z</td></tr>
<tr><td>braceleft</td><td>0x007b</td><td>U+007B LEFT CURLY BRACKET</td></tr>
<tr><td>bar</td><td>0x007c</td><td>U+007C VERTICAL LINE</td></tr>
<tr><td>braceright</td><td>0x007d</td><td>U+007D RIGHT CURLY BRACKET</td></tr>
<tr><td>asciitilde</td><td>0x007e</td><td>U+007E TILDE</td></tr>
<tr><td>nobreakspace</td><td>0x00a0</td><td>U+00A0 NO-BREAK SPACE</td></tr>
<tr><td>exclamdown</td><td>0x00a1</td><td>U+00A1 INVERTED EXCLAMATION MARK</td></tr>
<tr><td>cent</td><td>0x00a2</td><td>U+00A2 CENT SIGN</td></tr>
<tr><td>sterling</td><td>0x00a3</td><td>U+00A3 POUND SIGN</td></tr>
<tr><td>currency</td><td>0x00a4</td><td>U+00A4 CURRENCY SIGN</td></tr>
<tr><td>yen</td><td>0x00a5</td><td>U+00A5 YEN SIGN</td></tr>
<tr><td>brokenbar</td><td>0x00a6</td><td>U+00A6 BROKEN BAR</td></tr>
<tr><td>section</td><td>0x00a7</td><td>U+00A7 SECTION SIGN</td></tr>
<tr><td>diaeresis</td><td>0x00a8</td><td>U+00A8 DIAERESIS</td></tr>
<tr><td>copyright</td><td>0x00a9</td><td>U+00A9 COPYRIGHT SIGN</td></tr>
<tr><td>ordfeminine</td><td>0x00aa</td><td>U+00AA FEMININE ORDINAL INDICATOR</td></tr>
<tr><td>guillemotleft</td><td>0x00ab</td><td>U+00AB LEFT-POINTING DOUBLE ANGLE QUOTATION MARK</td></tr>
<tr><td>notsign</td><td>0x00ac</td><td>U+00AC NOT SIGN</td></tr>
<tr><td>hyphen</td><td>0x00ad</td><td>U+00AD SOFT HYPHEN</td></tr>
<tr><td>registered</td><td>0x00ae</td><td>U+00AE REGISTERED SIGN</td></tr>
<tr><td>macron</td><td>0x00af</td><td>U+00AF MACRON</td></tr>
<tr><td>degree</td><td>0x00b0</td><td>U+00B0 DEGREE SIGN</td></tr>
<tr><td>plusminus</td><td>0x00b1</td><td>U+00B1 PLUS-MINUS SIGN</td></tr>
<tr><td>twosuperior</td><td>0x00b2</td><td>U+00B2 SUPERSCRIPT TWO</td></tr>
<tr><td>threesuperior</td><td>0x00b3</td><td>U+00B3 SUPERSCRIPT THREE</td></tr>
<tr><td>acute</td><td>0x00b4</td><td>U+00B4 ACUTE ACCENT</td></tr>
<tr><td>mu</td><td>0x00b5</td><td>U+00B5 MICRO SIGN</td></tr>
<tr><td>paragraph</td><td>0x00b6</td><td>U+00B6 PILCROW SIGN</td></tr>
<tr><td>periodcentered</td><td>0x00b7</td><td>U+00B7 MIDDLE DOT</td></tr>
<tr><td>cedilla</td><td>0x00b8</td><td>U+00B8 CEDILLA</td></tr>
<tr><td>onesuperior</td><td>0x00b9</td><td>U+00B9 SUPERSCRIPT ONE</td></tr>
<tr><td>masculine</td><td>0x00ba</td><td>U+00BA MASCULINE ORDINAL INDICATOR</td></tr>
<tr><td>guillemotright</td><td>0x00bb</td><td>U+00BB RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK</td></tr>
<tr><td>onequarter</td><td>0x00bc</td><td>U+00BC VULGAR FRACTION ONE QUARTER</td></tr>
<tr><td>onehalf</td><td>0x00bd</td><td>U+00BD VULGAR FRACTION ONE HALF</td></tr>
<tr><td>threequarters</td><td>0x00be</td><td>U+00BE VULGAR FRACTION THREE QUARTERS</td></tr>
<tr><td>questiondown</td><td>0x00bf</td><td>U+00BF INVERTED QUESTION MARK</td></tr>
<tr><td>Agrave</td><td>0x00c0</td><td>U+00C0 LATIN CAPITAL LETTER A WITH GRAVE</td></tr>
<tr><td>Aacute</td><td>0x00c1</td><td>U+00C1 LATIN CAPITAL LETTER A WITH ACUTE</td></tr>
<tr><td>Acircumflex</td><td>0x00c2</td><td>U+00C2 LATIN CAPITAL LETTER A WITH CIRCUMFLEX</td></tr>
<tr><td>Atilde</td><td>0x00c3</td><td>U+00C3 LATIN CAPITAL LETTER A WITH TILDE</td></tr>
<tr><td>Adiaeresis</td><td>0x00c4</td><td>U+00C4 LATIN CAPITAL LETTER A WITH DIAERESIS</td></tr>
<tr><td>Aring</td><td>0x00c5</td><td>U+00C5 LATIN CAPITAL LETTER A WITH RING ABOVE</td></tr>
<tr><td>AE</td><td>0x00c6</td><td>U+00C6 LATIN CAPITAL LETTER AE</td></tr>
<tr><td>Ccedilla</td><td>0x00c7</td><td>U+00C7 LATIN CAPITAL LETTER C WITH CEDILLA</td></tr>
<tr><td>Egrave</td><td>0x00c8</td><td>U+00C8 LATIN CAPITAL LETTER E WITH GRAVE</td></tr>
<tr><td>Eacute</td><td>0x00c9</td><td>U+00C9 LATIN CAPITAL LETTER E WITH ACUTE</td></tr>
<tr><td>Ecircumflex</td><td>0x00ca</td><td>U+00CA LATIN CAPITAL LETTER E WITH CIRCUMFLEX</td></tr>
<tr><td>Ediaeresis</td><td>0x00cb</td><td>U+00CB LATIN CAPITAL LETTER E WITH DIAERESIS</td></tr>
<tr><td>Igrave</td><td>0x00cc</td><td>U+00CC LATIN CAPITAL LETTER I WITH GRAVE</td></tr>
<tr><td>Iacute</td><td>0x00cd</td><td>U+00CD LATIN CAPITAL LETTER I WITH ACUTE</td></tr>
<tr><td>Icircumflex</td><td>0x00ce</td><td>U+00CE LATIN CAPITAL LETTER I WITH CIRCUMFLEX</td></tr>
<tr><td>Idiaeresis</td><td>0x00cf</td><td>U+00CF LATIN CAPITAL LETTER I WITH DIAERESIS</td></tr>
<tr><td>ETH</td><td>0x00d0</td><td>U+00D0 LATIN CAPITAL LETTER ETH</td></tr>
<tr><td>Eth</td><td>0x00d0</td><td>deprecated</td></tr>
<tr><td>Ntilde</td><td>0x00d1</td><td>U+00D1 LATIN CAPITAL LETTER N WITH TILDE</td></tr>
<tr><td>Ograve</td><td>0x00d2</td><td>U+00D2 LATIN CAPITAL LETTER O WITH GRAVE</td></tr>
<tr><td>Oacute</td><td>0x00d3</td><td>U+00D3 LATIN CAPITAL LETTER O WITH ACUTE</td></tr>
<tr><td>Ocircumflex</td><td>0x00d4</td><td>U+00D4 LATIN CAPITAL LETTER O WITH CIRCUMFLEX</td></tr>
<tr><td>Otilde</td><td>0x00d5</td><td>U+00D5 LATIN CAPITAL LETTER O WITH TILDE</td></tr>
<tr><td>Odiaeresis</td><td>0x00d6</td><td>U+00D6 LATIN CAPITAL LETTER O WITH DIAERESIS</td></tr>
<tr><td>multiply</td><td>0x00d7</td><td>U+00D7 MULTIPLICATION SIGN</td></tr>
<tr><td>Oslash</td><td>0x00d8</td><td>U+00D8 LATIN CAPITAL LETTER O WITH STROKE</td></tr>
<tr><td>Ooblique</td><td>0x00d8</td><td>U+00D8 LATIN CAPITAL LETTER O WITH STROKE</td></tr>
<tr><td>Ugrave</td><td>0x00d9</td><td>U+00D9 LATIN CAPITAL LETTER U WITH GRAVE</td></tr>
<tr><td>Uacute</td><td>0x00da</td><td>U+00DA LATIN CAPITAL LETTER U WITH ACUTE</td></tr>
<tr><td>Ucircumflex</td><td>0x00db</td><td>U+00DB LATIN CAPITAL LETTER U WITH CIRCUMFLEX</td></tr>
<tr><td>Udiaeresis</td><td>0x00dc</td><td>U+00DC LATIN CAPITAL LETTER U WITH DIAERESIS</td></tr>
<tr><td>Yacute</td><td>0x00dd</td><td>U+00DD LATIN CAPITAL LETTER Y WITH ACUTE</td></tr>
<tr><td>THORN</td><td>0x00de</td><td>U+00DE LATIN CAPITAL LETTER THORN</td></tr>
<tr><td>Thorn</td><td>0x00de</td><td>deprecated</td></tr>
<tr><td>ssharp</td><td>0x00df</td><td>U+00DF LATIN SMALL LETTER SHARP S</td></tr>
<tr><td>agrave</td><td>0x00e0</td><td>U+00E0 LATIN SMALL LETTER A WITH GRAVE</td></tr>
<tr><td>aacute</td><td>0x00e1</td><td>U+00E1 LATIN SMALL LETTER A WITH ACUTE</td></tr>
<tr><td>acircumflex</td><td>0x00e2</td><td>U+00E2 LATIN SMALL LETTER A WITH CIRCUMFLEX</td></tr>
<tr><td>atilde</td><td>0x00e3</td><td>U+00E3 LATIN SMALL LETTER A WITH TILDE</td></tr>
<tr><td>adiaeresis</td><td>0x00e4</td><td>U+00E4 LATIN SMALL LETTER A WITH DIAERESIS</td></tr>
<tr><td>aring</td><td>0x00e5</td><td>U+00E5 LATIN SMALL LETTER A WITH RING ABOVE</td></tr>
<tr><td>ae</td><td>0x00e6</td><td>U+00E6 LATIN SMALL LETTER AE</td></tr>
<tr><td>ccedilla</td><td>0x00e7</td><td>U+00E7 LATIN SMALL LETTER C WITH CEDILLA</td></tr>
<tr><td>egrave</td><td>0x00e8</td><td>U+00E8 LATIN SMALL LETTER E WITH GRAVE</td></tr>
<tr><td>eacute</td><td>0x00e9</td><td>U+00E9 LATIN SMALL LETTER E WITH ACUTE</td></tr>
<tr><td>ecircumflex</td><td>0x00ea</td><td>U+00EA LATIN SMALL LETTER E WITH CIRCUMFLEX</td></tr>
<tr><td>ediaeresis</td><td>0x00eb</td><td>U+00EB LATIN SMALL LETTER E WITH DIAERESIS</td></tr>
<tr><td>igrave</td><td>0x00ec</td><td>U+00EC LATIN SMALL LETTER I WITH GRAVE</td></tr>
<tr><td>iacute</td><td>0x00ed</td><td>U+00ED LATIN SMALL LETTER I WITH ACUTE</td></tr>
<tr><td>icircumflex</td><td>0x00ee</td><td>U+00EE LATIN SMALL LETTER I WITH CIRCUMFLEX</td></tr>
<tr><td>idiaeresis</td><td>0x00ef</td><td>U+00EF LATIN SMALL LETTER I WITH DIAERESIS</td></tr>
<tr><td>eth</td><td>0x00f0</td><td>U+00F0 LATIN SMALL LETTER ETH</td></tr>
<tr><td>ntilde</td><td>0x00f1</td><td>U+00F1 LATIN SMALL LETTER N WITH TILDE</td></tr>
<tr><td>ograve</td><td>0x00f2</td><td>U+00F2 LATIN SMALL LETTER O WITH GRAVE</td></tr>
<tr><td>oacute</td><td>0x00f3</td><td>U+00F3 LATIN SMALL LETTER O WITH ACUTE</td></tr>
<tr><td>ocircumflex</td><td>0x00f4</td><td>U+00F4 LATIN SMALL LETTER O WITH CIRCUMFLEX</td></tr>
<tr><td>otilde</td><td>0x00f5</td><td>U+00F5 LATIN SMALL LETTER O WITH TILDE</td></tr>
<tr><td>odiaeresis</td><td>0x00f6</td><td>U+00F6 LATIN SMALL LETTER O WITH DIAERESIS</td></tr>
<tr><td>division</td><td>0x00f7</td><td>U+00F7 DIVISION SIGN</td></tr>
<tr><td>oslash</td><td>0x00f8</td><td>U+00F8 LATIN SMALL LETTER O WITH STROKE</td></tr>
<tr><td>ooblique</td><td>0x00f8</td><td>U+00F8 LATIN SMALL LETTER O WITH STROKE</td></tr>
<tr><td>ugrave</td><td>0x00f9</td><td>U+00F9 LATIN SMALL LETTER U WITH GRAVE</td></tr>
<tr><td>uacute</td><td>0x00fa</td><td>U+00FA LATIN SMALL LETTER U WITH ACUTE</td></tr>
<tr><td>ucircumflex</td><td>0x00fb</td><td>U+00FB LATIN SMALL LETTER U WITH CIRCUMFLEX</td></tr>
<tr><td>udiaeresis</td><td>0x00fc</td><td>U+00FC LATIN SMALL LETTER U WITH DIAERESIS</td></tr>
<tr><td>yacute</td><td>0x00fd</td><td>U+00FD LATIN SMALL LETTER Y WITH ACUTE</td></tr>
<tr><td>thorn</td><td>0x00fe</td><td>U+00FE LATIN SMALL LETTER THORN</td></tr>
<tr><td>ydiaeresis</td><td>0x00ff</td><td>U+00FF LATIN SMALL LETTER Y WITH DIAERESIS</td></tr>
<tr><td>Aogonek</td><td>0x01a1</td><td>U+0104 LATIN CAPITAL LETTER A WITH OGONEK</td></tr>
<tr><td>breve</td><td>0x01a2</td><td>U+02D8 BREVE</td></tr>
<tr><td>Lstroke</td><td>0x01a3</td><td>U+0141 LATIN CAPITAL LETTER L WITH STROKE</td></tr>
<tr><td>Lcaron</td><td>0x01a5</td><td>U+013D LATIN CAPITAL LETTER L WITH CARON</td></tr>
<tr><td>Sacute</td><td>0x01a6</td><td>U+015A LATIN CAPITAL LETTER S WITH ACUTE</td></tr>
<tr><td>Scaron</td><td>0x01a9</td><td>U+0160 LATIN CAPITAL LETTER S WITH CARON</td></tr>
<tr><td>Scedilla</td><td>0x01aa</td><td>U+015E LATIN CAPITAL LETTER S WITH CEDILLA</td></tr>
<tr><td>Tcaron</td><td>0x01ab</td><td>U+0164 LATIN CAPITAL LETTER T WITH CARON</td></tr>
<tr><td>Zacute</td><td>0x01ac</td><td>U+0179 LATIN CAPITAL LETTER Z WITH ACUTE</td></tr>
<tr><td>Zcaron</td><td>0x01ae</td><td>U+017D LATIN CAPITAL LETTER Z WITH CARON</td></tr>
<tr><td>Zabovedot</td><td>0x01af</td><td>U+017B LATIN CAPITAL LETTER Z WITH DOT ABOVE</td></tr>
<tr><td>aogonek</td><td>0x01b1</td><td>U+0105 LATIN SMALL LETTER A WITH OGONEK</td></tr>
<tr><td>ogonek</td><td>0x01b2</td><td>U+02DB OGONEK</td></tr>
<tr><td>lstroke</td><td>0x01b3</td><td>U+0142 LATIN SMALL LETTER L WITH STROKE</td></tr>
<tr><td>lcaron</td><td>0x01b5</td><td>U+013E LATIN SMALL LETTER L WITH CARON</td></tr>
<tr><td>sacute</td><td>0x01b6</td><td>U+015B LATIN SMALL LETTER S WITH ACUTE</td></tr>
<tr><td>caron</td><td>0x01b7</td><td>U+02C7 CARON</td></tr>
<tr><td>scaron</td><td>0x01b9</td><td>U+0161 LATIN SMALL LETTER S WITH CARON</td></tr>
<tr><td>scedilla</td><td>0x01ba</td><td>U+015F LATIN SMALL LETTER S WITH CEDILLA</td></tr>
<tr><td>tcaron</td><td>0x01bb</td><td>U+0165 LATIN SMALL LETTER T WITH CARON</td></tr>
<tr><td>zacute</td><td>0x01bc</td><td>U+017A LATIN SMALL LETTER Z WITH ACUTE</td></tr>
<tr><td>doubleacute</td><td>0x01bd</td><td>U+02DD DOUBLE ACUTE ACCENT</td></tr>
<tr><td>zcaron</td><td>0x01be</td><td>U+017E LATIN SMALL LETTER Z WITH CARON</td></tr>
<tr><td>zabovedot</td><td>0x01bf</td><td>U+017C LATIN SMALL LETTER Z WITH DOT ABOVE</td></tr>
<tr><td>Racute</td><td>0x01c0</td><td>U+0154 LATIN CAPITAL LETTER R WITH ACUTE</td></tr>
<tr><td>Abreve</td><td>0x01c3</td><td>U+0102 LATIN CAPITAL LETTER A WITH BREVE</td></tr>
<tr><td>Lacute</td><td>0x01c5</td><td>U+0139 LATIN CAPITAL LETTER L WITH ACUTE</td></tr>
<tr><td>Cacute</td><td>0x01c6</td><td>U+0106 LATIN CAPITAL LETTER C WITH ACUTE</td></tr>
<tr><td>Ccaron</td><td>0x01c8</td><td>U+010C LATIN CAPITAL LETTER C WITH CARON</td></tr>
<tr><td>Eogonek</td><td>0x01ca</td><td>U+0118 LATIN CAPITAL LETTER E WITH OGONEK</td></tr>
<tr><td>Ecaron</td><td>0x01cc</td><td>U+011A LATIN CAPITAL LETTER E WITH CARON</td></tr>
<tr><td>Dcaron</td><td>0x01cf</td><td>U+010E LATIN CAPITAL LETTER D WITH CARON</td></tr>
<tr><td>Dstroke</td><td>0x01d0</td><td>U+0110 LATIN CAPITAL LETTER D WITH STROKE</td></tr>
<tr><td>Nacute</td><td>0x01d1</td><td>U+0143 LATIN CAPITAL LETTER N WITH ACUTE</td></tr>
<tr><td>Ncaron</td><td>0x01d2</td><td>U+0147 LATIN CAPITAL LETTER N WITH CARON</td></tr>
<tr><td>Odoubleacute</td><td>0x01d5</td><td>U+0150 LATIN CAPITAL LETTER O WITH DOUBLE ACUTE</td></tr>
<tr><td>Rcaron</td><td>0x01d8</td><td>U+0158 LATIN CAPITAL LETTER R WITH CARON</td></tr>
<tr><td>Uring</td><td>0x01d9</td><td>U+016E LATIN CAPITAL LETTER U WITH RING ABOVE</td></tr>
<tr><td>Udoubleacute</td><td>0x01db</td><td>U+0170 LATIN CAPITAL LETTER U WITH DOUBLE ACUTE</td></tr>
<tr><td>Tcedilla</td><td>0x01de</td><td>U+0162 LATIN CAPITAL LETTER T WITH CEDILLA</td></tr>
<tr><td>racute</td><td>0x01e0</td><td>U+0155 LATIN SMALL LETTER R WITH ACUTE</td></tr>
<tr><td>abreve</td><td>0x01e3</td><td>U+0103 LATIN SMALL LETTER A WITH BREVE</td></tr>
<tr><td>lacute</td><td>0x01e5</td><td>U+013A LATIN SMALL LETTER L WITH ACUTE</td></tr>
<tr><td>cacute</td><td>0x01e6</td><td>U+0107 LATIN SMALL LETTER C WITH ACUTE</td></tr>
<tr><td>ccaron</td><td>0x01e8</td><td>U+010D LATIN SMALL LETTER C WITH CARON</td></tr>
<tr><td>eogonek</td><td>0x01ea</td><td>U+0119 LATIN SMALL LETTER E WITH OGONEK</td></tr>
<tr><td>ecaron</td><td>0x01ec</td><td>U+011B LATIN SMALL LETTER E WITH CARON</td></tr>
<tr><td>dcaron</td><td>0x01ef</td><td>U+010F LATIN SMALL LETTER D WITH CARON</td></tr>
<tr><td>dstroke</td><td>0x01f0</td><td>U+0111 LATIN SMALL LETTER D WITH STROKE</td></tr>
<tr><td>nacute</td><td>0x01f1</td><td>U+0144 LATIN SMALL LETTER N WITH ACUTE</td></tr>
<tr><td>ncaron</td><td>0x01f2</td><td>U+0148 LATIN SMALL LETTER N WITH CARON</td></tr>
<tr><td>odoubleacute</td><td>0x01f5</td><td>U+0151 LATIN SMALL LETTER O WITH DOUBLE ACUTE</td></tr>
<tr><td>rcaron</td><td>0x01f8</td><td>U+0159 LATIN SMALL LETTER R WITH CARON</td></tr>
<tr><td>uring</td><td>0x01f9</td><td>U+016F LATIN SMALL LETTER U WITH RING ABOVE</td></tr>
<tr><td>udoubleacute</td><td>0x01fb</td><td>U+0171 LATIN SMALL LETTER U WITH DOUBLE ACUTE</td></tr>
<tr><td>tcedilla</td><td>0x01fe</td><td>U+0163 LATIN SMALL LETTER T WITH CEDILLA</td></tr>
<tr><td>abovedot</td><td>0x01ff</td><td>U+02D9 DOT ABOVE</td></tr>
<tr><td>Hstroke</td><td>0x02a1</td><td>U+0126 LATIN CAPITAL LETTER H WITH STROKE</td></tr>
<tr><td>Hcircumflex</td><td>0x02a6</td><td>U+0124 LATIN CAPITAL LETTER H WITH CIRCUMFLEX</td></tr>
<tr><td>Iabovedot</td><td>0x02a9</td><td>U+0130 LATIN CAPITAL LETTER I WITH DOT ABOVE</td></tr>
<tr><td>Gbreve</td><td>0x02ab</td><td>U+011E LATIN CAPITAL LETTER G WITH BREVE</td></tr>
<tr><td>Jcircumflex</td><td>0x02ac</td><td>U+0134 LATIN CAPITAL LETTER J WITH CIRCUMFLEX</td></tr>
<tr><td>hstroke</td><td>0x02b1</td><td>U+0127 LATIN SMALL LETTER H WITH STROKE</td></tr>
<tr><td>hcircumflex</td><td>0x02b6</td><td>U+0125 LATIN SMALL LETTER H WITH CIRCUMFLEX</td></tr>
<tr><td>idotless</td><td>0x02b9</td><td>U+0131 LATIN SMALL LETTER DOTLESS I</td></tr>
<tr><td>gbreve</td><td>0x02bb</td><td>U+011F LATIN SMALL LETTER G WITH BREVE</td></tr>
<tr><td>jcircumflex</td><td>0x02bc</td><td>U+0135 LATIN SMALL LETTER J WITH CIRCUMFLEX</td></tr>
<tr><td>Cabovedot</td><td>0x02c5</td><td>U+010A LATIN CAPITAL LETTER C WITH DOT ABOVE</td></tr>
<tr><td>Ccircumflex</td><td>0x02c6</td><td>U+0108 LATIN CAPITAL LETTER C WITH CIRCUMFLEX</td></tr>
<tr><td>Gabovedot</td><td>0x02d5</td><td>U+0120 LATIN CAPITAL LETTER G WITH DOT ABOVE</td></tr>
<tr><td>Gcircumflex</td><td>0x02d8</td><td>U+011C LATIN CAPITAL LETTER G WITH CIRCUMFLEX</td></tr>
<tr><td>Ubreve</td><td>0x02dd</td><td>U+016C LATIN CAPITAL LETTER U WITH BREVE</td></tr>
<tr><td>Scircumflex</td><td>0x02de</td><td>U+015C LATIN CAPITAL LETTER S WITH CIRCUMFLEX</td></tr>
<tr><td>cabovedot</td><td>0x02e5</td><td>U+010B LATIN SMALL LETTER C WITH DOT ABOVE</td></tr>
<tr><td>ccircumflex</td><td>0x02e6</td><td>U+0109 LATIN SMALL LETTER C WITH CIRCUMFLEX</td></tr>
<tr><td>gabovedot</td><td>0x02f5</td><td>U+0121 LATIN SMALL LETTER G WITH DOT ABOVE</td></tr>
<tr><td>gcircumflex</td><td>0x02f8</td><td>U+011D LATIN SMALL LETTER G WITH CIRCUMFLEX</td></tr>
<tr><td>ubreve</td><td>0x02fd</td><td>U+016D LATIN SMALL LETTER U WITH BREVE</td></tr>
<tr><td>scircumflex</td><td>0x02fe</td><td>U+015D LATIN SMALL LETTER S WITH CIRCUMFLEX</td></tr>
<tr><td>kra</td><td>0x03a2</td><td>U+0138 LATIN SMALL LETTER KRA</td></tr>
<tr><td>kappa</td><td>0x03a2</td><td>deprecated</td></tr>
<tr><td>Rcedilla</td><td>0x03a3</td><td>U+0156 LATIN CAPITAL LETTER R WITH CEDILLA</td></tr>
<tr><td>Itilde</td><td>0x03a5</td><td>U+0128 LATIN CAPITAL LETTER I WITH TILDE</td></tr>
<tr><td>Lcedilla</td><td>0x03a6</td><td>U+013B LATIN CAPITAL LETTER L WITH CEDILLA</td></tr>
<tr><td>Emacron</td><td>0x03aa</td><td>U+0112 LATIN CAPITAL LETTER E WITH MACRON</td></tr>
<tr><td>Gcedilla</td><td>0x03ab</td><td>U+0122 LATIN CAPITAL LETTER G WITH CEDILLA</td></tr>
<tr><td>Tslash</td><td>0x03ac</td><td>U+0166 LATIN CAPITAL LETTER T WITH STROKE</td></tr>
<tr><td>rcedilla</td><td>0x03b3</td><td>U+0157 LATIN SMALL LETTER R WITH CEDILLA</td></tr>
<tr><td>itilde</td><td>0x03b5</td><td>U+0129 LATIN SMALL LETTER I WITH TILDE</td></tr>
<tr><td>lcedilla</td><td>0x03b6</td><td>U+013C LATIN SMALL LETTER L WITH CEDILLA</td></tr>
<tr><td>emacron</td><td>0x03ba</td><td>U+0113 LATIN SMALL LETTER E WITH MACRON</td></tr>
<tr><td>gcedilla</td><td>0x03bb</td><td>U+0123 LATIN SMALL LETTER G WITH CEDILLA</td></tr>
<tr><td>tslash</td><td>0x03bc</td><td>U+0167 LATIN SMALL LETTER T WITH STROKE</td></tr>
<tr><td>ENG</td><td>0x03bd</td><td>U+014A LATIN CAPITAL LETTER ENG</td></tr>
<tr><td>eng</td><td>0x03bf</td><td>U+014B LATIN SMALL LETTER ENG</td></tr>
<tr><td>Amacron</td><td>0x03c0</td><td>U+0100 LATIN CAPITAL LETTER A WITH MACRON</td></tr>
<tr><td>Iogonek</td><td>0x03c7</td><td>U+012E LATIN CAPITAL LETTER I WITH OGONEK</td></tr>
<tr><td>Eabovedot</td><td>0x03cc</td><td>U+0116 LATIN CAPITAL LETTER E WITH DOT ABOVE</td></tr>
<tr><td>Imacron</td><td>0x03cf</td><td>U+012A LATIN CAPITAL LETTER I WITH MACRON</td></tr>
<tr><td>Ncedilla</td><td>0x03d1</td><td>U+0145 LATIN CAPITAL LETTER N WITH CEDILLA</td></tr>
<tr><td>Omacron</td><td>0x03d2</td><td>U+014C LATIN CAPITAL LETTER O WITH MACRON</td></tr>
<tr><td>Kcedilla</td><td>0x03d3</td><td>U+0136 LATIN CAPITAL LETTER K WITH CEDILLA</td></tr>
<tr><td>Uogonek</td><td>0x03d9</td><td>U+0172 LATIN CAPITAL LETTER U WITH OGONEK</td></tr>
<tr><td>Utilde</td><td>0x03dd</td><td>U+0168 LATIN CAPITAL LETTER U WITH TILDE</td></tr>
<tr><td>Umacron</td><td>0x03de</td><td>U+016A LATIN CAPITAL LETTER U WITH MACRON</td></tr>
<tr><td>amacron</td><td>0x03e0</td><td>U+0101 LATIN SMALL LETTER A WITH MACRON</td></tr>
<tr><td>iogonek</td><td>0x03e7</td><td>U+012F LATIN SMALL LETTER I WITH OGONEK</td></tr>
<tr><td>eabovedot</td><td>0x03ec</td><td>U+0117 LATIN SMALL LETTER E WITH DOT ABOVE</td></tr>
<tr><td>imacron</td><td>0x03ef</td><td>U+012B LATIN SMALL LETTER I WITH MACRON</td></tr>
<tr><td>ncedilla</td><td>0x03f1</td><td>U+0146 LATIN SMALL LETTER N WITH CEDILLA</td></tr>
<tr><td>omacron</td><td>0x03f2</td><td>U+014D LATIN SMALL LETTER O WITH MACRON</td></tr>
<tr><td>kcedilla</td><td>0x03f3</td><td>U+0137 LATIN SMALL LETTER K WITH CEDILLA</td></tr>
<tr><td>uogonek</td><td>0x03f9</td><td>U+0173 LATIN SMALL LETTER U WITH OGONEK</td></tr>
<tr><td>utilde</td><td>0x03fd</td><td>U+0169 LATIN SMALL LETTER U WITH TILDE</td></tr>
<tr><td>umacron</td><td>0x03fe</td><td>U+016B LATIN SMALL LETTER U WITH MACRON</td></tr>
<tr><td>Wcircumflex</td><td>0x1000174</td><td>U+0174 LATIN CAPITAL LETTER W WITH CIRCUMFLEX</td></tr>
<tr><td>wcircumflex</td><td>0x1000175</td><td>U+0175 LATIN SMALL LETTER W WITH CIRCUMFLEX</td></tr>
<tr><td>Ycircumflex</td><td>0x1000176</td><td>U+0176 LATIN CAPITAL LETTER Y WITH CIRCUMFLEX</td></tr>
<tr><td>ycircumflex</td><td>0x1000177</td><td>U+0177 LATIN SMALL LETTER Y WITH CIRCUMFLEX</td></tr>
<tr><td>Babovedot</td><td>0x1001e02</td><td>U+1E02 LATIN CAPITAL LETTER B WITH DOT ABOVE</td></tr>
<tr><td>babovedot</td><td>0x1001e03</td><td>U+1E03 LATIN SMALL LETTER B WITH DOT ABOVE</td></tr>
<tr><td>Dabovedot</td><td>0x1001e0a</td><td>U+1E0A LATIN CAPITAL LETTER D WITH DOT ABOVE</td></tr>
<tr><td>dabovedot</td><td>0x1001e0b</td><td>U+1E0B LATIN SMALL LETTER D WITH DOT ABOVE</td></tr>
<tr><td>Fabovedot</td><td>0x1001e1e</td><td>U+1E1E LATIN CAPITAL LETTER F WITH DOT ABOVE</td></tr>
<tr><td>fabovedot</td><td>0x1001e1f</td><td>U+1E1F LATIN SMALL LETTER F WITH DOT ABOVE</td></tr>
<tr><td>Mabovedot</td><td>0x1001e40</td><td>U+1E40 LATIN CAPITAL LETTER M WITH DOT ABOVE</td></tr>
<tr><td>mabovedot</td><td>0x1001e41</td><td>U+1E41 LATIN SMALL LETTER M WITH DOT ABOVE</td></tr>
<tr><td>Pabovedot</td><td>0x1001e56</td><td>U+1E56 LATIN CAPITAL LETTER P WITH DOT ABOVE</td></tr>
<tr><td>pabovedot</td><td>0x1001e57</td><td>U+1E57 LATIN SMALL LETTER P WITH DOT ABOVE</td></tr>
<tr><td>Sabovedot</td><td>0x1001e60</td><td>U+1E60 LATIN CAPITAL LETTER S WITH DOT ABOVE</td></tr>
<tr><td>sabovedot</td><td>0x1001e61</td><td>U+1E61 LATIN SMALL LETTER S WITH DOT ABOVE</td></tr>
<tr><td>Tabovedot</td><td>0x1001e6a</td><td>U+1E6A LATIN CAPITAL LETTER T WITH DOT ABOVE</td></tr>
<tr><td>tabovedot</td><td>0x1001e6b</td><td>U+1E6B LATIN SMALL LETTER T WITH DOT ABOVE</td></tr>
<tr><td>Wgrave</td><td>0x1001e80</td><td>U+1E80 LATIN CAPITAL LETTER W WITH GRAVE</td></tr>
<tr><td>wgrave</td><td>0x1001e81</td><td>U+1E81 LATIN SMALL LETTER W WITH GRAVE</td></tr>
<tr><td>Wacute</td><td>0x1001e82</td><td>U+1E82 LATIN CAPITAL LETTER W WITH ACUTE</td></tr>
<tr><td>wacute</td><td>0x1001e83</td><td>U+1E83 LATIN SMALL LETTER W WITH ACUTE</td></tr>
<tr><td>Wdiaeresis</td><td>0x1001e84</td><td>U+1E84 LATIN CAPITAL LETTER W WITH DIAERESIS</td></tr>
<tr><td>wdiaeresis</td><td>0x1001e85</td><td>U+1E85 LATIN SMALL LETTER W WITH DIAERESIS</td></tr>
<tr><td>Ygrave</td><td>0x1001ef2</td><td>U+1EF2 LATIN CAPITAL LETTER Y WITH GRAVE</td></tr>
<tr><td>ygrave</td><td>0x1001ef3</td><td>U+1EF3 LATIN SMALL LETTER Y WITH GRAVE</td></tr>
<tr><td>OE</td><td>0x13bc</td><td>U+0152 LATIN CAPITAL LIGATURE OE</td></tr>
<tr><td>oe</td><td>0x13bd</td><td>U+0153 LATIN SMALL LIGATURE OE</td></tr>
<tr><td>Ydiaeresis</td><td>0x13be</td><td>U+0178 LATIN CAPITAL LETTER Y WITH DIAERESIS</td></tr>
<tr><td>overline</td><td>0x047e</td><td>U+203E OVERLINE</td></tr>
<tr><td>kana_fullstop</td><td>0x04a1</td><td>U+3002 IDEOGRAPHIC FULL STOP</td></tr>
<tr><td>kana_openingbracket</td><td>0x04a2</td><td>U+300C LEFT CORNER BRACKET</td></tr>
<tr><td>kana_closingbracket</td><td>0x04a3</td><td>U+300D RIGHT CORNER BRACKET</td></tr>
<tr><td>kana_comma</td><td>0x04a4</td><td>U+3001 IDEOGRAPHIC COMMA</td></tr>
<tr><td>kana_conjunctive</td><td>0x04a5</td><td>U+30FB KATAKANA MIDDLE DOT</td></tr>
<tr><td>kana_middledot</td><td>0x04a5</td><td>deprecated</td></tr>
<tr><td>kana_WO</td><td>0x04a6</td><td>U+30F2 KATAKANA LETTER WO</td></tr>
<tr><td>kana_a</td><td>0x04a7</td><td>U+30A1 KATAKANA LETTER SMALL A</td></tr>
<tr><td>kana_i</td><td>0x04a8</td><td>U+30A3 KATAKANA LETTER SMALL I</td></tr>
<tr><td>kana_u</td><td>0x04a9</td><td>U+30A5 KATAKANA LETTER SMALL U</td></tr>
<tr><td>kana_e</td><td>0x04aa</td><td>U+30A7 KATAKANA LETTER SMALL E</td></tr>
<tr><td>kana_o</td><td>0x04ab</td><td>U+30A9 KATAKANA LETTER SMALL O</td></tr>
<tr><td>kana_ya</td><td>0x04ac</td><td>U+30E3 KATAKANA LETTER SMALL YA</td></tr>
<tr><td>kana_yu</td><td>0x04ad</td><td>U+30E5 KATAKANA LETTER SMALL YU</td></tr>
<tr><td>kana_yo</td><td>0x04ae</td><td>U+30E7 KATAKANA LETTER SMALL YO</td></tr>
<tr><td>kana_tsu</td><td>0x04af</td><td>U+30C3 KATAKANA LETTER SMALL TU</td></tr>
<tr><td>kana_tu</td><td>0x04af</td><td>deprecated</td></tr>
<tr><td>prolongedsound</td><td>0x04b0</td><td>U+30FC KATAKANA-HIRAGANA PROLONGED SOUND MARK</td></tr>
<tr><td>kana_A</td><td>0x04b1</td><td>U+30A2 KATAKANA LETTER A</td></tr>
<tr><td>kana_I</td><td>0x04b2</td><td>U+30A4 KATAKANA LETTER I</td></tr>
<tr><td>kana_U</td><td>0x04b3</td><td>U+30A6 KATAKANA LETTER U</td></tr>
<tr><td>kana_E</td><td>0x04b4</td><td>U+30A8 KATAKANA LETTER E</td></tr>
<tr><td>kana_O</td><td>0x04b5</td><td>U+30AA KATAKANA LETTER O</td></tr>
<tr><td>kana_KA</td><td>0x04b6</td><td>U+30AB KATAKANA LETTER KA</td></tr>
<tr><td>kana_KI</td><td>0x04b7</td><td>U+30AD KATAKANA LETTER KI</td></tr>
<tr><td>kana_KU</td><td>0x04b8</td><td>U+30AF KATAKANA LETTER KU</td></tr>
<tr><td>kana_KE</td><td>0x04b9</td><td>U+30B1 KATAKANA LETTER KE</td></tr>
<tr><td>kana_KO</td><td>0x04ba</td><td>U+30B3 KATAKANA LETTER KO</td></tr>
<tr><td>kana_SA</td><td>0x04bb</td><td>U+30B5 KATAKANA LETTER SA</td></tr>
<tr><td>kana_SHI</td><td>0x04bc</td><td>U+30B7 KATAKANA LETTER SI</td></tr>
<tr><td>kana_SU</td><td>0x04bd</td><td>U+30B9 KATAKANA LETTER SU</td></tr>
<tr><td>kana_SE</td><td>0x04be</td><td>U+30BB KATAKANA LETTER SE</td></tr>
<tr><td>kana_SO</td><td>0x04bf</td><td>U+30BD KATAKANA LETTER SO</td></tr>
<tr><td>kana_TA</td><td>0x04c0</td><td>U+30BF KATAKANA LETTER TA</td></tr>
<tr><td>kana_CHI</td><td>0x04c1</td><td>U+30C1 KATAKANA LETTER TI</td></tr>
<tr><td>kana_TI</td><td>0x04c1</td><td>deprecated</td></tr>
<tr><td>kana_TSU</td><td>0x04c2</td><td>U+30C4 KATAKANA LETTER TU</td></tr>
<tr><td>kana_TU</td><td>0x04c2</td><td>deprecated</td></tr>
<tr><td>kana_TE</td><td>0x04c3</td><td>U+30C6 KATAKANA LETTER TE</td></tr>
<tr><td>kana_TO</td><td>0x04c4</td><td>U+30C8 KATAKANA LETTER TO</td></tr>
<tr><td>kana_NA</td><td>0x04c5</td><td>U+30CA KATAKANA LETTER NA</td></tr>
<tr><td>kana_NI</td><td>0x04c6</td><td>U+30CB KATAKANA LETTER NI</td></tr>
<tr><td>kana_NU</td><td>0x04c7</td><td>U+30CC KATAKANA LETTER NU</td></tr>
<tr><td>kana_NE</td><td>0x04c8</td><td>U+30CD KATAKANA LETTER NE</td></tr>
<tr><td>kana_NO</td><td>0x04c9</td><td>U+30CE KATAKANA LETTER NO</td></tr>
<tr><td>kana_HA</td><td>0x04ca</td><td>U+30CF KATAKANA LETTER HA</td></tr>
<tr><td>kana_HI</td><td>0x04cb</td><td>U+30D2 KATAKANA LETTER HI</td></tr>
<tr><td>kana_FU</td><td>0x04cc</td><td>U+30D5 KATAKANA LETTER HU</td></tr>
<tr><td>kana_HU</td><td>0x04cc</td><td>deprecated</td></tr>
<tr><td>kana_HE</td><td>0x04cd</td><td>U+30D8 KATAKANA LETTER HE</td></tr>
<tr><td>kana_HO</td><td>0x04ce</td><td>U+30DB KATAKANA LETTER HO</td></tr>
<tr><td>kana_MA</td><td>0x04cf</td><td>U+30DE KATAKANA LETTER MA</td></tr>
<tr><td>kana_MI</td><td>0x04d0</td><td>U+30DF KATAKANA LETTER MI</td></tr>
<tr><td>kana_MU</td><td>0x04d1</td><td>U+30E0 KATAKANA LETTER MU</td></tr>
<tr><td>kana_ME</td><td>0x04d2</td><td>U+30E1 KATAKANA LETTER ME</td></tr>
<tr><td>kana_MO</td><td>0x04d3</td><td>U+30E2 KATAKANA LETTER MO</td></tr>
<tr><td>kana_YA</td><td>0x04d4</td><td>U+30E4 KATAKANA LETTER YA</td></tr>
<tr><td>kana_YU</td><td>0x04d5</td><td>U+30E6 KATAKANA LETTER YU</td></tr>
<tr><td>kana_YO</td><td>0x04d6</td><td>U+30E8 KATAKANA LETTER YO</td></tr>
<tr><td>kana_RA</td><td>0x04d7</td><td>U+30E9 KATAKANA LETTER RA</td></tr>
<tr><td>kana_RI</td><td>0x04d8</td><td>U+30EA KATAKANA LETTER RI</td></tr>
<tr><td>kana_RU</td><td>0x04d9</td><td>U+30EB KATAKANA LETTER RU</td></tr>
<tr><td>kana_RE</td><td>0x04da</td><td>U+30EC KATAKANA LETTER RE</td></tr>
<tr><td>kana_RO</td><td>0x04db</td><td>U+30ED KATAKANA LETTER RO</td></tr>
<tr><td>kana_WA</td><td>0x04dc</td><td>U+30EF KATAKANA LETTER WA</td></tr>
<tr><td>kana_N</td><td>0x04dd</td><td>U+30F3 KATAKANA LETTER N</td></tr>
<tr><td>voicedsound</td><td>0x04de</td><td>U+309B KATAKANA-HIRAGANA VOICED SOUND MARK</td></tr>
<tr><td>semivoicedsound</td><td>0x04df</td><td>U+309C KATAKANA-HIRAGANA SEMI-VOICED SOUND MARK</td></tr>
<tr><td>kana_switch</td><td>0xff7e</td><td>Alias for mode_switch</td></tr>
<tr><td>Farsi_0</td><td>0x10006f0</td><td>U+06F0 EXTENDED ARABIC-INDIC DIGIT ZERO</td></tr>
<tr><td>Farsi_1</td><td>0x10006f1</td><td>U+06F1 EXTENDED ARABIC-INDIC DIGIT ONE</td></tr>
<tr><td>Farsi_2</td><td>0x10006f2</td><td>U+06F2 EXTENDED ARABIC-INDIC DIGIT TWO</td></tr>
<tr><td>Farsi_3</td><td>0x10006f3</td><td>U+06F3 EXTENDED ARABIC-INDIC DIGIT THREE</td></tr>
<tr><td>Farsi_4</td><td>0x10006f4</td><td>U+06F4 EXTENDED ARABIC-INDIC DIGIT FOUR</td></tr>
<tr><td>Farsi_5</td><td>0x10006f5</td><td>U+06F5 EXTENDED ARABIC-INDIC DIGIT FIVE</td></tr>
<tr><td>Farsi_6</td><td>0x10006f6</td><td>U+06F6 EXTENDED ARABIC-INDIC DIGIT SIX</td></tr>
<tr><td>Farsi_7</td><td>0x10006f7</td><td>U+06F7 EXTENDED ARABIC-INDIC DIGIT SEVEN</td></tr>
<tr><td>Farsi_8</td><td>0x10006f8</td><td>U+06F8 EXTENDED ARABIC-INDIC DIGIT EIGHT</td></tr>
<tr><td>Farsi_9</td><td>0x10006f9</td><td>U+06F9 EXTENDED ARABIC-INDIC DIGIT NINE</td></tr>
<tr><td>Arabic_percent</td><td>0x100066a</td><td>U+066A ARABIC PERCENT SIGN</td></tr>
<tr><td>Arabic_superscript_alef</td><td>0x1000670</td><td>U+0670 ARABIC LETTER SUPERSCRIPT ALEF</td></tr>
<tr><td>Arabic_tteh</td><td>0x1000679</td><td>U+0679 ARABIC LETTER TTEH</td></tr>
<tr><td>Arabic_peh</td><td>0x100067e</td><td>U+067E ARABIC LETTER PEH</td></tr>
<tr><td>Arabic_tcheh</td><td>0x1000686</td><td>U+0686 ARABIC LETTER TCHEH</td></tr>
<tr><td>Arabic_ddal</td><td>0x1000688</td><td>U+0688 ARABIC LETTER DDAL</td></tr>
<tr><td>Arabic_rreh</td><td>0x1000691</td><td>U+0691 ARABIC LETTER RREH</td></tr>
<tr><td>Arabic_comma</td><td>0x05ac</td><td>U+060C ARABIC COMMA</td></tr>
<tr><td>Arabic_fullstop</td><td>0x10006d4</td><td>U+06D4 ARABIC FULL STOP</td></tr>
<tr><td>Arabic_0</td><td>0x1000660</td><td>U+0660 ARABIC-INDIC DIGIT ZERO</td></tr>
<tr><td>Arabic_1</td><td>0x1000661</td><td>U+0661 ARABIC-INDIC DIGIT ONE</td></tr>
<tr><td>Arabic_2</td><td>0x1000662</td><td>U+0662 ARABIC-INDIC DIGIT TWO</td></tr>
<tr><td>Arabic_3</td><td>0x1000663</td><td>U+0663 ARABIC-INDIC DIGIT THREE</td></tr>
<tr><td>Arabic_4</td><td>0x1000664</td><td>U+0664 ARABIC-INDIC DIGIT FOUR</td></tr>
<tr><td>Arabic_5</td><td>0x1000665</td><td>U+0665 ARABIC-INDIC DIGIT FIVE</td></tr>
<tr><td>Arabic_6</td><td>0x1000666</td><td>U+0666 ARABIC-INDIC DIGIT SIX</td></tr>
<tr><td>Arabic_7</td><td>0x1000667</td><td>U+0667 ARABIC-INDIC DIGIT SEVEN</td></tr>
<tr><td>Arabic_8</td><td>0x1000668</td><td>U+0668 ARABIC-INDIC DIGIT EIGHT</td></tr>
<tr><td>Arabic_9</td><td>0x1000669</td><td>U+0669 ARABIC-INDIC DIGIT NINE</td></tr>
<tr><td>Arabic_semicolon</td><td>0x05bb</td><td>U+061B ARABIC SEMICOLON</td></tr>
<tr><td>Arabic_question_mark</td><td>0x05bf</td><td>U+061F ARABIC QUESTION MARK</td></tr>
<tr><td>Arabic_hamza</td><td>0x05c1</td><td>U+0621 ARABIC LETTER HAMZA</td></tr>
<tr><td>Arabic_maddaonalef</td><td>0x05c2</td><td>U+0622 ARABIC LETTER ALEF WITH MADDA ABOVE</td></tr>
<tr><td>Arabic_hamzaonalef</td><td>0x05c3</td><td>U+0623 ARABIC LETTER ALEF WITH HAMZA ABOVE</td></tr>
<tr><td>Arabic_hamzaonwaw</td><td>0x05c4</td><td>U+0624 ARABIC LETTER WAW WITH HAMZA ABOVE</td></tr>
<tr><td>Arabic_hamzaunderalef</td><td>0x05c5</td><td>U+0625 ARABIC LETTER ALEF WITH HAMZA BELOW</td></tr>
<tr><td>Arabic_hamzaonyeh</td><td>0x05c6</td><td>U+0626 ARABIC LETTER YEH WITH HAMZA ABOVE</td></tr>
<tr><td>Arabic_alef</td><td>0x05c7</td><td>U+0627 ARABIC LETTER ALEF</td></tr>
<tr><td>Arabic_beh</td><td>0x05c8</td><td>U+0628 ARABIC LETTER BEH</td></tr>
<tr><td>Arabic_tehmarbuta</td><td>0x05c9</td><td>U+0629 ARABIC LETTER TEH MARBUTA</td></tr>
<tr><td>Arabic_teh</td><td>0x05ca</td><td>U+062A ARABIC LETTER TEH</td></tr>
<tr><td>Arabic_theh</td><td>0x05cb</td><td>U+062B ARABIC LETTER THEH</td></tr>
<tr><td>Arabic_jeem</td><td>0x05cc</td><td>U+062C ARABIC LETTER JEEM</td></tr>
<tr><td>Arabic_hah</td><td>0x05cd</td><td>U+062D ARABIC LETTER HAH</td></tr>
<tr><td>Arabic_khah</td><td>0x05ce</td><td>U+062E ARABIC LETTER KHAH</td></tr>
<tr><td>Arabic_dal</td><td>0x05cf</td><td>U+062F ARABIC LETTER DAL</td></tr>
<tr><td>Arabic_thal</td><td>0x05d0</td><td>U+0630 ARABIC LETTER THAL</td></tr>
<tr><td>Arabic_ra</td><td>0x05d1</td><td>U+0631 ARABIC LETTER REH</td></tr>
<tr><td>Arabic_zain</td><td>0x05d2</td><td>U+0632 ARABIC LETTER ZAIN</td></tr>
<tr><td>Arabic_seen</td><td>0x05d3</td><td>U+0633 ARABIC LETTER SEEN</td></tr>
<tr><td>Arabic_sheen</td><td>0x05d4</td><td>U+0634 ARABIC LETTER SHEEN</td></tr>
<tr><td>Arabic_sad</td><td>0x05d5</td><td>U+0635 ARABIC LETTER SAD</td></tr>
<tr><td>Arabic_dad</td><td>0x05d6</td><td>U+0636 ARABIC LETTER DAD</td></tr>
<tr><td>Arabic_tah</td><td>0x05d7</td><td>U+0637 ARABIC LETTER TAH</td></tr>
<tr><td>Arabic_zah</td><td>0x05d8</td><td>U+0638 ARABIC LETTER ZAH</td></tr>
<tr><td>Arabic_ain</td><td>0x05d9</td><td>U+0639 ARABIC LETTER AIN</td></tr>
<tr><td>Arabic_ghain</td><td>0x05da</td><td>U+063A ARABIC LETTER GHAIN</td></tr>
<tr><td>Arabic_tatweel</td><td>0x05e0</td><td>U+0640 ARABIC TATWEEL</td></tr>
<tr><td>Arabic_feh</td><td>0x05e1</td><td>U+0641 ARABIC LETTER FEH</td></tr>
<tr><td>Arabic_qaf</td><td>0x05e2</td><td>U+0642 ARABIC LETTER QAF</td></tr>
<tr><td>Arabic_kaf</td><td>0x05e3</td><td>U+0643 ARABIC LETTER KAF</td></tr>
<tr><td>Arabic_lam</td><td>0x05e4</td><td>U+0644 ARABIC LETTER LAM</td></tr>
<tr><td>Arabic_meem</td><td>0x05e5</td><td>U+0645 ARABIC LETTER MEEM</td></tr>
<tr><td>Arabic_noon</td><td>0x05e6</td><td>U+0646 ARABIC LETTER NOON</td></tr>
<tr><td>Arabic_ha</td><td>0x05e7</td><td>U+0647 ARABIC LETTER HEH</td></tr>
<tr><td>Arabic_heh</td><td>0x05e7</td><td>deprecated</td></tr>
<tr><td>Arabic_waw</td><td>0x05e8</td><td>U+0648 ARABIC LETTER WAW</td></tr>
<tr><td>Arabic_alefmaksura</td><td>0x05e9</td><td>U+0649 ARABIC LETTER ALEF MAKSURA</td></tr>
<tr><td>Arabic_yeh</td><td>0x05ea</td><td>U+064A ARABIC LETTER YEH</td></tr>
<tr><td>Arabic_fathatan</td><td>0x05eb</td><td>U+064B ARABIC FATHATAN</td></tr>
<tr><td>Arabic_dammatan</td><td>0x05ec</td><td>U+064C ARABIC DAMMATAN</td></tr>
<tr><td>Arabic_kasratan</td><td>0x05ed</td><td>U+064D ARABIC KASRATAN</td></tr>
<tr><td>Arabic_fatha</td><td>0x05ee</td><td>U+064E ARABIC FATHA</td></tr>
<tr><td>Arabic_damma</td><td>0x05ef</td><td>U+064F ARABIC DAMMA</td></tr>
<tr><td>Arabic_kasra</td><td>0x05f0</td><td>U+0650 ARABIC KASRA</td></tr>
<tr><td>Arabic_shadda</td><td>0x05f1</td><td>U+0651 ARABIC SHADDA</td></tr>
<tr><td>Arabic_sukun</td><td>0x05f2</td><td>U+0652 ARABIC SUKUN</td></tr>
<tr><td>Arabic_madda_above</td><td>0x1000653</td><td>U+0653 ARABIC MADDAH ABOVE</td></tr>
<tr><td>Arabic_hamza_above</td><td>0x1000654</td><td>U+0654 ARABIC HAMZA ABOVE</td></tr>
<tr><td>Arabic_hamza_below</td><td>0x1000655</td><td>U+0655 ARABIC HAMZA BELOW</td></tr>
<tr><td>Arabic_jeh</td><td>0x1000698</td><td>U+0698 ARABIC LETTER JEH</td></tr>
<tr><td>Arabic_veh</td><td>0x10006a4</td><td>U+06A4 ARABIC LETTER VEH</td></tr>
<tr><td>Arabic_keheh</td><td>0x10006a9</td><td>U+06A9 ARABIC LETTER KEHEH</td></tr>
<tr><td>Arabic_gaf</td><td>0x10006af</td><td>U+06AF ARABIC LETTER GAF</td></tr>
<tr><td>Arabic_noon_ghunna</td><td>0x10006ba</td><td>U+06BA ARABIC LETTER NOON GHUNNA</td></tr>
<tr><td>Arabic_heh_doachashmee</td><td>0x10006be</td><td>U+06BE ARABIC LETTER HEH DOACHASHMEE</td></tr>
<tr><td>Farsi_yeh</td><td>0x10006cc</td><td>U+06CC ARABIC LETTER FARSI YEH</td></tr>
<tr><td>Arabic_farsi_yeh</td><td>0x10006cc</td><td>U+06CC ARABIC LETTER FARSI YEH</td></tr>
<tr><td>Arabic_yeh_baree</td><td>0x10006d2</td><td>U+06D2 ARABIC LETTER YEH BARREE</td></tr>
<tr><td>Arabic_heh_goal</td><td>0x10006c1</td><td>U+06C1 ARABIC LETTER HEH GOAL</td></tr>
<tr><td>Arabic_switch</td><td>0xff7e</td><td>Alias for mode_switch</td></tr>
<tr><td>Cyrillic_GHE_bar</td><td>0x1000492</td><td>U+0492 CYRILLIC CAPITAL LETTER GHE WITH STROKE</td></tr>
<tr><td>Cyrillic_ghe_bar</td><td>0x1000493</td><td>U+0493 CYRILLIC SMALL LETTER GHE WITH STROKE</td></tr>
<tr><td>Cyrillic_ZHE_descender</td><td>0x1000496</td><td>U+0496 CYRILLIC CAPITAL LETTER ZHE WITH DESCENDER</td></tr>
<tr><td>Cyrillic_zhe_descender</td><td>0x1000497</td><td>U+0497 CYRILLIC SMALL LETTER ZHE WITH DESCENDER</td></tr>
<tr><td>Cyrillic_KA_descender</td><td>0x100049a</td><td>U+049A CYRILLIC CAPITAL LETTER KA WITH DESCENDER</td></tr>
<tr><td>Cyrillic_ka_descender</td><td>0x100049b</td><td>U+049B CYRILLIC SMALL LETTER KA WITH DESCENDER</td></tr>
<tr><td>Cyrillic_KA_vertstroke</td><td>0x100049c</td><td>U+049C CYRILLIC CAPITAL LETTER KA WITH VERTICAL STROKE</td></tr>
<tr><td>Cyrillic_ka_vertstroke</td><td>0x100049d</td><td>U+049D CYRILLIC SMALL LETTER KA WITH VERTICAL STROKE</td></tr>
<tr><td>Cyrillic_EN_descender</td><td>0x10004a2</td><td>U+04A2 CYRILLIC CAPITAL LETTER EN WITH DESCENDER</td></tr>
<tr><td>Cyrillic_en_descender</td><td>0x10004a3</td><td>U+04A3 CYRILLIC SMALL LETTER EN WITH DESCENDER</td></tr>
<tr><td>Cyrillic_U_straight</td><td>0x10004ae</td><td>U+04AE CYRILLIC CAPITAL LETTER STRAIGHT U</td></tr>
<tr><td>Cyrillic_u_straight</td><td>0x10004af</td><td>U+04AF CYRILLIC SMALL LETTER STRAIGHT U</td></tr>
<tr><td>Cyrillic_U_straight_bar</td><td>0x10004b0</td><td>U+04B0 CYRILLIC CAPITAL LETTER STRAIGHT U WITH STROKE</td></tr>
<tr><td>Cyrillic_u_straight_bar</td><td>0x10004b1</td><td>U+04B1 CYRILLIC SMALL LETTER STRAIGHT U WITH STROKE</td></tr>
<tr><td>Cyrillic_HA_descender</td><td>0x10004b2</td><td>U+04B2 CYRILLIC CAPITAL LETTER HA WITH DESCENDER</td></tr>
<tr><td>Cyrillic_ha_descender</td><td>0x10004b3</td><td>U+04B3 CYRILLIC SMALL LETTER HA WITH DESCENDER</td></tr>
<tr><td>Cyrillic_CHE_descender</td><td>0x10004b6</td><td>U+04B6 CYRILLIC CAPITAL LETTER CHE WITH DESCENDER</td></tr>
<tr><td>Cyrillic_che_descender</td><td>0x10004b7</td><td>U+04B7 CYRILLIC SMALL LETTER CHE WITH DESCENDER</td></tr>
<tr><td>Cyrillic_CHE_vertstroke</td><td>0x10004b8</td><td>U+04B8 CYRILLIC CAPITAL LETTER CHE WITH VERTICAL STROKE</td></tr>
<tr><td>Cyrillic_che_vertstroke</td><td>0x10004b9</td><td>U+04B9 CYRILLIC SMALL LETTER CHE WITH VERTICAL STROKE</td></tr>
<tr><td>Cyrillic_SHHA</td><td>0x10004ba</td><td>U+04BA CYRILLIC CAPITAL LETTER SHHA</td></tr>
<tr><td>Cyrillic_shha</td><td>0x10004bb</td><td>U+04BB CYRILLIC SMALL LETTER SHHA</td></tr>
<tr><td>Cyrillic_SCHWA</td><td>0x10004d8</td><td>U+04D8 CYRILLIC CAPITAL LETTER SCHWA</td></tr>
<tr><td>Cyrillic_schwa</td><td>0x10004d9</td><td>U+04D9 CYRILLIC SMALL LETTER SCHWA</td></tr>
<tr><td>Cyrillic_I_macron</td><td>0x10004e2</td><td>U+04E2 CYRILLIC CAPITAL LETTER I WITH MACRON</td></tr>
<tr><td>Cyrillic_i_macron</td><td>0x10004e3</td><td>U+04E3 CYRILLIC SMALL LETTER I WITH MACRON</td></tr>
<tr><td>Cyrillic_O_bar</td><td>0x10004e8</td><td>U+04E8 CYRILLIC CAPITAL LETTER BARRED O</td></tr>
<tr><td>Cyrillic_o_bar</td><td>0x10004e9</td><td>U+04E9 CYRILLIC SMALL LETTER BARRED O</td></tr>
<tr><td>Cyrillic_U_macron</td><td>0x10004ee</td><td>U+04EE CYRILLIC CAPITAL LETTER U WITH MACRON</td></tr>
<tr><td>Cyrillic_u_macron</td><td>0x10004ef</td><td>U+04EF CYRILLIC SMALL LETTER U WITH MACRON</td></tr>
<tr><td>Serbian_dje</td><td>0x06a1</td><td>U+0452 CYRILLIC SMALL LETTER DJE</td></tr>
<tr><td>Macedonia_gje</td><td>0x06a2</td><td>U+0453 CYRILLIC SMALL LETTER GJE</td></tr>
<tr><td>Cyrillic_io</td><td>0x06a3</td><td>U+0451 CYRILLIC SMALL LETTER IO</td></tr>
<tr><td>Ukrainian_ie</td><td>0x06a4</td><td>U+0454 CYRILLIC SMALL LETTER UKRAINIAN IE</td></tr>
<tr><td>Ukranian_je</td><td>0x06a4</td><td>deprecated</td></tr>
<tr><td>Macedonia_dse</td><td>0x06a5</td><td>U+0455 CYRILLIC SMALL LETTER DZE</td></tr>
<tr><td>Ukrainian_i</td><td>0x06a6</td><td>U+0456 CYRILLIC SMALL LETTER BYELORUSSIAN-UKRAINIAN I</td></tr>
<tr><td>Ukranian_i</td><td>0x06a6</td><td>deprecated</td></tr>
<tr><td>Ukrainian_yi</td><td>0x06a7</td><td>U+0457 CYRILLIC SMALL LETTER YI</td></tr>
<tr><td>Ukranian_yi</td><td>0x06a7</td><td>deprecated</td></tr>
<tr><td>Cyrillic_je</td><td>0x06a8</td><td>U+0458 CYRILLIC SMALL LETTER JE</td></tr>
<tr><td>Serbian_je</td><td>0x06a8</td><td>deprecated</td></tr>
<tr><td>Cyrillic_lje</td><td>0x06a9</td><td>U+0459 CYRILLIC SMALL LETTER LJE</td></tr>
<tr><td>Serbian_lje</td><td>0x06a9</td><td>deprecated</td></tr>
<tr><td>Cyrillic_nje</td><td>0x06aa</td><td>U+045A CYRILLIC SMALL LETTER NJE</td></tr>
<tr><td>Serbian_nje</td><td>0x06aa</td><td>deprecated</td></tr>
<tr><td>Serbian_tshe</td><td>0x06ab</td><td>U+045B CYRILLIC SMALL LETTER TSHE</td></tr>
<tr><td>Macedonia_kje</td><td>0x06ac</td><td>U+045C CYRILLIC SMALL LETTER KJE</td></tr>
<tr><td>Ukrainian_ghe_with_upturn</td><td>0x06ad</td><td>U+0491 CYRILLIC SMALL LETTER GHE WITH UPTURN</td></tr>
<tr><td>Byelorussian_shortu</td><td>0x06ae</td><td>U+045E CYRILLIC SMALL LETTER SHORT U</td></tr>
<tr><td>Cyrillic_dzhe</td><td>0x06af</td><td>U+045F CYRILLIC SMALL LETTER DZHE</td></tr>
<tr><td>Serbian_dze</td><td>0x06af</td><td>deprecated</td></tr>
<tr><td>numerosign</td><td>0x06b0</td><td>U+2116 NUMERO SIGN</td></tr>
<tr><td>Serbian_DJE</td><td>0x06b1</td><td>U+0402 CYRILLIC CAPITAL LETTER DJE</td></tr>
<tr><td>Macedonia_GJE</td><td>0x06b2</td><td>U+0403 CYRILLIC CAPITAL LETTER GJE</td></tr>
<tr><td>Cyrillic_IO</td><td>0x06b3</td><td>U+0401 CYRILLIC CAPITAL LETTER IO</td></tr>
<tr><td>Ukrainian_IE</td><td>0x06b4</td><td>U+0404 CYRILLIC CAPITAL LETTER UKRAINIAN IE</td></tr>
<tr><td>Ukranian_JE</td><td>0x06b4</td><td>deprecated</td></tr>
<tr><td>Macedonia_DSE</td><td>0x06b5</td><td>U+0405 CYRILLIC CAPITAL LETTER DZE</td></tr>
<tr><td>Ukrainian_I</td><td>0x06b6</td><td>U+0406 CYRILLIC CAPITAL LETTER BYELORUSSIAN-UKRAINIAN I</td></tr>
<tr><td>Ukranian_I</td><td>0x06b6</td><td>deprecated</td></tr>
<tr><td>Ukrainian_YI</td><td>0x06b7</td><td>U+0407 CYRILLIC CAPITAL LETTER YI</td></tr>
<tr><td>Ukranian_YI</td><td>0x06b7</td><td>deprecated</td></tr>
<tr><td>Cyrillic_JE</td><td>0x06b8</td><td>U+0408 CYRILLIC CAPITAL LETTER JE</td></tr>
<tr><td>Serbian_JE</td><td>0x06b8</td><td>deprecated</td></tr>
<tr><td>Cyrillic_LJE</td><td>0x06b9</td><td>U+0409 CYRILLIC CAPITAL LETTER LJE</td></tr>
<tr><td>Serbian_LJE</td><td>0x06b9</td><td>deprecated</td></tr>
<tr><td>Cyrillic_NJE</td><td>0x06ba</td><td>U+040A CYRILLIC CAPITAL LETTER NJE</td></tr>
<tr><td>Serbian_NJE</td><td>0x06ba</td><td>deprecated</td></tr>
<tr><td>Serbian_TSHE</td><td>0x06bb</td><td>U+040B CYRILLIC CAPITAL LETTER TSHE</td></tr>
<tr><td>Macedonia_KJE</td><td>0x06bc</td><td>U+040C CYRILLIC CAPITAL LETTER KJE</td></tr>
<tr><td>Ukrainian_GHE_WITH_UPTURN</td><td>0x06bd</td><td>U+0490 CYRILLIC CAPITAL LETTER GHE WITH UPTURN</td></tr>
<tr><td>Byelorussian_SHORTU</td><td>0x06be</td><td>U+040E CYRILLIC CAPITAL LETTER SHORT U</td></tr>
<tr><td>Cyrillic_DZHE</td><td>0x06bf</td><td>U+040F CYRILLIC CAPITAL LETTER DZHE</td></tr>
<tr><td>Serbian_DZE</td><td>0x06bf</td><td>deprecated</td></tr>
<tr><td>Cyrillic_yu</td><td>0x06c0</td><td>U+044E CYRILLIC SMALL LETTER YU</td></tr>
<tr><td>Cyrillic_a</td><td>0x06c1</td><td>U+0430 CYRILLIC SMALL LETTER A</td></tr>
<tr><td>Cyrillic_be</td><td>0x06c2</td><td>U+0431 CYRILLIC SMALL LETTER BE</td></tr>
<tr><td>Cyrillic_tse</td><td>0x06c3</td><td>U+0446 CYRILLIC SMALL LETTER TSE</td></tr>
<tr><td>Cyrillic_de</td><td>0x06c4</td><td>U+0434 CYRILLIC SMALL LETTER DE</td></tr>
<tr><td>Cyrillic_ie</td><td>0x06c5</td><td>U+0435 CYRILLIC SMALL LETTER IE</td></tr>
<tr><td>Cyrillic_ef</td><td>0x06c6</td><td>U+0444 CYRILLIC SMALL LETTER EF</td></tr>
<tr><td>Cyrillic_ghe</td><td>0x06c7</td><td>U+0433 CYRILLIC SMALL LETTER GHE</td></tr>
<tr><td>Cyrillic_ha</td><td>0x06c8</td><td>U+0445 CYRILLIC SMALL LETTER HA</td></tr>
<tr><td>Cyrillic_i</td><td>0x06c9</td><td>U+0438 CYRILLIC SMALL LETTER I</td></tr>
<tr><td>Cyrillic_shorti</td><td>0x06ca</td><td>U+0439 CYRILLIC SMALL LETTER SHORT I</td></tr>
<tr><td>Cyrillic_ka</td><td>0x06cb</td><td>U+043A CYRILLIC SMALL LETTER KA</td></tr>
<tr><td>Cyrillic_el</td><td>0x06cc</td><td>U+043B CYRILLIC SMALL LETTER EL</td></tr>
<tr><td>Cyrillic_em</td><td>0x06cd</td><td>U+043C CYRILLIC SMALL LETTER EM</td></tr>
<tr><td>Cyrillic_en</td><td>0x06ce</td><td>U+043D CYRILLIC SMALL LETTER EN</td></tr>
<tr><td>Cyrillic_o</td><td>0x06cf</td><td>U+043E CYRILLIC SMALL LETTER O</td></tr>
<tr><td>Cyrillic_pe</td><td>0x06d0</td><td>U+043F CYRILLIC SMALL LETTER PE</td></tr>
<tr><td>Cyrillic_ya</td><td>0x06d1</td><td>U+044F CYRILLIC SMALL LETTER YA</td></tr>
<tr><td>Cyrillic_er</td><td>0x06d2</td><td>U+0440 CYRILLIC SMALL LETTER ER</td></tr>
<tr><td>Cyrillic_es</td><td>0x06d3</td><td>U+0441 CYRILLIC SMALL LETTER ES</td></tr>
<tr><td>Cyrillic_te</td><td>0x06d4</td><td>U+0442 CYRILLIC SMALL LETTER TE</td></tr>
<tr><td>Cyrillic_u</td><td>0x06d5</td><td>U+0443 CYRILLIC SMALL LETTER U</td></tr>
<tr><td>Cyrillic_zhe</td><td>0x06d6</td><td>U+0436 CYRILLIC SMALL LETTER ZHE</td></tr>
<tr><td>Cyrillic_ve</td><td>0x06d7</td><td>U+0432 CYRILLIC SMALL LETTER VE</td></tr>
<tr><td>Cyrillic_softsign</td><td>0x06d8</td><td>U+044C CYRILLIC SMALL LETTER SOFT SIGN</td></tr>
<tr><td>Cyrillic_yeru</td><td>0x06d9</td><td>U+044B CYRILLIC SMALL LETTER YERU</td></tr>
<tr><td>Cyrillic_ze</td><td>0x06da</td><td>U+0437 CYRILLIC SMALL LETTER ZE</td></tr>
<tr><td>Cyrillic_sha</td><td>0x06db</td><td>U+0448 CYRILLIC SMALL LETTER SHA</td></tr>
<tr><td>Cyrillic_e</td><td>0x06dc</td><td>U+044D CYRILLIC SMALL LETTER E</td></tr>
<tr><td>Cyrillic_shcha</td><td>0x06dd</td><td>U+0449 CYRILLIC SMALL LETTER SHCHA</td></tr>
<tr><td>Cyrillic_che</td><td>0x06de</td><td>U+0447 CYRILLIC SMALL LETTER CHE</td></tr>
<tr><td>Cyrillic_hardsign</td><td>0x06df</td><td>U+044A CYRILLIC SMALL LETTER HARD SIGN</td></tr>
<tr><td>Cyrillic_YU</td><td>0x06e0</td><td>U+042E CYRILLIC CAPITAL LETTER YU</td></tr>
<tr><td>Cyrillic_A</td><td>0x06e1</td><td>U+0410 CYRILLIC CAPITAL LETTER A</td></tr>
<tr><td>Cyrillic_BE</td><td>0x06e2</td><td>U+0411 CYRILLIC CAPITAL LETTER BE</td></tr>
<tr><td>Cyrillic_TSE</td><td>0x06e3</td><td>U+0426 CYRILLIC CAPITAL LETTER TSE</td></tr>
<tr><td>Cyrillic_DE</td><td>0x06e4</td><td>U+0414 CYRILLIC CAPITAL LETTER DE</td></tr>
<tr><td>Cyrillic_IE</td><td>0x06e5</td><td>U+0415 CYRILLIC CAPITAL LETTER IE</td></tr>
<tr><td>Cyrillic_EF</td><td>0x06e6</td><td>U+0424 CYRILLIC CAPITAL LETTER EF</td></tr>
<tr><td>Cyrillic_GHE</td><td>0x06e7</td><td>U+0413 CYRILLIC CAPITAL LETTER GHE</td></tr>
<tr><td>Cyrillic_HA</td><td>0x06e8</td><td>U+0425 CYRILLIC CAPITAL LETTER HA</td></tr>
<tr><td>Cyrillic_I</td><td>0x06e9</td><td>U+0418 CYRILLIC CAPITAL LETTER I</td></tr>
<tr><td>Cyrillic_SHORTI</td><td>0x06ea</td><td>U+0419 CYRILLIC CAPITAL LETTER SHORT I</td></tr>
<tr><td>Cyrillic_KA</td><td>0x06eb</td><td>U+041A CYRILLIC CAPITAL LETTER KA</td></tr>
<tr><td>Cyrillic_EL</td><td>0x06ec</td><td>U+041B CYRILLIC CAPITAL LETTER EL</td></tr>
<tr><td>Cyrillic_EM</td><td>0x06ed</td><td>U+041C CYRILLIC CAPITAL LETTER EM</td></tr>
<tr><td>Cyrillic_EN</td><td>0x06ee</td><td>U+041D CYRILLIC CAPITAL LETTER EN</td></tr>
<tr><td>Cyrillic_O</td><td>0x06ef</td><td>U+041E CYRILLIC CAPITAL LETTER O</td></tr>
<tr><td>Cyrillic_PE</td><td>0x06f0</td><td>U+041F CYRILLIC CAPITAL LETTER PE</td></tr>
<tr><td>Cyrillic_YA</td><td>0x06f1</td><td>U+042F CYRILLIC CAPITAL LETTER YA</td></tr>
<tr><td>Cyrillic_ER</td><td>0x06f2</td><td>U+0420 CYRILLIC CAPITAL LETTER ER</td></tr>
<tr><td>Cyrillic_ES</td><td>0x06f3</td><td>U+0421 CYRILLIC CAPITAL LETTER ES</td></tr>
<tr><td>Cyrillic_TE</td><td>0x06f4</td><td>U+0422 CYRILLIC CAPITAL LETTER TE</td></tr>
<tr><td>Cyrillic_U</td><td>0x06f5</td><td>U+0423 CYRILLIC CAPITAL LETTER U</td></tr>
<tr><td>Cyrillic_ZHE</td><td>0x06f6</td><td>U+0416 CYRILLIC CAPITAL LETTER ZHE</td></tr>
<tr><td>Cyrillic_VE</td><td>0x06f7</td><td>U+0412 CYRILLIC CAPITAL LETTER VE</td></tr>
<tr><td>Cyrillic_SOFTSIGN</td><td>0x06f8</td><td>U+042C CYRILLIC CAPITAL LETTER SOFT SIGN</td></tr>
<tr><td>Cyrillic_YERU</td><td>0x06f9</td><td>U+042B CYRILLIC CAPITAL LETTER YERU</td></tr>
<tr><td>Cyrillic_ZE</td><td>0x06fa</td><td>U+0417 CYRILLIC CAPITAL LETTER ZE</td></tr>
<tr><td>Cyrillic_SHA</td><td>0x06fb</td><td>U+0428 CYRILLIC CAPITAL LETTER SHA</td></tr>
<tr><td>Cyrillic_E</td><td>0x06fc</td><td>U+042D CYRILLIC CAPITAL LETTER E</td></tr>
<tr><td>Cyrillic_SHCHA</td><td>0x06fd</td><td>U+0429 CYRILLIC CAPITAL LETTER SHCHA</td></tr>
<tr><td>Cyrillic_CHE</td><td>0x06fe</td><td>U+0427 CYRILLIC CAPITAL LETTER CHE</td></tr>
<tr><td>Cyrillic_HARDSIGN</td><td>0x06ff</td><td>U+042A CYRILLIC CAPITAL LETTER HARD SIGN</td></tr>
<tr><td>Greek_ALPHAaccent</td><td>0x07a1</td><td>U+0386 GREEK CAPITAL LETTER ALPHA WITH TONOS</td></tr>
<tr><td>Greek_EPSILONaccent</td><td>0x07a2</td><td>U+0388 GREEK CAPITAL LETTER EPSILON WITH TONOS</td></tr>
<tr><td>Greek_ETAaccent</td><td>0x07a3</td><td>U+0389 GREEK CAPITAL LETTER ETA WITH TONOS</td></tr>
<tr><td>Greek_IOTAaccent</td><td>0x07a4</td><td>U+038A GREEK CAPITAL LETTER IOTA WITH TONOS</td></tr>
<tr><td>Greek_IOTAdieresis</td><td>0x07a5</td><td>U+03AA GREEK CAPITAL LETTER IOTA WITH DIALYTIKA</td></tr>
<tr><td>Greek_IOTAdiaeresis</td><td>0x07a5</td><td>old typo</td></tr>
<tr><td>Greek_OMICRONaccent</td><td>0x07a7</td><td>U+038C GREEK CAPITAL LETTER OMICRON WITH TONOS</td></tr>
<tr><td>Greek_UPSILONaccent</td><td>0x07a8</td><td>U+038E GREEK CAPITAL LETTER UPSILON WITH TONOS</td></tr>
<tr><td>Greek_UPSILONdieresis</td><td>0x07a9</td><td>U+03AB GREEK CAPITAL LETTER UPSILON WITH DIALYTIKA</td></tr>
<tr><td>Greek_OMEGAaccent</td><td>0x07ab</td><td>U+038F GREEK CAPITAL LETTER OMEGA WITH TONOS</td></tr>
<tr><td>Greek_accentdieresis</td><td>0x07ae</td><td>U+0385 GREEK DIALYTIKA TONOS</td></tr>
<tr><td>Greek_horizbar</td><td>0x07af</td><td>U+2015 HORIZONTAL BAR</td></tr>
<tr><td>Greek_alphaaccent</td><td>0x07b1</td><td>U+03AC GREEK SMALL LETTER ALPHA WITH TONOS</td></tr>
<tr><td>Greek_epsilonaccent</td><td>0x07b2</td><td>U+03AD GREEK SMALL LETTER EPSILON WITH TONOS</td></tr>
<tr><td>Greek_etaaccent</td><td>0x07b3</td><td>U+03AE GREEK SMALL LETTER ETA WITH TONOS</td></tr>
<tr><td>Greek_iotaaccent</td><td>0x07b4</td><td>U+03AF GREEK SMALL LETTER IOTA WITH TONOS</td></tr>
<tr><td>Greek_iotadieresis</td><td>0x07b5</td><td>U+03CA GREEK SMALL LETTER IOTA WITH DIALYTIKA</td></tr>
<tr><td>Greek_iotaaccentdieresis</td><td>0x07b6</td><td>U+0390 GREEK SMALL LETTER IOTA WITH DIALYTIKA AND TONOS</td></tr>
<tr><td>Greek_omicronaccent</td><td>0x07b7</td><td>U+03CC GREEK SMALL LETTER OMICRON WITH TONOS</td></tr>
<tr><td>Greek_upsilonaccent</td><td>0x07b8</td><td>U+03CD GREEK SMALL LETTER UPSILON WITH TONOS</td></tr>
<tr><td>Greek_upsilondieresis</td><td>0x07b9</td><td>U+03CB GREEK SMALL LETTER UPSILON WITH DIALYTIKA</td></tr>
<tr><td>Greek_upsilonaccentdieresis</td><td>0x07ba</td><td>U+03B0 GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND TONOS</td></tr>
<tr><td>Greek_omegaaccent</td><td>0x07bb</td><td>U+03CE GREEK SMALL LETTER OMEGA WITH TONOS</td></tr>
<tr><td>Greek_ALPHA</td><td>0x07c1</td><td>U+0391 GREEK CAPITAL LETTER ALPHA</td></tr>
<tr><td>Greek_BETA</td><td>0x07c2</td><td>U+0392 GREEK CAPITAL LETTER BETA</td></tr>
<tr><td>Greek_GAMMA</td><td>0x07c3</td><td>U+0393 GREEK CAPITAL LETTER GAMMA</td></tr>
<tr><td>Greek_DELTA</td><td>0x07c4</td><td>U+0394 GREEK CAPITAL LETTER DELTA</td></tr>
<tr><td>Greek_EPSILON</td><td>0x07c5</td><td>U+0395 GREEK CAPITAL LETTER EPSILON</td></tr>
<tr><td>Greek_ZETA</td><td>0x07c6</td><td>U+0396 GREEK CAPITAL LETTER ZETA</td></tr>
<tr><td>Greek_ETA</td><td>0x07c7</td><td>U+0397 GREEK CAPITAL LETTER ETA</td></tr>
<tr><td>Greek_THETA</td><td>0x07c8</td><td>U+0398 GREEK CAPITAL LETTER THETA</td></tr>
<tr><td>Greek_IOTA</td><td>0x07c9</td><td>U+0399 GREEK CAPITAL LETTER IOTA</td></tr>
<tr><td>Greek_KAPPA</td><td>0x07ca</td><td>U+039A GREEK CAPITAL LETTER KAPPA</td></tr>
<tr><td>Greek_LAMDA</td><td>0x07cb</td><td>U+039B GREEK CAPITAL LETTER LAMDA</td></tr>
<tr><td>Greek_LAMBDA</td><td>0x07cb</td><td>U+039B GREEK CAPITAL LETTER LAMDA</td></tr>
<tr><td>Greek_MU</td><td>0x07cc</td><td>U+039C GREEK CAPITAL LETTER MU</td></tr>
<tr><td>Greek_NU</td><td>0x07cd</td><td>U+039D GREEK CAPITAL LETTER NU</td></tr>
<tr><td>Greek_XI</td><td>0x07ce</td><td>U+039E GREEK CAPITAL LETTER XI</td></tr>
<tr><td>Greek_OMICRON</td><td>0x07cf</td><td>U+039F GREEK CAPITAL LETTER OMICRON</td></tr>
<tr><td>Greek_PI</td><td>0x07d0</td><td>U+03A0 GREEK CAPITAL LETTER PI</td></tr>
<tr><td>Greek_RHO</td><td>0x07d1</td><td>U+03A1 GREEK CAPITAL LETTER RHO</td></tr>
<tr><td>Greek_SIGMA</td><td>0x07d2</td><td>U+03A3 GREEK CAPITAL LETTER SIGMA</td></tr>
<tr><td>Greek_TAU</td><td>0x07d4</td><td>U+03A4 GREEK CAPITAL LETTER TAU</td></tr>
<tr><td>Greek_UPSILON</td><td>0x07d5</td><td>U+03A5 GREEK CAPITAL LETTER UPSILON</td></tr>
<tr><td>Greek_PHI</td><td>0x07d6</td><td>U+03A6 GREEK CAPITAL LETTER PHI</td></tr>
<tr><td>Greek_CHI</td><td>0x07d7</td><td>U+03A7 GREEK CAPITAL LETTER CHI</td></tr>
<tr><td>Greek_PSI</td><td>0x07d8</td><td>U+03A8 GREEK CAPITAL LETTER PSI</td></tr>
<tr><td>Greek_OMEGA</td><td>0x07d9</td><td>U+03A9 GREEK CAPITAL LETTER OMEGA</td></tr>
<tr><td>Greek_alpha</td><td>0x07e1</td><td>U+03B1 GREEK SMALL LETTER ALPHA</td></tr>
<tr><td>Greek_beta</td><td>0x07e2</td><td>U+03B2 GREEK SMALL LETTER BETA</td></tr>
<tr><td>Greek_gamma</td><td>0x07e3</td><td>U+03B3 GREEK SMALL LETTER GAMMA</td></tr>
<tr><td>Greek_delta</td><td>0x07e4</td><td>U+03B4 GREEK SMALL LETTER DELTA</td></tr>
<tr><td>Greek_epsilon</td><td>0x07e5</td><td>U+03B5 GREEK SMALL LETTER EPSILON</td></tr>
<tr><td>Greek_zeta</td><td>0x07e6</td><td>U+03B6 GREEK SMALL LETTER ZETA</td></tr>
<tr><td>Greek_eta</td><td>0x07e7</td><td>U+03B7 GREEK SMALL LETTER ETA</td></tr>
<tr><td>Greek_theta</td><td>0x07e8</td><td>U+03B8 GREEK SMALL LETTER THETA</td></tr>
<tr><td>Greek_iota</td><td>0x07e9</td><td>U+03B9 GREEK SMALL LETTER IOTA</td></tr>
<tr><td>Greek_kappa</td><td>0x07ea</td><td>U+03BA GREEK SMALL LETTER KAPPA</td></tr>
<tr><td>Greek_lamda</td><td>0x07eb</td><td>U+03BB GREEK SMALL LETTER LAMDA</td></tr>
<tr><td>Greek_lambda</td><td>0x07eb</td><td>U+03BB GREEK SMALL LETTER LAMDA</td></tr>
<tr><td>Greek_mu</td><td>0x07ec</td><td>U+03BC GREEK SMALL LETTER MU</td></tr>
<tr><td>Greek_nu</td><td>0x07ed</td><td>U+03BD GREEK SMALL LETTER NU</td></tr>
<tr><td>Greek_xi</td><td>0x07ee</td><td>U+03BE GREEK SMALL LETTER XI</td></tr>
<tr><td>Greek_omicron</td><td>0x07ef</td><td>U+03BF GREEK SMALL LETTER OMICRON</td></tr>
<tr><td>Greek_pi</td><td>0x07f0</td><td>U+03C0 GREEK SMALL LETTER PI</td></tr>
<tr><td>Greek_rho</td><td>0x07f1</td><td>U+03C1 GREEK SMALL LETTER RHO</td></tr>
<tr><td>Greek_sigma</td><td>0x07f2</td><td>U+03C3 GREEK SMALL LETTER SIGMA</td></tr>
<tr><td>Greek_finalsmallsigma</td><td>0x07f3</td><td>U+03C2 GREEK SMALL LETTER FINAL SIGMA</td></tr>
<tr><td>Greek_tau</td><td>0x07f4</td><td>U+03C4 GREEK SMALL LETTER TAU</td></tr>
<tr><td>Greek_upsilon</td><td>0x07f5</td><td>U+03C5 GREEK SMALL LETTER UPSILON</td></tr>
<tr><td>Greek_phi</td><td>0x07f6</td><td>U+03C6 GREEK SMALL LETTER PHI</td></tr>
<tr><td>Greek_chi</td><td>0x07f7</td><td>U+03C7 GREEK SMALL LETTER CHI</td></tr>
<tr><td>Greek_psi</td><td>0x07f8</td><td>U+03C8 GREEK SMALL LETTER PSI</td></tr>
<tr><td>Greek_omega</td><td>0x07f9</td><td>U+03C9 GREEK SMALL LETTER OMEGA</td></tr>
<tr><td>Greek_switch</td><td>0xff7e</td><td>Alias for mode_switch</td></tr>
<tr><td>leftradical</td><td>0x08a1</td><td>U+23B7 RADICAL SYMBOL BOTTOM</td></tr>
<tr><td>topleftradical</td><td>0x08a2</td><td>-</td></tr>
<tr><td>horizconnector</td><td>0x08a3</td><td>-</td></tr>
<tr><td>topintegral</td><td>0x08a4</td><td>U+2320 TOP HALF INTEGRAL</td></tr>
<tr><td>botintegral</td><td>0x08a5</td><td>U+2321 BOTTOM HALF INTEGRAL</td></tr>
<tr><td>vertconnector</td><td>0x08a6</td><td>-</td></tr>
<tr><td>topleftsqbracket</td><td>0x08a7</td><td>U+23A1 LEFT SQUARE BRACKET UPPER CORNER</td></tr>
<tr><td>botleftsqbracket</td><td>0x08a8</td><td>U+23A3 LEFT SQUARE BRACKET LOWER CORNER</td></tr>
<tr><td>toprightsqbracket</td><td>0x08a9</td><td>U+23A4 RIGHT SQUARE BRACKET UPPER CORNER</td></tr>
<tr><td>botrightsqbracket</td><td>0x08aa</td><td>U+23A6 RIGHT SQUARE BRACKET LOWER CORNER</td></tr>
<tr><td>topleftparens</td><td>0x08ab</td><td>U+239B LEFT PARENTHESIS UPPER HOOK</td></tr>
<tr><td>botleftparens</td><td>0x08ac</td><td>U+239D LEFT PARENTHESIS LOWER HOOK</td></tr>
<tr><td>toprightparens</td><td>0x08ad</td><td>U+239E RIGHT PARENTHESIS UPPER HOOK</td></tr>
<tr><td>botrightparens</td><td>0x08ae</td><td>U+23A0 RIGHT PARENTHESIS LOWER HOOK</td></tr>
<tr><td>leftmiddlecurlybrace</td><td>0x08af</td><td>U+23A8 LEFT CURLY BRACKET MIDDLE PIECE</td></tr>
<tr><td>rightmiddlecurlybrace</td><td>0x08b0</td><td>U+23AC RIGHT CURLY BRACKET MIDDLE PIECE</td></tr>
<tr><td>topleftsummation</td><td>0x08b1</td><td>-</td></tr>
<tr><td>botleftsummation</td><td>0x08b2</td><td>-</td></tr>
<tr><td>topvertsummationconnector</td><td>0x08b3</td><td>-</td></tr>
<tr><td>botvertsummationconnector</td><td>0x08b4</td><td>-</td></tr>
<tr><td>toprightsummation</td><td>0x08b5</td><td>-</td></tr>
<tr><td>botrightsummation</td><td>0x08b6</td><td>-</td></tr>
<tr><td>rightmiddlesummation</td><td>0x08b7</td><td>-</td></tr>
<tr><td>lessthanequal</td><td>0x08bc</td><td>U+2264 LESS-THAN OR EQUAL TO</td></tr>
<tr><td>notequal</td><td>0x08bd</td><td>U+2260 NOT EQUAL TO</td></tr>
<tr><td>greaterthanequal</td><td>0x08be</td><td>U+2265 GREATER-THAN OR EQUAL TO</td></tr>
<tr><td>integral</td><td>0x08bf</td><td>U+222B INTEGRAL</td></tr>
<tr><td>therefore</td><td>0x08c0</td><td>U+2234 THEREFORE</td></tr>
<tr><td>variation</td><td>0x08c1</td><td>U+221D PROPORTIONAL TO</td></tr>
<tr><td>infinity</td><td>0x08c2</td><td>U+221E INFINITY</td></tr>
<tr><td>nabla</td><td>0x08c5</td><td>U+2207 NABLA</td></tr>
<tr><td>approximate</td><td>0x08c8</td><td>U+223C TILDE OPERATOR</td></tr>
<tr><td>similarequal</td><td>0x08c9</td><td>U+2243 ASYMPTOTICALLY EQUAL TO</td></tr>
<tr><td>ifonlyif</td><td>0x08cd</td><td>U+21D4 LEFT RIGHT DOUBLE ARROW</td></tr>
<tr><td>implies</td><td>0x08ce</td><td>U+21D2 RIGHTWARDS DOUBLE ARROW</td></tr>
<tr><td>identical</td><td>0x08cf</td><td>U+2261 IDENTICAL TO</td></tr>
<tr><td>radical</td><td>0x08d6</td><td>U+221A SQUARE ROOT</td></tr>
<tr><td>includedin</td><td>0x08da</td><td>U+2282 SUBSET OF</td></tr>
<tr><td>includes</td><td>0x08db</td><td>U+2283 SUPERSET OF</td></tr>
<tr><td>intersection</td><td>0x08dc</td><td>U+2229 INTERSECTION</td></tr>
<tr><td>union</td><td>0x08dd</td><td>U+222A UNION</td></tr>
<tr><td>logicaland</td><td>0x08de</td><td>U+2227 LOGICAL AND</td></tr>
<tr><td>logicalor</td><td>0x08df</td><td>U+2228 LOGICAL OR</td></tr>
<tr><td>partialderivative</td><td>0x08ef</td><td>U+2202 PARTIAL DIFFERENTIAL</td></tr>
<tr><td>function</td><td>0x08f6</td><td>U+0192 LATIN SMALL LETTER F WITH HOOK</td></tr>
<tr><td>leftarrow</td><td>0x08fb</td><td>U+2190 LEFTWARDS ARROW</td></tr>
<tr><td>uparrow</td><td>0x08fc</td><td>U+2191 UPWARDS ARROW</td></tr>
<tr><td>rightarrow</td><td>0x08fd</td><td>U+2192 RIGHTWARDS ARROW</td></tr>
<tr><td>downarrow</td><td>0x08fe</td><td>U+2193 DOWNWARDS ARROW</td></tr>
<tr><td>blank</td><td>0x09df</td><td>-</td></tr>
<tr><td>soliddiamond</td><td>0x09e0</td><td>U+25C6 BLACK DIAMOND</td></tr>
<tr><td>checkerboard</td><td>0x09e1</td><td>U+2592 MEDIUM SHADE</td></tr>
<tr><td>ht</td><td>0x09e2</td><td>U+2409 SYMBOL FOR HORIZONTAL TABULATION</td></tr>
<tr><td>ff</td><td>0x09e3</td><td>U+240C SYMBOL FOR FORM FEED</td></tr>
<tr><td>cr</td><td>0x09e4</td><td>U+240D SYMBOL FOR CARRIAGE RETURN</td></tr>
<tr><td>lf</td><td>0x09e5</td><td>U+240A SYMBOL FOR LINE FEED</td></tr>
<tr><td>nl</td><td>0x09e8</td><td>U+2424 SYMBOL FOR NEWLINE</td></tr>
<tr><td>vt</td><td>0x09e9</td><td>U+240B SYMBOL FOR VERTICAL TABULATION</td></tr>
<tr><td>lowrightcorner</td><td>0x09ea</td><td>U+2518 BOX DRAWINGS LIGHT UP AND LEFT</td></tr>
<tr><td>uprightcorner</td><td>0x09eb</td><td>U+2510 BOX DRAWINGS LIGHT DOWN AND LEFT</td></tr>
<tr><td>upleftcorner</td><td>0x09ec</td><td>U+250C BOX DRAWINGS LIGHT DOWN AND RIGHT</td></tr>
<tr><td>lowleftcorner</td><td>0x09ed</td><td>U+2514 BOX DRAWINGS LIGHT UP AND RIGHT</td></tr>
<tr><td>crossinglines</td><td>0x09ee</td><td>U+253C BOX DRAWINGS LIGHT VERTICAL AND HORIZONTAL</td></tr>
<tr><td>horizlinescan1</td><td>0x09ef</td><td>U+23BA HORIZONTAL SCAN LINE-1</td></tr>
<tr><td>horizlinescan3</td><td>0x09f0</td><td>U+23BB HORIZONTAL SCAN LINE-3</td></tr>
<tr><td>horizlinescan5</td><td>0x09f1</td><td>U+2500 BOX DRAWINGS LIGHT HORIZONTAL</td></tr>
<tr><td>horizlinescan7</td><td>0x09f2</td><td>U+23BC HORIZONTAL SCAN LINE-7</td></tr>
<tr><td>horizlinescan9</td><td>0x09f3</td><td>U+23BD HORIZONTAL SCAN LINE-9</td></tr>
<tr><td>leftt</td><td>0x09f4</td><td>U+251C BOX DRAWINGS LIGHT VERTICAL AND RIGHT</td></tr>
<tr><td>rightt</td><td>0x09f5</td><td>U+2524 BOX DRAWINGS LIGHT VERTICAL AND LEFT</td></tr>
<tr><td>bott</td><td>0x09f6</td><td>U+2534 BOX DRAWINGS LIGHT UP AND HORIZONTAL</td></tr>
<tr><td>topt</td><td>0x09f7</td><td>U+252C BOX DRAWINGS LIGHT DOWN AND HORIZONTAL</td></tr>
<tr><td>vertbar</td><td>0x09f8</td><td>U+2502 BOX DRAWINGS LIGHT VERTICAL</td></tr>
<tr><td>emspace</td><td>0x0aa1</td><td>U+2003 EM SPACE</td></tr>
<tr><td>enspace</td><td>0x0aa2</td><td>U+2002 EN SPACE</td></tr>
<tr><td>em3space</td><td>0x0aa3</td><td>U+2004 THREE-PER-EM SPACE</td></tr>
<tr><td>em4space</td><td>0x0aa4</td><td>U+2005 FOUR-PER-EM SPACE</td></tr>
<tr><td>digitspace</td><td>0x0aa5</td><td>U+2007 FIGURE SPACE</td></tr>
<tr><td>punctspace</td><td>0x0aa6</td><td>U+2008 PUNCTUATION SPACE</td></tr>
<tr><td>thinspace</td><td>0x0aa7</td><td>U+2009 THIN SPACE</td></tr>
<tr><td>hairspace</td><td>0x0aa8</td><td>U+200A HAIR SPACE</td></tr>
<tr><td>emdash</td><td>0x0aa9</td><td>U+2014 EM DASH</td></tr>
<tr><td>endash</td><td>0x0aaa</td><td>U+2013 EN DASH</td></tr>
<tr><td>signifblank</td><td>0x0aac</td><td>-</td></tr>
<tr><td>ellipsis</td><td>0x0aae</td><td>U+2026 HORIZONTAL ELLIPSIS</td></tr>
<tr><td>doubbaselinedot</td><td>0x0aaf</td><td>U+2025 TWO DOT LEADER</td></tr>
<tr><td>onethird</td><td>0x0ab0</td><td>U+2153 VULGAR FRACTION ONE THIRD</td></tr>
<tr><td>twothirds</td><td>0x0ab1</td><td>U+2154 VULGAR FRACTION TWO THIRDS</td></tr>
<tr><td>onefifth</td><td>0x0ab2</td><td>U+2155 VULGAR FRACTION ONE FIFTH</td></tr>
<tr><td>twofifths</td><td>0x0ab3</td><td>U+2156 VULGAR FRACTION TWO FIFTHS</td></tr>
<tr><td>threefifths</td><td>0x0ab4</td><td>U+2157 VULGAR FRACTION THREE FIFTHS</td></tr>
<tr><td>fourfifths</td><td>0x0ab5</td><td>U+2158 VULGAR FRACTION FOUR FIFTHS</td></tr>
<tr><td>onesixth</td><td>0x0ab6</td><td>U+2159 VULGAR FRACTION ONE SIXTH</td></tr>
<tr><td>fivesixths</td><td>0x0ab7</td><td>U+215A VULGAR FRACTION FIVE SIXTHS</td></tr>
<tr><td>careof</td><td>0x0ab8</td><td>U+2105 CARE OF</td></tr>
<tr><td>figdash</td><td>0x0abb</td><td>U+2012 FIGURE DASH</td></tr>
<tr><td>leftanglebracket</td><td>0x0abc</td><td>-</td></tr>
<tr><td>decimalpoint</td><td>0x0abd</td><td>-</td></tr>
<tr><td>rightanglebracket</td><td>0x0abe</td><td>-</td></tr>
<tr><td>marker</td><td>0x0abf</td><td>-</td></tr>
<tr><td>oneeighth</td><td>0x0ac3</td><td>U+215B VULGAR FRACTION ONE EIGHTH</td></tr>
<tr><td>threeeighths</td><td>0x0ac4</td><td>U+215C VULGAR FRACTION THREE EIGHTHS</td></tr>
<tr><td>fiveeighths</td><td>0x0ac5</td><td>U+215D VULGAR FRACTION FIVE EIGHTHS</td></tr>
<tr><td>seveneighths</td><td>0x0ac6</td><td>U+215E VULGAR FRACTION SEVEN EIGHTHS</td></tr>
<tr><td>trademark</td><td>0x0ac9</td><td>U+2122 TRADE MARK SIGN</td></tr>
<tr><td>signaturemark</td><td>0x0aca</td><td>-</td></tr>
<tr><td>trademarkincircle</td><td>0x0acb</td><td>-</td></tr>
<tr><td>leftopentriangle</td><td>0x0acc</td><td>-</td></tr>
<tr><td>rightopentriangle</td><td>0x0acd</td><td>-</td></tr>
<tr><td>emopencircle</td><td>0x0ace</td><td>-</td></tr>
<tr><td>emopenrectangle</td><td>0x0acf</td><td>-</td></tr>
<tr><td>leftsinglequotemark</td><td>0x0ad0</td><td>U+2018 LEFT SINGLE QUOTATION MARK</td></tr>
<tr><td>rightsinglequotemark</td><td>0x0ad1</td><td>U+2019 RIGHT SINGLE QUOTATION MARK</td></tr>
<tr><td>leftdoublequotemark</td><td>0x0ad2</td><td>U+201C LEFT DOUBLE QUOTATION MARK</td></tr>
<tr><td>rightdoublequotemark</td><td>0x0ad3</td><td>U+201D RIGHT DOUBLE QUOTATION MARK</td></tr>
<tr><td>prescription</td><td>0x0ad4</td><td>U+211E PRESCRIPTION TAKE</td></tr>
<tr><td>permille</td><td>0x0ad5</td><td>U+2030 PER MILLE SIGN</td></tr>
<tr><td>minutes</td><td>0x0ad6</td><td>U+2032 PRIME</td></tr>
<tr><td>seconds</td><td>0x0ad7</td><td>U+2033 DOUBLE PRIME</td></tr>
<tr><td>latincross</td><td>0x0ad9</td><td>U+271D LATIN CROSS</td></tr>
<tr><td>hexagram</td><td>0x0ada</td><td>-</td></tr>
<tr><td>filledrectbullet</td><td>0x0adb</td><td>-</td></tr>
<tr><td>filledlefttribullet</td><td>0x0adc</td><td>-</td></tr>
<tr><td>filledrighttribullet</td><td>0x0add</td><td>-</td></tr>
<tr><td>emfilledcircle</td><td>0x0ade</td><td>-</td></tr>
<tr><td>emfilledrect</td><td>0x0adf</td><td>-</td></tr>
<tr><td>enopencircbullet</td><td>0x0ae0</td><td>-</td></tr>
<tr><td>enopensquarebullet</td><td>0x0ae1</td><td>-</td></tr>
<tr><td>openrectbullet</td><td>0x0ae2</td><td>-</td></tr>
<tr><td>opentribulletup</td><td>0x0ae3</td><td>-</td></tr>
<tr><td>opentribulletdown</td><td>0x0ae4</td><td>-</td></tr>
<tr><td>openstar</td><td>0x0ae5</td><td>-</td></tr>
<tr><td>enfilledcircbullet</td><td>0x0ae6</td><td>-</td></tr>
<tr><td>enfilledsqbullet</td><td>0x0ae7</td><td>-</td></tr>
<tr><td>filledtribulletup</td><td>0x0ae8</td><td>-</td></tr>
<tr><td>filledtribulletdown</td><td>0x0ae9</td><td>-</td></tr>
<tr><td>leftpointer</td><td>0x0aea</td><td>-</td></tr>
<tr><td>rightpointer</td><td>0x0aeb</td><td>-</td></tr>
<tr><td>club</td><td>0x0aec</td><td>U+2663 BLACK CLUB SUIT</td></tr>
<tr><td>diamond</td><td>0x0aed</td><td>U+2666 BLACK DIAMOND SUIT</td></tr>
<tr><td>heart</td><td>0x0aee</td><td>U+2665 BLACK HEART SUIT</td></tr>
<tr><td>maltesecross</td><td>0x0af0</td><td>U+2720 MALTESE CROSS</td></tr>
<tr><td>dagger</td><td>0x0af1</td><td>U+2020 DAGGER</td></tr>
<tr><td>doubledagger</td><td>0x0af2</td><td>U+2021 DOUBLE DAGGER</td></tr>
<tr><td>checkmark</td><td>0x0af3</td><td>U+2713 CHECK MARK</td></tr>
<tr><td>ballotcross</td><td>0x0af4</td><td>U+2717 BALLOT X</td></tr>
<tr><td>musicalsharp</td><td>0x0af5</td><td>U+266F MUSIC SHARP SIGN</td></tr>
<tr><td>musicalflat</td><td>0x0af6</td><td>U+266D MUSIC FLAT SIGN</td></tr>
<tr><td>malesymbol</td><td>0x0af7</td><td>U+2642 MALE SIGN</td></tr>
<tr><td>femalesymbol</td><td>0x0af8</td><td>U+2640 FEMALE SIGN</td></tr>
<tr><td>telephone</td><td>0x0af9</td><td>U+260E BLACK TELEPHONE</td></tr>
<tr><td>telephonerecorder</td><td>0x0afa</td><td>U+2315 TELEPHONE RECORDER</td></tr>
<tr><td>phonographcopyright</td><td>0x0afb</td><td>U+2117 SOUND RECORDING COPYRIGHT</td></tr>
<tr><td>caret</td><td>0x0afc</td><td>U+2038 CARET</td></tr>
<tr><td>singlelowquotemark</td><td>0x0afd</td><td>U+201A SINGLE LOW-9 QUOTATION MARK</td></tr>
<tr><td>doublelowquotemark</td><td>0x0afe</td><td>U+201E DOUBLE LOW-9 QUOTATION MARK</td></tr>
<tr><td>cursor</td><td>0x0aff</td><td>-</td></tr>
<tr><td>leftcaret</td><td>0x0ba3</td><td>-</td></tr>
<tr><td>rightcaret</td><td>0x0ba6</td><td>-</td></tr>
<tr><td>downcaret</td><td>0x0ba8</td><td>-</td></tr>
<tr><td>upcaret</td><td>0x0ba9</td><td>-</td></tr>
<tr><td>overbar</td><td>0x0bc0</td><td>-</td></tr>
<tr><td>downtack</td><td>0x0bc2</td><td>U+22A4 DOWN TACK</td></tr>
<tr><td>upshoe</td><td>0x0bc3</td><td>-</td></tr>
<tr><td>downstile</td><td>0x0bc4</td><td>U+230A LEFT FLOOR</td></tr>
<tr><td>underbar</td><td>0x0bc6</td><td>-</td></tr>
<tr><td>jot</td><td>0x0bca</td><td>U+2218 RING OPERATOR</td></tr>
<tr><td>quad</td><td>0x0bcc</td><td>U+2395 APL FUNCTIONAL SYMBOL QUAD</td></tr>
<tr><td>uptack</td><td>0x0bce</td><td>U+22A5 UP TACK</td></tr>
<tr><td>circle</td><td>0x0bcf</td><td>U+25CB WHITE CIRCLE</td></tr>
<tr><td>upstile</td><td>0x0bd3</td><td>U+2308 LEFT CEILING</td></tr>
<tr><td>downshoe</td><td>0x0bd6</td><td>-</td></tr>
<tr><td>rightshoe</td><td>0x0bd8</td><td>-</td></tr>
<tr><td>leftshoe</td><td>0x0bda</td><td>-</td></tr>
<tr><td>lefttack</td><td>0x0bdc</td><td>U+22A3 LEFT TACK</td></tr>
<tr><td>righttack</td><td>0x0bfc</td><td>U+22A2 RIGHT TACK</td></tr>
<tr><td>hebrew_doublelowline</td><td>0x0cdf</td><td>U+2017 DOUBLE LOW LINE</td></tr>
<tr><td>hebrew_aleph</td><td>0x0ce0</td><td>U+05D0 HEBREW LETTER ALEF</td></tr>
<tr><td>hebrew_bet</td><td>0x0ce1</td><td>U+05D1 HEBREW LETTER BET</td></tr>
<tr><td>hebrew_beth</td><td>0x0ce1</td><td>deprecated</td></tr>
<tr><td>hebrew_gimel</td><td>0x0ce2</td><td>U+05D2 HEBREW LETTER GIMEL</td></tr>
<tr><td>hebrew_gimmel</td><td>0x0ce2</td><td>deprecated</td></tr>
<tr><td>hebrew_dalet</td><td>0x0ce3</td><td>U+05D3 HEBREW LETTER DALET</td></tr>
<tr><td>hebrew_daleth</td><td>0x0ce3</td><td>deprecated</td></tr>
<tr><td>hebrew_he</td><td>0x0ce4</td><td>U+05D4 HEBREW LETTER HE</td></tr>
<tr><td>hebrew_waw</td><td>0x0ce5</td><td>U+05D5 HEBREW LETTER VAV</td></tr>
<tr><td>hebrew_zain</td><td>0x0ce6</td><td>U+05D6 HEBREW LETTER ZAYIN</td></tr>
<tr><td>hebrew_zayin</td><td>0x0ce6</td><td>deprecated</td></tr>
<tr><td>hebrew_chet</td><td>0x0ce7</td><td>U+05D7 HEBREW LETTER HET</td></tr>
<tr><td>hebrew_het</td><td>0x0ce7</td><td>deprecated</td></tr>
<tr><td>hebrew_tet</td><td>0x0ce8</td><td>U+05D8 HEBREW LETTER TET</td></tr>
<tr><td>hebrew_teth</td><td>0x0ce8</td><td>deprecated</td></tr>
<tr><td>hebrew_yod</td><td>0x0ce9</td><td>U+05D9 HEBREW LETTER YOD</td></tr>
<tr><td>hebrew_finalkaph</td><td>0x0cea</td><td>U+05DA HEBREW LETTER FINAL KAF</td></tr>
<tr><td>hebrew_kaph</td><td>0x0ceb</td><td>U+05DB HEBREW LETTER KAF</td></tr>
<tr><td>hebrew_lamed</td><td>0x0cec</td><td>U+05DC HEBREW LETTER LAMED</td></tr>
<tr><td>hebrew_finalmem</td><td>0x0ced</td><td>U+05DD HEBREW LETTER FINAL MEM</td></tr>
<tr><td>hebrew_mem</td><td>0x0cee</td><td>U+05DE HEBREW LETTER MEM</td></tr>
<tr><td>hebrew_finalnun</td><td>0x0cef</td><td>U+05DF HEBREW LETTER FINAL NUN</td></tr>
<tr><td>hebrew_nun</td><td>0x0cf0</td><td>U+05E0 HEBREW LETTER NUN</td></tr>
<tr><td>hebrew_samech</td><td>0x0cf1</td><td>U+05E1 HEBREW LETTER SAMEKH</td></tr>
<tr><td>hebrew_samekh</td><td>0x0cf1</td><td>deprecated</td></tr>
<tr><td>hebrew_ayin</td><td>0x0cf2</td><td>U+05E2 HEBREW LETTER AYIN</td></tr>
<tr><td>hebrew_finalpe</td><td>0x0cf3</td><td>U+05E3 HEBREW LETTER FINAL PE</td></tr>
<tr><td>hebrew_pe</td><td>0x0cf4</td><td>U+05E4 HEBREW LETTER PE</td></tr>
<tr><td>hebrew_finalzade</td><td>0x0cf5</td><td>U+05E5 HEBREW LETTER FINAL TSADI</td></tr>
<tr><td>hebrew_finalzadi</td><td>0x0cf5</td><td>deprecated</td></tr>
<tr><td>hebrew_zade</td><td>0x0cf6</td><td>U+05E6 HEBREW LETTER TSADI</td></tr>
<tr><td>hebrew_zadi</td><td>0x0cf6</td><td>deprecated</td></tr>
<tr><td>hebrew_qoph</td><td>0x0cf7</td><td>U+05E7 HEBREW LETTER QOF</td></tr>
<tr><td>hebrew_kuf</td><td>0x0cf7</td><td>deprecated</td></tr>
<tr><td>hebrew_resh</td><td>0x0cf8</td><td>U+05E8 HEBREW LETTER RESH</td></tr>
<tr><td>hebrew_shin</td><td>0x0cf9</td><td>U+05E9 HEBREW LETTER SHIN</td></tr>
<tr><td>hebrew_taw</td><td>0x0cfa</td><td>U+05EA HEBREW LETTER TAV</td></tr>
<tr><td>hebrew_taf</td><td>0x0cfa</td><td>deprecated</td></tr>
<tr><td>Hebrew_switch</td><td>0xff7e</td><td>Alias for mode_switch</td></tr>
<tr><td>Thai_kokai</td><td>0x0da1</td><td>U+0E01 THAI CHARACTER KO KAI</td></tr>
<tr><td>Thai_khokhai</td><td>0x0da2</td><td>U+0E02 THAI CHARACTER KHO KHAI</td></tr>
<tr><td>Thai_khokhuat</td><td>0x0da3</td><td>U+0E03 THAI CHARACTER KHO KHUAT</td></tr>
<tr><td>Thai_khokhwai</td><td>0x0da4</td><td>U+0E04 THAI CHARACTER KHO KHWAI</td></tr>
<tr><td>Thai_khokhon</td><td>0x0da5</td><td>U+0E05 THAI CHARACTER KHO KHON</td></tr>
<tr><td>Thai_khorakhang</td><td>0x0da6</td><td>U+0E06 THAI CHARACTER KHO RAKHANG</td></tr>
<tr><td>Thai_ngongu</td><td>0x0da7</td><td>U+0E07 THAI CHARACTER NGO NGU</td></tr>
<tr><td>Thai_chochan</td><td>0x0da8</td><td>U+0E08 THAI CHARACTER CHO CHAN</td></tr>
<tr><td>Thai_choching</td><td>0x0da9</td><td>U+0E09 THAI CHARACTER CHO CHING</td></tr>
<tr><td>Thai_chochang</td><td>0x0daa</td><td>U+0E0A THAI CHARACTER CHO CHANG</td></tr>
<tr><td>Thai_soso</td><td>0x0dab</td><td>U+0E0B THAI CHARACTER SO SO</td></tr>
<tr><td>Thai_chochoe</td><td>0x0dac</td><td>U+0E0C THAI CHARACTER CHO CHOE</td></tr>
<tr><td>Thai_yoying</td><td>0x0dad</td><td>U+0E0D THAI CHARACTER YO YING</td></tr>
<tr><td>Thai_dochada</td><td>0x0dae</td><td>U+0E0E THAI CHARACTER DO CHADA</td></tr>
<tr><td>Thai_topatak</td><td>0x0daf</td><td>U+0E0F THAI CHARACTER TO PATAK</td></tr>
<tr><td>Thai_thothan</td><td>0x0db0</td><td>U+0E10 THAI CHARACTER THO THAN</td></tr>
<tr><td>Thai_thonangmontho</td><td>0x0db1</td><td>U+0E11 THAI CHARACTER THO NANGMONTHO</td></tr>
<tr><td>Thai_thophuthao</td><td>0x0db2</td><td>U+0E12 THAI CHARACTER THO PHUTHAO</td></tr>
<tr><td>Thai_nonen</td><td>0x0db3</td><td>U+0E13 THAI CHARACTER NO NEN</td></tr>
<tr><td>Thai_dodek</td><td>0x0db4</td><td>U+0E14 THAI CHARACTER DO DEK</td></tr>
<tr><td>Thai_totao</td><td>0x0db5</td><td>U+0E15 THAI CHARACTER TO TAO</td></tr>
<tr><td>Thai_thothung</td><td>0x0db6</td><td>U+0E16 THAI CHARACTER THO THUNG</td></tr>
<tr><td>Thai_thothahan</td><td>0x0db7</td><td>U+0E17 THAI CHARACTER THO THAHAN</td></tr>
<tr><td>Thai_thothong</td><td>0x0db8</td><td>U+0E18 THAI CHARACTER THO THONG</td></tr>
<tr><td>Thai_nonu</td><td>0x0db9</td><td>U+0E19 THAI CHARACTER NO NU</td></tr>
<tr><td>Thai_bobaimai</td><td>0x0dba</td><td>U+0E1A THAI CHARACTER BO BAIMAI</td></tr>
<tr><td>Thai_popla</td><td>0x0dbb</td><td>U+0E1B THAI CHARACTER PO PLA</td></tr>
<tr><td>Thai_phophung</td><td>0x0dbc</td><td>U+0E1C THAI CHARACTER PHO PHUNG</td></tr>
<tr><td>Thai_fofa</td><td>0x0dbd</td><td>U+0E1D THAI CHARACTER FO FA</td></tr>
<tr><td>Thai_phophan</td><td>0x0dbe</td><td>U+0E1E THAI CHARACTER PHO PHAN</td></tr>
<tr><td>Thai_fofan</td><td>0x0dbf</td><td>U+0E1F THAI CHARACTER FO FAN</td></tr>
<tr><td>Thai_phosamphao</td><td>0x0dc0</td><td>U+0E20 THAI CHARACTER PHO SAMPHAO</td></tr>
<tr><td>Thai_moma</td><td>0x0dc1</td><td>U+0E21 THAI CHARACTER MO MA</td></tr>
<tr><td>Thai_yoyak</td><td>0x0dc2</td><td>U+0E22 THAI CHARACTER YO YAK</td></tr>
<tr><td>Thai_rorua</td><td>0x0dc3</td><td>U+0E23 THAI CHARACTER RO RUA</td></tr>
<tr><td>Thai_ru</td><td>0x0dc4</td><td>U+0E24 THAI CHARACTER RU</td></tr>
<tr><td>Thai_loling</td><td>0x0dc5</td><td>U+0E25 THAI CHARACTER LO LING</td></tr>
<tr><td>Thai_lu</td><td>0x0dc6</td><td>U+0E26 THAI CHARACTER LU</td></tr>
<tr><td>Thai_wowaen</td><td>0x0dc7</td><td>U+0E27 THAI CHARACTER WO WAEN</td></tr>
<tr><td>Thai_sosala</td><td>0x0dc8</td><td>U+0E28 THAI CHARACTER SO SALA</td></tr>
<tr><td>Thai_sorusi</td><td>0x0dc9</td><td>U+0E29 THAI CHARACTER SO RUSI</td></tr>
<tr><td>Thai_sosua</td><td>0x0dca</td><td>U+0E2A THAI CHARACTER SO SUA</td></tr>
<tr><td>Thai_hohip</td><td>0x0dcb</td><td>U+0E2B THAI CHARACTER HO HIP</td></tr>
<tr><td>Thai_lochula</td><td>0x0dcc</td><td>U+0E2C THAI CHARACTER LO CHULA</td></tr>
<tr><td>Thai_oang</td><td>0x0dcd</td><td>U+0E2D THAI CHARACTER O ANG</td></tr>
<tr><td>Thai_honokhuk</td><td>0x0dce</td><td>U+0E2E THAI CHARACTER HO NOKHUK</td></tr>
<tr><td>Thai_paiyannoi</td><td>0x0dcf</td><td>U+0E2F THAI CHARACTER PAIYANNOI</td></tr>
<tr><td>Thai_saraa</td><td>0x0dd0</td><td>U+0E30 THAI CHARACTER SARA A</td></tr>
<tr><td>Thai_maihanakat</td><td>0x0dd1</td><td>U+0E31 THAI CHARACTER MAI HAN-AKAT</td></tr>
<tr><td>Thai_saraaa</td><td>0x0dd2</td><td>U+0E32 THAI CHARACTER SARA AA</td></tr>
<tr><td>Thai_saraam</td><td>0x0dd3</td><td>U+0E33 THAI CHARACTER SARA AM</td></tr>
<tr><td>Thai_sarai</td><td>0x0dd4</td><td>U+0E34 THAI CHARACTER SARA I</td></tr>
<tr><td>Thai_saraii</td><td>0x0dd5</td><td>U+0E35 THAI CHARACTER SARA II</td></tr>
<tr><td>Thai_saraue</td><td>0x0dd6</td><td>U+0E36 THAI CHARACTER SARA UE</td></tr>
<tr><td>Thai_sarauee</td><td>0x0dd7</td><td>U+0E37 THAI CHARACTER SARA UEE</td></tr>
<tr><td>Thai_sarau</td><td>0x0dd8</td><td>U+0E38 THAI CHARACTER SARA U</td></tr>
<tr><td>Thai_sarauu</td><td>0x0dd9</td><td>U+0E39 THAI CHARACTER SARA UU</td></tr>
<tr><td>Thai_phinthu</td><td>0x0dda</td><td>U+0E3A THAI CHARACTER PHINTHU</td></tr>
<tr><td>Thai_maihanakat_maitho</td><td>0x0dde</td><td>-</td></tr>
<tr><td>Thai_baht</td><td>0x0ddf</td><td>U+0E3F THAI CURRENCY SYMBOL BAHT</td></tr>
<tr><td>Thai_sarae</td><td>0x0de0</td><td>U+0E40 THAI CHARACTER SARA E</td></tr>
<tr><td>Thai_saraae</td><td>0x0de1</td><td>U+0E41 THAI CHARACTER SARA AE</td></tr>
<tr><td>Thai_sarao</td><td>0x0de2</td><td>U+0E42 THAI CHARACTER SARA O</td></tr>
<tr><td>Thai_saraaimaimuan</td><td>0x0de3</td><td>U+0E43 THAI CHARACTER SARA AI MAIMUAN</td></tr>
<tr><td>Thai_saraaimaimalai</td><td>0x0de4</td><td>U+0E44 THAI CHARACTER SARA AI MAIMALAI</td></tr>
<tr><td>Thai_lakkhangyao</td><td>0x0de5</td><td>U+0E45 THAI CHARACTER LAKKHANGYAO</td></tr>
<tr><td>Thai_maiyamok</td><td>0x0de6</td><td>U+0E46 THAI CHARACTER MAIYAMOK</td></tr>
<tr><td>Thai_maitaikhu</td><td>0x0de7</td><td>U+0E47 THAI CHARACTER MAITAIKHU</td></tr>
<tr><td>Thai_maiek</td><td>0x0de8</td><td>U+0E48 THAI CHARACTER MAI EK</td></tr>
<tr><td>Thai_maitho</td><td>0x0de9</td><td>U+0E49 THAI CHARACTER MAI THO</td></tr>
<tr><td>Thai_maitri</td><td>0x0dea</td><td>U+0E4A THAI CHARACTER MAI TRI</td></tr>
<tr><td>Thai_maichattawa</td><td>0x0deb</td><td>U+0E4B THAI CHARACTER MAI CHATTAWA</td></tr>
<tr><td>Thai_thanthakhat</td><td>0x0dec</td><td>U+0E4C THAI CHARACTER THANTHAKHAT</td></tr>
<tr><td>Thai_nikhahit</td><td>0x0ded</td><td>U+0E4D THAI CHARACTER NIKHAHIT</td></tr>
<tr><td>Thai_leksun</td><td>0x0df0</td><td>U+0E50 THAI DIGIT ZERO</td></tr>
<tr><td>Thai_leknung</td><td>0x0df1</td><td>U+0E51 THAI DIGIT ONE</td></tr>
<tr><td>Thai_leksong</td><td>0x0df2</td><td>U+0E52 THAI DIGIT TWO</td></tr>
<tr><td>Thai_leksam</td><td>0x0df3</td><td>U+0E53 THAI DIGIT THREE</td></tr>
<tr><td>Thai_leksi</td><td>0x0df4</td><td>U+0E54 THAI DIGIT FOUR</td></tr>
<tr><td>Thai_lekha</td><td>0x0df5</td><td>U+0E55 THAI DIGIT FIVE</td></tr>
<tr><td>Thai_lekhok</td><td>0x0df6</td><td>U+0E56 THAI DIGIT SIX</td></tr>
<tr><td>Thai_lekchet</td><td>0x0df7</td><td>U+0E57 THAI DIGIT SEVEN</td></tr>
<tr><td>Thai_lekpaet</td><td>0x0df8</td><td>U+0E58 THAI DIGIT EIGHT</td></tr>
<tr><td>Thai_lekkao</td><td>0x0df9</td><td>U+0E59 THAI DIGIT NINE</td></tr>
<tr><td>Hangul</td><td>0xff31</td><td>Hangul start/stop(toggle)</td></tr>
<tr><td>Hangul_Start</td><td>0xff32</td><td>Hangul start</td></tr>
<tr><td>Hangul_End</td><td>0xff33</td><td>Hangul end, English start</td></tr>
<tr><td>Hangul_Hanja</td><td>0xff34</td><td>Start Hangul->Hanja Conversion</td></tr>
<tr><td>Hangul_Jamo</td><td>0xff35</td><td>Hangul Jamo mode</td></tr>
<tr><td>Hangul_Romaja</td><td>0xff36</td><td>Hangul Romaja mode</td></tr>
<tr><td>Hangul_Codeinput</td><td>0xff37</td><td>Hangul code input mode</td></tr>
<tr><td>Hangul_Jeonja</td><td>0xff38</td><td>Jeonja mode</td></tr>
<tr><td>Hangul_Banja</td><td>0xff39</td><td>Banja mode</td></tr>
<tr><td>Hangul_PreHanja</td><td>0xff3a</td><td>Pre Hanja conversion</td></tr>
<tr><td>Hangul_PostHanja</td><td>0xff3b</td><td>Post Hanja conversion</td></tr>
<tr><td>Hangul_SingleCandidate</td><td>0xff3c</td><td>Single candidate</td></tr>
<tr><td>Hangul_MultipleCandidate</td><td>0xff3d</td><td>Multiple candidate</td></tr>
<tr><td>Hangul_PreviousCandidate</td><td>0xff3e</td><td>Previous candidate</td></tr>
<tr><td>Hangul_Special</td><td>0xff3f</td><td>Special symbols</td></tr>
<tr><td>Hangul_switch</td><td>0xff7e</td><td>Hangul Consonant Characters</td></tr>
<tr><td>Hangul_Kiyeog</td><td>0x0ea1</td><td>-</td></tr>
<tr><td>Hangul_SsangKiyeog</td><td>0x0ea2</td><td>-</td></tr>
<tr><td>Hangul_KiyeogSios</td><td>0x0ea3</td><td>-</td></tr>
<tr><td>Hangul_Nieun</td><td>0x0ea4</td><td>-</td></tr>
<tr><td>Hangul_NieunJieuj</td><td>0x0ea5</td><td>-</td></tr>
<tr><td>Hangul_NieunHieuh</td><td>0x0ea6</td><td>-</td></tr>
<tr><td>Hangul_Dikeud</td><td>0x0ea7</td><td>-</td></tr>
<tr><td>Hangul_SsangDikeud</td><td>0x0ea8</td><td>-</td></tr>
<tr><td>Hangul_Rieul</td><td>0x0ea9</td><td>-</td></tr>
<tr><td>Hangul_RieulKiyeog</td><td>0x0eaa</td><td>-</td></tr>
<tr><td>Hangul_RieulMieum</td><td>0x0eab</td><td>-</td></tr>
<tr><td>Hangul_RieulPieub</td><td>0x0eac</td><td>-</td></tr>
<tr><td>Hangul_RieulSios</td><td>0x0ead</td><td>-</td></tr>
<tr><td>Hangul_RieulTieut</td><td>0x0eae</td><td>-</td></tr>
<tr><td>Hangul_RieulPhieuf</td><td>0x0eaf</td><td>-</td></tr>
<tr><td>Hangul_RieulHieuh</td><td>0x0eb0</td><td>-</td></tr>
<tr><td>Hangul_Mieum</td><td>0x0eb1</td><td>-</td></tr>
<tr><td>Hangul_Pieub</td><td>0x0eb2</td><td>-</td></tr>
<tr><td>Hangul_SsangPieub</td><td>0x0eb3</td><td>-</td></tr>
<tr><td>Hangul_PieubSios</td><td>0x0eb4</td><td>-</td></tr>
<tr><td>Hangul_Sios</td><td>0x0eb5</td><td>-</td></tr>
<tr><td>Hangul_SsangSios</td><td>0x0eb6</td><td>-</td></tr>
<tr><td>Hangul_Ieung</td><td>0x0eb7</td><td>-</td></tr>
<tr><td>Hangul_Jieuj</td><td>0x0eb8</td><td>-</td></tr>
<tr><td>Hangul_SsangJieuj</td><td>0x0eb9</td><td>-</td></tr>
<tr><td>Hangul_Cieuc</td><td>0x0eba</td><td>-</td></tr>
<tr><td>Hangul_Khieuq</td><td>0x0ebb</td><td>-</td></tr>
<tr><td>Hangul_Tieut</td><td>0x0ebc</td><td>-</td></tr>
<tr><td>Hangul_Phieuf</td><td>0x0ebd</td><td>-</td></tr>
<tr><td>Hangul_Hieuh</td><td>0x0ebe</td><td>Hangul Vowel Characters</td></tr>
<tr><td>Hangul_A</td><td>0x0ebf</td><td>-</td></tr>
<tr><td>Hangul_AE</td><td>0x0ec0</td><td>-</td></tr>
<tr><td>Hangul_YA</td><td>0x0ec1</td><td>-</td></tr>
<tr><td>Hangul_YAE</td><td>0x0ec2</td><td>-</td></tr>
<tr><td>Hangul_EO</td><td>0x0ec3</td><td>-</td></tr>
<tr><td>Hangul_E</td><td>0x0ec4</td><td>-</td></tr>
<tr><td>Hangul_YEO</td><td>0x0ec5</td><td>-</td></tr>
<tr><td>Hangul_YE</td><td>0x0ec6</td><td>-</td></tr>
<tr><td>Hangul_O</td><td>0x0ec7</td><td>-</td></tr>
<tr><td>Hangul_WA</td><td>0x0ec8</td><td>-</td></tr>
<tr><td>Hangul_WAE</td><td>0x0ec9</td><td>-</td></tr>
<tr><td>Hangul_OE</td><td>0x0eca</td><td>-</td></tr>
<tr><td>Hangul_YO</td><td>0x0ecb</td><td>-</td></tr>
<tr><td>Hangul_U</td><td>0x0ecc</td><td>-</td></tr>
<tr><td>Hangul_WEO</td><td>0x0ecd</td><td>-</td></tr>
<tr><td>Hangul_WE</td><td>0x0ece</td><td>-</td></tr>
<tr><td>Hangul_WI</td><td>0x0ecf</td><td>-</td></tr>
<tr><td>Hangul_YU</td><td>0x0ed0</td><td>-</td></tr>
<tr><td>Hangul_EU</td><td>0x0ed1</td><td>-</td></tr>
<tr><td>Hangul_YI</td><td>0x0ed2</td><td>-</td></tr>
<tr><td>Hangul_I</td><td>0x0ed3</td><td>Hangul syllable-final (JongSeong) Characters</td></tr>
<tr><td>Hangul_J_Kiyeog</td><td>0x0ed4</td><td>-</td></tr>
<tr><td>Hangul_J_SsangKiyeog</td><td>0x0ed5</td><td>-</td></tr>
<tr><td>Hangul_J_KiyeogSios</td><td>0x0ed6</td><td>-</td></tr>
<tr><td>Hangul_J_Nieun</td><td>0x0ed7</td><td>-</td></tr>
<tr><td>Hangul_J_NieunJieuj</td><td>0x0ed8</td><td>-</td></tr>
<tr><td>Hangul_J_NieunHieuh</td><td>0x0ed9</td><td>-</td></tr>
<tr><td>Hangul_J_Dikeud</td><td>0x0eda</td><td>-</td></tr>
<tr><td>Hangul_J_Rieul</td><td>0x0edb</td><td>-</td></tr>
<tr><td>Hangul_J_RieulKiyeog</td><td>0x0edc</td><td>-</td></tr>
<tr><td>Hangul_J_RieulMieum</td><td>0x0edd</td><td>-</td></tr>
<tr><td>Hangul_J_RieulPieub</td><td>0x0ede</td><td>-</td></tr>
<tr><td>Hangul_J_RieulSios</td><td>0x0edf</td><td>-</td></tr>
<tr><td>Hangul_J_RieulTieut</td><td>0x0ee0</td><td>-</td></tr>
<tr><td>Hangul_J_RieulPhieuf</td><td>0x0ee1</td><td>-</td></tr>
<tr><td>Hangul_J_RieulHieuh</td><td>0x0ee2</td><td>-</td></tr>
<tr><td>Hangul_J_Mieum</td><td>0x0ee3</td><td>-</td></tr>
<tr><td>Hangul_J_Pieub</td><td>0x0ee4</td><td>-</td></tr>
<tr><td>Hangul_J_PieubSios</td><td>0x0ee5</td><td>-</td></tr>
<tr><td>Hangul_J_Sios</td><td>0x0ee6</td><td>-</td></tr>
<tr><td>Hangul_J_SsangSios</td><td>0x0ee7</td><td>-</td></tr>
<tr><td>Hangul_J_Ieung</td><td>0x0ee8</td><td>-</td></tr>
<tr><td>Hangul_J_Jieuj</td><td>0x0ee9</td><td>-</td></tr>
<tr><td>Hangul_J_Cieuc</td><td>0x0eea</td><td>-</td></tr>
<tr><td>Hangul_J_Khieuq</td><td>0x0eeb</td><td>-</td></tr>
<tr><td>Hangul_J_Tieut</td><td>0x0eec</td><td>-</td></tr>
<tr><td>Hangul_J_Phieuf</td><td>0x0eed</td><td>-</td></tr>
<tr><td>Hangul_J_Hieuh</td><td>0x0eee</td><td>Ancient Hangul Consonant Characters</td></tr>
<tr><td>Hangul_RieulYeorinHieuh</td><td>0x0eef</td><td>-</td></tr>
<tr><td>Hangul_SunkyeongeumMieum</td><td>0x0ef0</td><td>-</td></tr>
<tr><td>Hangul_SunkyeongeumPieub</td><td>0x0ef1</td><td>-</td></tr>
<tr><td>Hangul_PanSios</td><td>0x0ef2</td><td>-</td></tr>
<tr><td>Hangul_KkogjiDalrinIeung</td><td>0x0ef3</td><td>-</td></tr>
<tr><td>Hangul_SunkyeongeumPhieuf</td><td>0x0ef4</td><td>-</td></tr>
<tr><td>Hangul_YeorinHieuh</td><td>0x0ef5</td><td>Ancient Hangul Vowel Characters</td></tr>
<tr><td>Hangul_AraeA</td><td>0x0ef6</td><td>-</td></tr>
<tr><td>Hangul_AraeAE</td><td>0x0ef7</td><td>Ancient Hangul syllable-final (JongSeong) Characters</td></tr>
<tr><td>Hangul_J_PanSios</td><td>0x0ef8</td><td>-</td></tr>
<tr><td>Hangul_J_KkogjiDalrinIeung</td><td>0x0ef9</td><td>-</td></tr>
<tr><td>Hangul_J_YeorinHieuh</td><td>0x0efa</td><td>Korean currency symbol</td></tr>
<tr><td>Korean_Won</td><td>0x0eff</td><td>-</td></tr>
<tr><td>Armenian_ligature_ew</td><td>0x1000587</td><td>U+0587 ARMENIAN SMALL LIGATURE ECH YIWN</td></tr>
<tr><td>Armenian_full_stop</td><td>0x1000589</td><td>U+0589 ARMENIAN FULL STOP</td></tr>
<tr><td>Armenian_verjaket</td><td>0x1000589</td><td>U+0589 ARMENIAN FULL STOP</td></tr>
<tr><td>Armenian_separation_mark</td><td>0x100055d</td><td>U+055D ARMENIAN COMMA</td></tr>
<tr><td>Armenian_but</td><td>0x100055d</td><td>U+055D ARMENIAN COMMA</td></tr>
<tr><td>Armenian_hyphen</td><td>0x100058a</td><td>U+058A ARMENIAN HYPHEN</td></tr>
<tr><td>Armenian_yentamna</td><td>0x100058a</td><td>U+058A ARMENIAN HYPHEN</td></tr>
<tr><td>Armenian_exclam</td><td>0x100055c</td><td>U+055C ARMENIAN EXCLAMATION MARK</td></tr>
<tr><td>Armenian_amanak</td><td>0x100055c</td><td>U+055C ARMENIAN EXCLAMATION MARK</td></tr>
<tr><td>Armenian_accent</td><td>0x100055b</td><td>U+055B ARMENIAN EMPHASIS MARK</td></tr>
<tr><td>Armenian_shesht</td><td>0x100055b</td><td>U+055B ARMENIAN EMPHASIS MARK</td></tr>
<tr><td>Armenian_question</td><td>0x100055e</td><td>U+055E ARMENIAN QUESTION MARK</td></tr>
<tr><td>Armenian_paruyk</td><td>0x100055e</td><td>U+055E ARMENIAN QUESTION MARK</td></tr>
<tr><td>Armenian_AYB</td><td>0x1000531</td><td>U+0531 ARMENIAN CAPITAL LETTER AYB</td></tr>
<tr><td>Armenian_ayb</td><td>0x1000561</td><td>U+0561 ARMENIAN SMALL LETTER AYB</td></tr>
<tr><td>Armenian_BEN</td><td>0x1000532</td><td>U+0532 ARMENIAN CAPITAL LETTER BEN</td></tr>
<tr><td>Armenian_ben</td><td>0x1000562</td><td>U+0562 ARMENIAN SMALL LETTER BEN</td></tr>
<tr><td>Armenian_GIM</td><td>0x1000533</td><td>U+0533 ARMENIAN CAPITAL LETTER GIM</td></tr>
<tr><td>Armenian_gim</td><td>0x1000563</td><td>U+0563 ARMENIAN SMALL LETTER GIM</td></tr>
<tr><td>Armenian_DA</td><td>0x1000534</td><td>U+0534 ARMENIAN CAPITAL LETTER DA</td></tr>
<tr><td>Armenian_da</td><td>0x1000564</td><td>U+0564 ARMENIAN SMALL LETTER DA</td></tr>
<tr><td>Armenian_YECH</td><td>0x1000535</td><td>U+0535 ARMENIAN CAPITAL LETTER ECH</td></tr>
<tr><td>Armenian_yech</td><td>0x1000565</td><td>U+0565 ARMENIAN SMALL LETTER ECH</td></tr>
<tr><td>Armenian_ZA</td><td>0x1000536</td><td>U+0536 ARMENIAN CAPITAL LETTER ZA</td></tr>
<tr><td>Armenian_za</td><td>0x1000566</td><td>U+0566 ARMENIAN SMALL LETTER ZA</td></tr>
<tr><td>Armenian_E</td><td>0x1000537</td><td>U+0537 ARMENIAN CAPITAL LETTER EH</td></tr>
<tr><td>Armenian_e</td><td>0x1000567</td><td>U+0567 ARMENIAN SMALL LETTER EH</td></tr>
<tr><td>Armenian_AT</td><td>0x1000538</td><td>U+0538 ARMENIAN CAPITAL LETTER ET</td></tr>
<tr><td>Armenian_at</td><td>0x1000568</td><td>U+0568 ARMENIAN SMALL LETTER ET</td></tr>
<tr><td>Armenian_TO</td><td>0x1000539</td><td>U+0539 ARMENIAN CAPITAL LETTER TO</td></tr>
<tr><td>Armenian_to</td><td>0x1000569</td><td>U+0569 ARMENIAN SMALL LETTER TO</td></tr>
<tr><td>Armenian_ZHE</td><td>0x100053a</td><td>U+053A ARMENIAN CAPITAL LETTER ZHE</td></tr>
<tr><td>Armenian_zhe</td><td>0x100056a</td><td>U+056A ARMENIAN SMALL LETTER ZHE</td></tr>
<tr><td>Armenian_INI</td><td>0x100053b</td><td>U+053B ARMENIAN CAPITAL LETTER INI</td></tr>
<tr><td>Armenian_ini</td><td>0x100056b</td><td>U+056B ARMENIAN SMALL LETTER INI</td></tr>
<tr><td>Armenian_LYUN</td><td>0x100053c</td><td>U+053C ARMENIAN CAPITAL LETTER LIWN</td></tr>
<tr><td>Armenian_lyun</td><td>0x100056c</td><td>U+056C ARMENIAN SMALL LETTER LIWN</td></tr>
<tr><td>Armenian_KHE</td><td>0x100053d</td><td>U+053D ARMENIAN CAPITAL LETTER XEH</td></tr>
<tr><td>Armenian_khe</td><td>0x100056d</td><td>U+056D ARMENIAN SMALL LETTER XEH</td></tr>
<tr><td>Armenian_TSA</td><td>0x100053e</td><td>U+053E ARMENIAN CAPITAL LETTER CA</td></tr>
<tr><td>Armenian_tsa</td><td>0x100056e</td><td>U+056E ARMENIAN SMALL LETTER CA</td></tr>
<tr><td>Armenian_KEN</td><td>0x100053f</td><td>U+053F ARMENIAN CAPITAL LETTER KEN</td></tr>
<tr><td>Armenian_ken</td><td>0x100056f</td><td>U+056F ARMENIAN SMALL LETTER KEN</td></tr>
<tr><td>Armenian_HO</td><td>0x1000540</td><td>U+0540 ARMENIAN CAPITAL LETTER HO</td></tr>
<tr><td>Armenian_ho</td><td>0x1000570</td><td>U+0570 ARMENIAN SMALL LETTER HO</td></tr>
<tr><td>Armenian_DZA</td><td>0x1000541</td><td>U+0541 ARMENIAN CAPITAL LETTER JA</td></tr>
<tr><td>Armenian_dza</td><td>0x1000571</td><td>U+0571 ARMENIAN SMALL LETTER JA</td></tr>
<tr><td>Armenian_GHAT</td><td>0x1000542</td><td>U+0542 ARMENIAN CAPITAL LETTER GHAD</td></tr>
<tr><td>Armenian_ghat</td><td>0x1000572</td><td>U+0572 ARMENIAN SMALL LETTER GHAD</td></tr>
<tr><td>Armenian_TCHE</td><td>0x1000543</td><td>U+0543 ARMENIAN CAPITAL LETTER CHEH</td></tr>
<tr><td>Armenian_tche</td><td>0x1000573</td><td>U+0573 ARMENIAN SMALL LETTER CHEH</td></tr>
<tr><td>Armenian_MEN</td><td>0x1000544</td><td>U+0544 ARMENIAN CAPITAL LETTER MEN</td></tr>
<tr><td>Armenian_men</td><td>0x1000574</td><td>U+0574 ARMENIAN SMALL LETTER MEN</td></tr>
<tr><td>Armenian_HI</td><td>0x1000545</td><td>U+0545 ARMENIAN CAPITAL LETTER YI</td></tr>
<tr><td>Armenian_hi</td><td>0x1000575</td><td>U+0575 ARMENIAN SMALL LETTER YI</td></tr>
<tr><td>Armenian_NU</td><td>0x1000546</td><td>U+0546 ARMENIAN CAPITAL LETTER NOW</td></tr>
<tr><td>Armenian_nu</td><td>0x1000576</td><td>U+0576 ARMENIAN SMALL LETTER NOW</td></tr>
<tr><td>Armenian_SHA</td><td>0x1000547</td><td>U+0547 ARMENIAN CAPITAL LETTER SHA</td></tr>
<tr><td>Armenian_sha</td><td>0x1000577</td><td>U+0577 ARMENIAN SMALL LETTER SHA</td></tr>
<tr><td>Armenian_VO</td><td>0x1000548</td><td>U+0548 ARMENIAN CAPITAL LETTER VO</td></tr>
<tr><td>Armenian_vo</td><td>0x1000578</td><td>U+0578 ARMENIAN SMALL LETTER VO</td></tr>
<tr><td>Armenian_CHA</td><td>0x1000549</td><td>U+0549 ARMENIAN CAPITAL LETTER CHA</td></tr>
<tr><td>Armenian_cha</td><td>0x1000579</td><td>U+0579 ARMENIAN SMALL LETTER CHA</td></tr>
<tr><td>Armenian_PE</td><td>0x100054a</td><td>U+054A ARMENIAN CAPITAL LETTER PEH</td></tr>
<tr><td>Armenian_pe</td><td>0x100057a</td><td>U+057A ARMENIAN SMALL LETTER PEH</td></tr>
<tr><td>Armenian_JE</td><td>0x100054b</td><td>U+054B ARMENIAN CAPITAL LETTER JHEH</td></tr>
<tr><td>Armenian_je</td><td>0x100057b</td><td>U+057B ARMENIAN SMALL LETTER JHEH</td></tr>
<tr><td>Armenian_RA</td><td>0x100054c</td><td>U+054C ARMENIAN CAPITAL LETTER RA</td></tr>
<tr><td>Armenian_ra</td><td>0x100057c</td><td>U+057C ARMENIAN SMALL LETTER RA</td></tr>
<tr><td>Armenian_SE</td><td>0x100054d</td><td>U+054D ARMENIAN CAPITAL LETTER SEH</td></tr>
<tr><td>Armenian_se</td><td>0x100057d</td><td>U+057D ARMENIAN SMALL LETTER SEH</td></tr>
<tr><td>Armenian_VEV</td><td>0x100054e</td><td>U+054E ARMENIAN CAPITAL LETTER VEW</td></tr>
<tr><td>Armenian_vev</td><td>0x100057e</td><td>U+057E ARMENIAN SMALL LETTER VEW</td></tr>
<tr><td>Armenian_TYUN</td><td>0x100054f</td><td>U+054F ARMENIAN CAPITAL LETTER TIWN</td></tr>
<tr><td>Armenian_tyun</td><td>0x100057f</td><td>U+057F ARMENIAN SMALL LETTER TIWN</td></tr>
<tr><td>Armenian_RE</td><td>0x1000550</td><td>U+0550 ARMENIAN CAPITAL LETTER REH</td></tr>
<tr><td>Armenian_re</td><td>0x1000580</td><td>U+0580 ARMENIAN SMALL LETTER REH</td></tr>
<tr><td>Armenian_TSO</td><td>0x1000551</td><td>U+0551 ARMENIAN CAPITAL LETTER CO</td></tr>
<tr><td>Armenian_tso</td><td>0x1000581</td><td>U+0581 ARMENIAN SMALL LETTER CO</td></tr>
<tr><td>Armenian_VYUN</td><td>0x1000552</td><td>U+0552 ARMENIAN CAPITAL LETTER YIWN</td></tr>
<tr><td>Armenian_vyun</td><td>0x1000582</td><td>U+0582 ARMENIAN SMALL LETTER YIWN</td></tr>
<tr><td>Armenian_PYUR</td><td>0x1000553</td><td>U+0553 ARMENIAN CAPITAL LETTER PIWR</td></tr>
<tr><td>Armenian_pyur</td><td>0x1000583</td><td>U+0583 ARMENIAN SMALL LETTER PIWR</td></tr>
<tr><td>Armenian_KE</td><td>0x1000554</td><td>U+0554 ARMENIAN CAPITAL LETTER KEH</td></tr>
<tr><td>Armenian_ke</td><td>0x1000584</td><td>U+0584 ARMENIAN SMALL LETTER KEH</td></tr>
<tr><td>Armenian_O</td><td>0x1000555</td><td>U+0555 ARMENIAN CAPITAL LETTER OH</td></tr>
<tr><td>Armenian_o</td><td>0x1000585</td><td>U+0585 ARMENIAN SMALL LETTER OH</td></tr>
<tr><td>Armenian_FE</td><td>0x1000556</td><td>U+0556 ARMENIAN CAPITAL LETTER FEH</td></tr>
<tr><td>Armenian_fe</td><td>0x1000586</td><td>U+0586 ARMENIAN SMALL LETTER FEH</td></tr>
<tr><td>Armenian_apostrophe</td><td>0x100055a</td><td>U+055A ARMENIAN APOSTROPHE</td></tr>
<tr><td>Georgian_an</td><td>0x10010d0</td><td>U+10D0 GEORGIAN LETTER AN</td></tr>
<tr><td>Georgian_ban</td><td>0x10010d1</td><td>U+10D1 GEORGIAN LETTER BAN</td></tr>
<tr><td>Georgian_gan</td><td>0x10010d2</td><td>U+10D2 GEORGIAN LETTER GAN</td></tr>
<tr><td>Georgian_don</td><td>0x10010d3</td><td>U+10D3 GEORGIAN LETTER DON</td></tr>
<tr><td>Georgian_en</td><td>0x10010d4</td><td>U+10D4 GEORGIAN LETTER EN</td></tr>
<tr><td>Georgian_vin</td><td>0x10010d5</td><td>U+10D5 GEORGIAN LETTER VIN</td></tr>
<tr><td>Georgian_zen</td><td>0x10010d6</td><td>U+10D6 GEORGIAN LETTER ZEN</td></tr>
<tr><td>Georgian_tan</td><td>0x10010d7</td><td>U+10D7 GEORGIAN LETTER TAN</td></tr>
<tr><td>Georgian_in</td><td>0x10010d8</td><td>U+10D8 GEORGIAN LETTER IN</td></tr>
<tr><td>Georgian_kan</td><td>0x10010d9</td><td>U+10D9 GEORGIAN LETTER KAN</td></tr>
<tr><td>Georgian_las</td><td>0x10010da</td><td>U+10DA GEORGIAN LETTER LAS</td></tr>
<tr><td>Georgian_man</td><td>0x10010db</td><td>U+10DB GEORGIAN LETTER MAN</td></tr>
<tr><td>Georgian_nar</td><td>0x10010dc</td><td>U+10DC GEORGIAN LETTER NAR</td></tr>
<tr><td>Georgian_on</td><td>0x10010dd</td><td>U+10DD GEORGIAN LETTER ON</td></tr>
<tr><td>Georgian_par</td><td>0x10010de</td><td>U+10DE GEORGIAN LETTER PAR</td></tr>
<tr><td>Georgian_zhar</td><td>0x10010df</td><td>U+10DF GEORGIAN LETTER ZHAR</td></tr>
<tr><td>Georgian_rae</td><td>0x10010e0</td><td>U+10E0 GEORGIAN LETTER RAE</td></tr>
<tr><td>Georgian_san</td><td>0x10010e1</td><td>U+10E1 GEORGIAN LETTER SAN</td></tr>
<tr><td>Georgian_tar</td><td>0x10010e2</td><td>U+10E2 GEORGIAN LETTER TAR</td></tr>
<tr><td>Georgian_un</td><td>0x10010e3</td><td>U+10E3 GEORGIAN LETTER UN</td></tr>
<tr><td>Georgian_phar</td><td>0x10010e4</td><td>U+10E4 GEORGIAN LETTER PHAR</td></tr>
<tr><td>Georgian_khar</td><td>0x10010e5</td><td>U+10E5 GEORGIAN LETTER KHAR</td></tr>
<tr><td>Georgian_ghan</td><td>0x10010e6</td><td>U+10E6 GEORGIAN LETTER GHAN</td></tr>
<tr><td>Georgian_qar</td><td>0x10010e7</td><td>U+10E7 GEORGIAN LETTER QAR</td></tr>
<tr><td>Georgian_shin</td><td>0x10010e8</td><td>U+10E8 GEORGIAN LETTER SHIN</td></tr>
<tr><td>Georgian_chin</td><td>0x10010e9</td><td>U+10E9 GEORGIAN LETTER CHIN</td></tr>
<tr><td>Georgian_can</td><td>0x10010ea</td><td>U+10EA GEORGIAN LETTER CAN</td></tr>
<tr><td>Georgian_jil</td><td>0x10010eb</td><td>U+10EB GEORGIAN LETTER JIL</td></tr>
<tr><td>Georgian_cil</td><td>0x10010ec</td><td>U+10EC GEORGIAN LETTER CIL</td></tr>
<tr><td>Georgian_char</td><td>0x10010ed</td><td>U+10ED GEORGIAN LETTER CHAR</td></tr>
<tr><td>Georgian_xan</td><td>0x10010ee</td><td>U+10EE GEORGIAN LETTER XAN</td></tr>
<tr><td>Georgian_jhan</td><td>0x10010ef</td><td>U+10EF GEORGIAN LETTER JHAN</td></tr>
<tr><td>Georgian_hae</td><td>0x10010f0</td><td>U+10F0 GEORGIAN LETTER HAE</td></tr>
<tr><td>Georgian_he</td><td>0x10010f1</td><td>U+10F1 GEORGIAN LETTER HE</td></tr>
<tr><td>Georgian_hie</td><td>0x10010f2</td><td>U+10F2 GEORGIAN LETTER HIE</td></tr>
<tr><td>Georgian_we</td><td>0x10010f3</td><td>U+10F3 GEORGIAN LETTER WE</td></tr>
<tr><td>Georgian_har</td><td>0x10010f4</td><td>U+10F4 GEORGIAN LETTER HAR</td></tr>
<tr><td>Georgian_hoe</td><td>0x10010f5</td><td>U+10F5 GEORGIAN LETTER HOE</td></tr>
<tr><td>Georgian_fi</td><td>0x10010f6</td><td>U+10F6 GEORGIAN LETTER FI</td></tr>
<tr><td>Xabovedot</td><td>0x1001e8a</td><td>U+1E8A LATIN CAPITAL LETTER X WITH DOT ABOVE</td></tr>
<tr><td>Ibreve</td><td>0x100012c</td><td>U+012C LATIN CAPITAL LETTER I WITH BREVE</td></tr>
<tr><td>Zstroke</td><td>0x10001b5</td><td>U+01B5 LATIN CAPITAL LETTER Z WITH STROKE</td></tr>
<tr><td>Gcaron</td><td>0x10001e6</td><td>U+01E6 LATIN CAPITAL LETTER G WITH CARON</td></tr>
<tr><td>Ocaron</td><td>0x10001d1</td><td>U+01D2 LATIN CAPITAL LETTER O WITH CARON</td></tr>
<tr><td>Obarred</td><td>0x100019f</td><td>U+019F LATIN CAPITAL LETTER O WITH MIDDLE TILDE</td></tr>
<tr><td>xabovedot</td><td>0x1001e8b</td><td>U+1E8B LATIN SMALL LETTER X WITH DOT ABOVE</td></tr>
<tr><td>ibreve</td><td>0x100012d</td><td>U+012D LATIN SMALL LETTER I WITH BREVE</td></tr>
<tr><td>zstroke</td><td>0x10001b6</td><td>U+01B6 LATIN SMALL LETTER Z WITH STROKE</td></tr>
<tr><td>gcaron</td><td>0x10001e7</td><td>U+01E7 LATIN SMALL LETTER G WITH CARON</td></tr>
<tr><td>ocaron</td><td>0x10001d2</td><td>U+01D2 LATIN SMALL LETTER O WITH CARON</td></tr>
<tr><td>obarred</td><td>0x1000275</td><td>U+0275 LATIN SMALL LETTER BARRED O</td></tr>
<tr><td>SCHWA</td><td>0x100018f</td><td>U+018F LATIN CAPITAL LETTER SCHWA</td></tr>
<tr><td>schwa</td><td>0x1000259</td><td>U+0259 LATIN SMALL LETTER SCHWA</td></tr>
<tr><td>EZH</td><td>0x10001b7</td><td>U+01B7 LATIN CAPITAL LETTER EZH</td></tr>
<tr><td>ezh</td><td>0x1000292</td><td>For Inupiak</td></tr>
<tr><td>Lbelowdot</td><td>0x1001e36</td><td>U+1E36 LATIN CAPITAL LETTER L WITH DOT BELOW</td></tr>
<tr><td>lbelowdot</td><td>0x1001e37</td><td>U+1E37 LATIN SMALL LETTER L WITH DOT BELOW</td></tr>
<tr><td>Abelowdot</td><td>0x1001ea0</td><td>U+1EA0 LATIN CAPITAL LETTER A WITH DOT BELOW</td></tr>
<tr><td>abelowdot</td><td>0x1001ea1</td><td>U+1EA1 LATIN SMALL LETTER A WITH DOT BELOW</td></tr>
<tr><td>Ahook</td><td>0x1001ea2</td><td>U+1EA2 LATIN CAPITAL LETTER A WITH HOOK ABOVE</td></tr>
<tr><td>ahook</td><td>0x1001ea3</td><td>U+1EA3 LATIN SMALL LETTER A WITH HOOK ABOVE</td></tr>
<tr><td>Acircumflexacute</td><td>0x1001ea4</td><td>U+1EA4 LATIN CAPITAL LETTER A WITH CIRCUMFLEX AND ACUTE</td></tr>
<tr><td>acircumflexacute</td><td>0x1001ea5</td><td>U+1EA5 LATIN SMALL LETTER A WITH CIRCUMFLEX AND ACUTE</td></tr>
<tr><td>Acircumflexgrave</td><td>0x1001ea6</td><td>U+1EA6 LATIN CAPITAL LETTER A WITH CIRCUMFLEX AND GRAVE</td></tr>
<tr><td>acircumflexgrave</td><td>0x1001ea7</td><td>U+1EA7 LATIN SMALL LETTER A WITH CIRCUMFLEX AND GRAVE</td></tr>
<tr><td>Acircumflexhook</td><td>0x1001ea8</td><td>U+1EA8 LATIN CAPITAL LETTER A WITH CIRCUMFLEX AND HOOK ABOVE</td></tr>
<tr><td>acircumflexhook</td><td>0x1001ea9</td><td>U+1EA9 LATIN SMALL LETTER A WITH CIRCUMFLEX AND HOOK ABOVE</td></tr>
<tr><td>Acircumflextilde</td><td>0x1001eaa</td><td>U+1EAA LATIN CAPITAL LETTER A WITH CIRCUMFLEX AND TILDE</td></tr>
<tr><td>acircumflextilde</td><td>0x1001eab</td><td>U+1EAB LATIN SMALL LETTER A WITH CIRCUMFLEX AND TILDE</td></tr>
<tr><td>Acircumflexbelowdot</td><td>0x1001eac</td><td>U+1EAC LATIN CAPITAL LETTER A WITH CIRCUMFLEX AND DOT BELOW</td></tr>
<tr><td>acircumflexbelowdot</td><td>0x1001ead</td><td>U+1EAD LATIN SMALL LETTER A WITH CIRCUMFLEX AND DOT BELOW</td></tr>
<tr><td>Abreveacute</td><td>0x1001eae</td><td>U+1EAE LATIN CAPITAL LETTER A WITH BREVE AND ACUTE</td></tr>
<tr><td>abreveacute</td><td>0x1001eaf</td><td>U+1EAF LATIN SMALL LETTER A WITH BREVE AND ACUTE</td></tr>
<tr><td>Abrevegrave</td><td>0x1001eb0</td><td>U+1EB0 LATIN CAPITAL LETTER A WITH BREVE AND GRAVE</td></tr>
<tr><td>abrevegrave</td><td>0x1001eb1</td><td>U+1EB1 LATIN SMALL LETTER A WITH BREVE AND GRAVE</td></tr>
<tr><td>Abrevehook</td><td>0x1001eb2</td><td>U+1EB2 LATIN CAPITAL LETTER A WITH BREVE AND HOOK ABOVE</td></tr>
<tr><td>abrevehook</td><td>0x1001eb3</td><td>U+1EB3 LATIN SMALL LETTER A WITH BREVE AND HOOK ABOVE</td></tr>
<tr><td>Abrevetilde</td><td>0x1001eb4</td><td>U+1EB4 LATIN CAPITAL LETTER A WITH BREVE AND TILDE</td></tr>
<tr><td>abrevetilde</td><td>0x1001eb5</td><td>U+1EB5 LATIN SMALL LETTER A WITH BREVE AND TILDE</td></tr>
<tr><td>Abrevebelowdot</td><td>0x1001eb6</td><td>U+1EB6 LATIN CAPITAL LETTER A WITH BREVE AND DOT BELOW</td></tr>
<tr><td>abrevebelowdot</td><td>0x1001eb7</td><td>U+1EB7 LATIN SMALL LETTER A WITH BREVE AND DOT BELOW</td></tr>
<tr><td>Ebelowdot</td><td>0x1001eb8</td><td>U+1EB8 LATIN CAPITAL LETTER E WITH DOT BELOW</td></tr>
<tr><td>ebelowdot</td><td>0x1001eb9</td><td>U+1EB9 LATIN SMALL LETTER E WITH DOT BELOW</td></tr>
<tr><td>Ehook</td><td>0x1001eba</td><td>U+1EBA LATIN CAPITAL LETTER E WITH HOOK ABOVE</td></tr>
<tr><td>ehook</td><td>0x1001ebb</td><td>U+1EBB LATIN SMALL LETTER E WITH HOOK ABOVE</td></tr>
<tr><td>Etilde</td><td>0x1001ebc</td><td>U+1EBC LATIN CAPITAL LETTER E WITH TILDE</td></tr>
<tr><td>etilde</td><td>0x1001ebd</td><td>U+1EBD LATIN SMALL LETTER E WITH TILDE</td></tr>
<tr><td>Ecircumflexacute</td><td>0x1001ebe</td><td>U+1EBE LATIN CAPITAL LETTER E WITH CIRCUMFLEX AND ACUTE</td></tr>
<tr><td>ecircumflexacute</td><td>0x1001ebf</td><td>U+1EBF LATIN SMALL LETTER E WITH CIRCUMFLEX AND ACUTE</td></tr>
<tr><td>Ecircumflexgrave</td><td>0x1001ec0</td><td>U+1EC0 LATIN CAPITAL LETTER E WITH CIRCUMFLEX AND GRAVE</td></tr>
<tr><td>ecircumflexgrave</td><td>0x1001ec1</td><td>U+1EC1 LATIN SMALL LETTER E WITH CIRCUMFLEX AND GRAVE</td></tr>
<tr><td>Ecircumflexhook</td><td>0x1001ec2</td><td>U+1EC2 LATIN CAPITAL LETTER E WITH CIRCUMFLEX AND HOOK ABOVE</td></tr>
<tr><td>ecircumflexhook</td><td>0x1001ec3</td><td>U+1EC3 LATIN SMALL LETTER E WITH CIRCUMFLEX AND HOOK ABOVE</td></tr>
<tr><td>Ecircumflextilde</td><td>0x1001ec4</td><td>U+1EC4 LATIN CAPITAL LETTER E WITH CIRCUMFLEX AND TILDE</td></tr>
<tr><td>ecircumflextilde</td><td>0x1001ec5</td><td>U+1EC5 LATIN SMALL LETTER E WITH CIRCUMFLEX AND TILDE</td></tr>
<tr><td>Ecircumflexbelowdot</td><td>0x1001ec6</td><td>U+1EC6 LATIN CAPITAL LETTER E WITH CIRCUMFLEX AND DOT BELOW</td></tr>
<tr><td>ecircumflexbelowdot</td><td>0x1001ec7</td><td>U+1EC7 LATIN SMALL LETTER E WITH CIRCUMFLEX AND DOT BELOW</td></tr>
<tr><td>Ihook</td><td>0x1001ec8</td><td>U+1EC8 LATIN CAPITAL LETTER I WITH HOOK ABOVE</td></tr>
<tr><td>ihook</td><td>0x1001ec9</td><td>U+1EC9 LATIN SMALL LETTER I WITH HOOK ABOVE</td></tr>
<tr><td>Ibelowdot</td><td>0x1001eca</td><td>U+1ECA LATIN CAPITAL LETTER I WITH DOT BELOW</td></tr>
<tr><td>ibelowdot</td><td>0x1001ecb</td><td>U+1ECB LATIN SMALL LETTER I WITH DOT BELOW</td></tr>
<tr><td>Obelowdot</td><td>0x1001ecc</td><td>U+1ECC LATIN CAPITAL LETTER O WITH DOT BELOW</td></tr>
<tr><td>obelowdot</td><td>0x1001ecd</td><td>U+1ECD LATIN SMALL LETTER O WITH DOT BELOW</td></tr>
<tr><td>Ohook</td><td>0x1001ece</td><td>U+1ECE LATIN CAPITAL LETTER O WITH HOOK ABOVE</td></tr>
<tr><td>ohook</td><td>0x1001ecf</td><td>U+1ECF LATIN SMALL LETTER O WITH HOOK ABOVE</td></tr>
<tr><td>Ocircumflexacute</td><td>0x1001ed0</td><td>U+1ED0 LATIN CAPITAL LETTER O WITH CIRCUMFLEX AND ACUTE</td></tr>
<tr><td>ocircumflexacute</td><td>0x1001ed1</td><td>U+1ED1 LATIN SMALL LETTER O WITH CIRCUMFLEX AND ACUTE</td></tr>
<tr><td>Ocircumflexgrave</td><td>0x1001ed2</td><td>U+1ED2 LATIN CAPITAL LETTER O WITH CIRCUMFLEX AND GRAVE</td></tr>
<tr><td>ocircumflexgrave</td><td>0x1001ed3</td><td>U+1ED3 LATIN SMALL LETTER O WITH CIRCUMFLEX AND GRAVE</td></tr>
<tr><td>Ocircumflexhook</td><td>0x1001ed4</td><td>U+1ED4 LATIN CAPITAL LETTER O WITH CIRCUMFLEX AND HOOK ABOVE</td></tr>
<tr><td>ocircumflexhook</td><td>0x1001ed5</td><td>U+1ED5 LATIN SMALL LETTER O WITH CIRCUMFLEX AND HOOK ABOVE</td></tr>
<tr><td>Ocircumflextilde</td><td>0x1001ed6</td><td>U+1ED6 LATIN CAPITAL LETTER O WITH CIRCUMFLEX AND TILDE</td></tr>
<tr><td>ocircumflextilde</td><td>0x1001ed7</td><td>U+1ED7 LATIN SMALL LETTER O WITH CIRCUMFLEX AND TILDE</td></tr>
<tr><td>Ocircumflexbelowdot</td><td>0x1001ed8</td><td>U+1ED8 LATIN CAPITAL LETTER O WITH CIRCUMFLEX AND DOT BELOW</td></tr>
<tr><td>ocircumflexbelowdot</td><td>0x1001ed9</td><td>U+1ED9 LATIN SMALL LETTER O WITH CIRCUMFLEX AND DOT BELOW</td></tr>
<tr><td>Ohornacute</td><td>0x1001eda</td><td>U+1EDA LATIN CAPITAL LETTER O WITH HORN AND ACUTE</td></tr>
<tr><td>ohornacute</td><td>0x1001edb</td><td>U+1EDB LATIN SMALL LETTER O WITH HORN AND ACUTE</td></tr>
<tr><td>Ohorngrave</td><td>0x1001edc</td><td>U+1EDC LATIN CAPITAL LETTER O WITH HORN AND GRAVE</td></tr>
<tr><td>ohorngrave</td><td>0x1001edd</td><td>U+1EDD LATIN SMALL LETTER O WITH HORN AND GRAVE</td></tr>
<tr><td>Ohornhook</td><td>0x1001ede</td><td>U+1EDE LATIN CAPITAL LETTER O WITH HORN AND HOOK ABOVE</td></tr>
<tr><td>ohornhook</td><td>0x1001edf</td><td>U+1EDF LATIN SMALL LETTER O WITH HORN AND HOOK ABOVE</td></tr>
<tr><td>Ohorntilde</td><td>0x1001ee0</td><td>U+1EE0 LATIN CAPITAL LETTER O WITH HORN AND TILDE</td></tr>
<tr><td>ohorntilde</td><td>0x1001ee1</td><td>U+1EE1 LATIN SMALL LETTER O WITH HORN AND TILDE</td></tr>
<tr><td>Ohornbelowdot</td><td>0x1001ee2</td><td>U+1EE2 LATIN CAPITAL LETTER O WITH HORN AND DOT BELOW</td></tr>
<tr><td>ohornbelowdot</td><td>0x1001ee3</td><td>U+1EE3 LATIN SMALL LETTER O WITH HORN AND DOT BELOW</td></tr>
<tr><td>Ubelowdot</td><td>0x1001ee4</td><td>U+1EE4 LATIN CAPITAL LETTER U WITH DOT BELOW</td></tr>
<tr><td>ubelowdot</td><td>0x1001ee5</td><td>U+1EE5 LATIN SMALL LETTER U WITH DOT BELOW</td></tr>
<tr><td>Uhook</td><td>0x1001ee6</td><td>U+1EE6 LATIN CAPITAL LETTER U WITH HOOK ABOVE</td></tr>
<tr><td>uhook</td><td>0x1001ee7</td><td>U+1EE7 LATIN SMALL LETTER U WITH HOOK ABOVE</td></tr>
<tr><td>Uhornacute</td><td>0x1001ee8</td><td>U+1EE8 LATIN CAPITAL LETTER U WITH HORN AND ACUTE</td></tr>
<tr><td>uhornacute</td><td>0x1001ee9</td><td>U+1EE9 LATIN SMALL LETTER U WITH HORN AND ACUTE</td></tr>
<tr><td>Uhorngrave</td><td>0x1001eea</td><td>U+1EEA LATIN CAPITAL LETTER U WITH HORN AND GRAVE</td></tr>
<tr><td>uhorngrave</td><td>0x1001eeb</td><td>U+1EEB LATIN SMALL LETTER U WITH HORN AND GRAVE</td></tr>
<tr><td>Uhornhook</td><td>0x1001eec</td><td>U+1EEC LATIN CAPITAL LETTER U WITH HORN AND HOOK ABOVE</td></tr>
<tr><td>uhornhook</td><td>0x1001eed</td><td>U+1EED LATIN SMALL LETTER U WITH HORN AND HOOK ABOVE</td></tr>
<tr><td>Uhorntilde</td><td>0x1001eee</td><td>U+1EEE LATIN CAPITAL LETTER U WITH HORN AND TILDE</td></tr>
<tr><td>uhorntilde</td><td>0x1001eef</td><td>U+1EEF LATIN SMALL LETTER U WITH HORN AND TILDE</td></tr>
<tr><td>Uhornbelowdot</td><td>0x1001ef0</td><td>U+1EF0 LATIN CAPITAL LETTER U WITH HORN AND DOT BELOW</td></tr>
<tr><td>uhornbelowdot</td><td>0x1001ef1</td><td>U+1EF1 LATIN SMALL LETTER U WITH HORN AND DOT BELOW</td></tr>
<tr><td>Ybelowdot</td><td>0x1001ef4</td><td>U+1EF4 LATIN CAPITAL LETTER Y WITH DOT BELOW</td></tr>
<tr><td>ybelowdot</td><td>0x1001ef5</td><td>U+1EF5 LATIN SMALL LETTER Y WITH DOT BELOW</td></tr>
<tr><td>Yhook</td><td>0x1001ef6</td><td>U+1EF6 LATIN CAPITAL LETTER Y WITH HOOK ABOVE</td></tr>
<tr><td>yhook</td><td>0x1001ef7</td><td>U+1EF7 LATIN SMALL LETTER Y WITH HOOK ABOVE</td></tr>
<tr><td>Ytilde</td><td>0x1001ef8</td><td>U+1EF8 LATIN CAPITAL LETTER Y WITH TILDE</td></tr>
<tr><td>ytilde</td><td>0x1001ef9</td><td>U+1EF9 LATIN SMALL LETTER Y WITH TILDE</td></tr>
<tr><td>Ohorn</td><td>0x10001a0</td><td>U+01A0 LATIN CAPITAL LETTER O WITH HORN</td></tr>
<tr><td>ohorn</td><td>0x10001a1</td><td>U+01A1 LATIN SMALL LETTER O WITH HORN</td></tr>
<tr><td>Uhorn</td><td>0x10001af</td><td>U+01AF LATIN CAPITAL LETTER U WITH HORN</td></tr>
<tr><td>uhorn</td><td>0x10001b0</td><td>U+01B0 LATIN SMALL LETTER U WITH HORN</td></tr>
<tr><td>EcuSign</td><td>0x10020a0</td><td>U+20A0 EURO-CURRENCY SIGN</td></tr>
<tr><td>ColonSign</td><td>0x10020a1</td><td>U+20A1 COLON SIGN</td></tr>
<tr><td>CruzeiroSign</td><td>0x10020a2</td><td>U+20A2 CRUZEIRO SIGN</td></tr>
<tr><td>FFrancSign</td><td>0x10020a3</td><td>U+20A3 FRENCH FRANC SIGN</td></tr>
<tr><td>LiraSign</td><td>0x10020a4</td><td>U+20A4 LIRA SIGN</td></tr>
<tr><td>MillSign</td><td>0x10020a5</td><td>U+20A5 MILL SIGN</td></tr>
<tr><td>NairaSign</td><td>0x10020a6</td><td>U+20A6 NAIRA SIGN</td></tr>
<tr><td>PesetaSign</td><td>0x10020a7</td><td>U+20A7 PESETA SIGN</td></tr>
<tr><td>RupeeSign</td><td>0x10020a8</td><td>U+20A8 RUPEE SIGN</td></tr>
<tr><td>WonSign</td><td>0x10020a9</td><td>U+20A9 WON SIGN</td></tr>
<tr><td>NewSheqelSign</td><td>0x10020aa</td><td>U+20AA NEW SHEQEL SIGN</td></tr>
<tr><td>DongSign</td><td>0x10020ab</td><td>U+20AB DONG SIGN</td></tr>
<tr><td>EuroSign</td><td>0x20ac</td><td>U+20AC EURO SIGN</td></tr>
<tr><td>zerosuperior</td><td>0x1002070</td><td>U+2070 SUPERSCRIPT ZERO</td></tr>
<tr><td>foursuperior</td><td>0x1002074</td><td>U+2074 SUPERSCRIPT FOUR</td></tr>
<tr><td>fivesuperior</td><td>0x1002075</td><td>U+2075 SUPERSCRIPT FIVE</td></tr>
<tr><td>sixsuperior</td><td>0x1002076</td><td>U+2076 SUPERSCRIPT SIX</td></tr>
<tr><td>sevensuperior</td><td>0x1002077</td><td>U+2077 SUPERSCRIPT SEVEN</td></tr>
<tr><td>eightsuperior</td><td>0x1002078</td><td>U+2078 SUPERSCRIPT EIGHT</td></tr>
<tr><td>ninesuperior</td><td>0x1002079</td><td>U+2079 SUPERSCRIPT NINE</td></tr>
<tr><td>zerosubscript</td><td>0x1002080</td><td>U+2080 SUBSCRIPT ZERO</td></tr>
<tr><td>onesubscript</td><td>0x1002081</td><td>U+2081 SUBSCRIPT ONE</td></tr>
<tr><td>twosubscript</td><td>0x1002082</td><td>U+2082 SUBSCRIPT TWO</td></tr>
<tr><td>threesubscript</td><td>0x1002083</td><td>U+2083 SUBSCRIPT THREE</td></tr>
<tr><td>foursubscript</td><td>0x1002084</td><td>U+2084 SUBSCRIPT FOUR</td></tr>
<tr><td>fivesubscript</td><td>0x1002085</td><td>U+2085 SUBSCRIPT FIVE</td></tr>
<tr><td>sixsubscript</td><td>0x1002086</td><td>U+2086 SUBSCRIPT SIX</td></tr>
<tr><td>sevensubscript</td><td>0x1002087</td><td>U+2087 SUBSCRIPT SEVEN</td></tr>
<tr><td>eightsubscript</td><td>0x1002088</td><td>U+2088 SUBSCRIPT EIGHT</td></tr>
<tr><td>ninesubscript</td><td>0x1002089</td><td>U+2089 SUBSCRIPT NINE</td></tr>
<tr><td>partdifferential</td><td>0x1002202</td><td>U+2202 PARTIAL DIFFERENTIAL</td></tr>
<tr><td>emptyset</td><td>0x1002205</td><td>U+2205 NULL SET</td></tr>
<tr><td>elementof</td><td>0x1002208</td><td>U+2208 ELEMENT OF</td></tr>
<tr><td>notelementof</td><td>0x1002209</td><td>U+2209 NOT AN ELEMENT OF</td></tr>
<tr><td>containsas</td><td>0x100220B</td><td>U+220B CONTAINS AS MEMBER</td></tr>
<tr><td>squareroot</td><td>0x100221A</td><td>U+221A SQUARE ROOT</td></tr>
<tr><td>cuberoot</td><td>0x100221B</td><td>U+221B CUBE ROOT</td></tr>
<tr><td>fourthroot</td><td>0x100221C</td><td>U+221C FOURTH ROOT</td></tr>
<tr><td>dintegral</td><td>0x100222C</td><td>U+222C DOUBLE INTEGRAL</td></tr>
<tr><td>tintegral</td><td>0x100222D</td><td>U+222D TRIPLE INTEGRAL</td></tr>
<tr><td>because</td><td>0x1002235</td><td>U+2235 BECAUSE</td></tr>
<tr><td>approxeq</td><td>0x1002248</td><td>U+2245 ALMOST EQUAL TO</td></tr>
<tr><td>notapproxeq</td><td>0x1002247</td><td>U+2247 NOT ALMOST EQUAL TO</td></tr>
<tr><td>notidentical</td><td>0x1002262</td><td>U+2262 NOT IDENTICAL TO</td></tr>
<tr><td>stricteq</td><td>0x1002263</td><td>U+2263 STRICTLY EQUIVALENT TO</td></tr>
<tr><td>braille_dot_1</td><td>0xfff1</td><td>-</td></tr>
<tr><td>braille_dot_2</td><td>0xfff2</td><td>-</td></tr>
<tr><td>braille_dot_3</td><td>0xfff3</td><td>-</td></tr>
<tr><td>braille_dot_4</td><td>0xfff4</td><td>-</td></tr>
<tr><td>braille_dot_5</td><td>0xfff5</td><td>-</td></tr>
<tr><td>braille_dot_6</td><td>0xfff6</td><td>-</td></tr>
<tr><td>braille_dot_7</td><td>0xfff7</td><td>-</td></tr>
<tr><td>braille_dot_8</td><td>0xfff8</td><td>-</td></tr>
<tr><td>braille_dot_9</td><td>0xfff9</td><td>-</td></tr>
<tr><td>braille_dot_10</td><td>0xfffa</td><td>-</td></tr>
<tr><td>braille_blank</td><td>0x1002800</td><td>U+2800 BRAILLE PATTERN BLANK</td></tr>
<tr><td>braille_dots_1</td><td>0x1002801</td><td>U+2801 BRAILLE PATTERN DOTS-1</td></tr>
<tr><td>braille_dots_2</td><td>0x1002802</td><td>U+2802 BRAILLE PATTERN DOTS-2</td></tr>
<tr><td>braille_dots_12</td><td>0x1002803</td><td>U+2803 BRAILLE PATTERN DOTS-12</td></tr>
<tr><td>braille_dots_3</td><td>0x1002804</td><td>U+2804 BRAILLE PATTERN DOTS-3</td></tr>
<tr><td>braille_dots_13</td><td>0x1002805</td><td>U+2805 BRAILLE PATTERN DOTS-13</td></tr>
<tr><td>braille_dots_23</td><td>0x1002806</td><td>U+2806 BRAILLE PATTERN DOTS-23</td></tr>
<tr><td>braille_dots_123</td><td>0x1002807</td><td>U+2807 BRAILLE PATTERN DOTS-123</td></tr>
<tr><td>braille_dots_4</td><td>0x1002808</td><td>U+2808 BRAILLE PATTERN DOTS-4</td></tr>
<tr><td>braille_dots_14</td><td>0x1002809</td><td>U+2809 BRAILLE PATTERN DOTS-14</td></tr>
<tr><td>braille_dots_24</td><td>0x100280a</td><td>U+280a BRAILLE PATTERN DOTS-24</td></tr>
<tr><td>braille_dots_124</td><td>0x100280b</td><td>U+280b BRAILLE PATTERN DOTS-124</td></tr>
<tr><td>braille_dots_34</td><td>0x100280c</td><td>U+280c BRAILLE PATTERN DOTS-34</td></tr>
<tr><td>braille_dots_134</td><td>0x100280d</td><td>U+280d BRAILLE PATTERN DOTS-134</td></tr>
<tr><td>braille_dots_234</td><td>0x100280e</td><td>U+280e BRAILLE PATTERN DOTS-234</td></tr>
<tr><td>braille_dots_1234</td><td>0x100280f</td><td>U+280f BRAILLE PATTERN DOTS-1234</td></tr>
<tr><td>braille_dots_5</td><td>0x1002810</td><td>U+2810 BRAILLE PATTERN DOTS-5</td></tr>
<tr><td>braille_dots_15</td><td>0x1002811</td><td>U+2811 BRAILLE PATTERN DOTS-15</td></tr>
<tr><td>braille_dots_25</td><td>0x1002812</td><td>U+2812 BRAILLE PATTERN DOTS-25</td></tr>
<tr><td>braille_dots_125</td><td>0x1002813</td><td>U+2813 BRAILLE PATTERN DOTS-125</td></tr>
<tr><td>braille_dots_35</td><td>0x1002814</td><td>U+2814 BRAILLE PATTERN DOTS-35</td></tr>
<tr><td>braille_dots_135</td><td>0x1002815</td><td>U+2815 BRAILLE PATTERN DOTS-135</td></tr>
<tr><td>braille_dots_235</td><td>0x1002816</td><td>U+2816 BRAILLE PATTERN DOTS-235</td></tr>
<tr><td>braille_dots_1235</td><td>0x1002817</td><td>U+2817 BRAILLE PATTERN DOTS-1235</td></tr>
<tr><td>braille_dots_45</td><td>0x1002818</td><td>U+2818 BRAILLE PATTERN DOTS-45</td></tr>
<tr><td>braille_dots_145</td><td>0x1002819</td><td>U+2819 BRAILLE PATTERN DOTS-145</td></tr>
<tr><td>braille_dots_245</td><td>0x100281a</td><td>U+281a BRAILLE PATTERN DOTS-245</td></tr>
<tr><td>braille_dots_1245</td><td>0x100281b</td><td>U+281b BRAILLE PATTERN DOTS-1245</td></tr>
<tr><td>braille_dots_345</td><td>0x100281c</td><td>U+281c BRAILLE PATTERN DOTS-345</td></tr>
<tr><td>braille_dots_1345</td><td>0x100281d</td><td>U+281d BRAILLE PATTERN DOTS-1345</td></tr>
<tr><td>braille_dots_2345</td><td>0x100281e</td><td>U+281e BRAILLE PATTERN DOTS-2345</td></tr>
<tr><td>braille_dots_12345</td><td>0x100281f</td><td>U+281f BRAILLE PATTERN DOTS-12345</td></tr>
<tr><td>braille_dots_6</td><td>0x1002820</td><td>U+2820 BRAILLE PATTERN DOTS-6</td></tr>
<tr><td>braille_dots_16</td><td>0x1002821</td><td>U+2821 BRAILLE PATTERN DOTS-16</td></tr>
<tr><td>braille_dots_26</td><td>0x1002822</td><td>U+2822 BRAILLE PATTERN DOTS-26</td></tr>
<tr><td>braille_dots_126</td><td>0x1002823</td><td>U+2823 BRAILLE PATTERN DOTS-126</td></tr>
<tr><td>braille_dots_36</td><td>0x1002824</td><td>U+2824 BRAILLE PATTERN DOTS-36</td></tr>
<tr><td>braille_dots_136</td><td>0x1002825</td><td>U+2825 BRAILLE PATTERN DOTS-136</td></tr>
<tr><td>braille_dots_236</td><td>0x1002826</td><td>U+2826 BRAILLE PATTERN DOTS-236</td></tr>
<tr><td>braille_dots_1236</td><td>0x1002827</td><td>U+2827 BRAILLE PATTERN DOTS-1236</td></tr>
<tr><td>braille_dots_46</td><td>0x1002828</td><td>U+2828 BRAILLE PATTERN DOTS-46</td></tr>
<tr><td>braille_dots_146</td><td>0x1002829</td><td>U+2829 BRAILLE PATTERN DOTS-146</td></tr>
<tr><td>braille_dots_246</td><td>0x100282a</td><td>U+282a BRAILLE PATTERN DOTS-246</td></tr>
<tr><td>braille_dots_1246</td><td>0x100282b</td><td>U+282b BRAILLE PATTERN DOTS-1246</td></tr>
<tr><td>braille_dots_346</td><td>0x100282c</td><td>U+282c BRAILLE PATTERN DOTS-346</td></tr>
<tr><td>braille_dots_1346</td><td>0x100282d</td><td>U+282d BRAILLE PATTERN DOTS-1346</td></tr>
<tr><td>braille_dots_2346</td><td>0x100282e</td><td>U+282e BRAILLE PATTERN DOTS-2346</td></tr>
<tr><td>braille_dots_12346</td><td>0x100282f</td><td>U+282f BRAILLE PATTERN DOTS-12346</td></tr>
<tr><td>braille_dots_56</td><td>0x1002830</td><td>U+2830 BRAILLE PATTERN DOTS-56</td></tr>
<tr><td>braille_dots_156</td><td>0x1002831</td><td>U+2831 BRAILLE PATTERN DOTS-156</td></tr>
<tr><td>braille_dots_256</td><td>0x1002832</td><td>U+2832 BRAILLE PATTERN DOTS-256</td></tr>
<tr><td>braille_dots_1256</td><td>0x1002833</td><td>U+2833 BRAILLE PATTERN DOTS-1256</td></tr>
<tr><td>braille_dots_356</td><td>0x1002834</td><td>U+2834 BRAILLE PATTERN DOTS-356</td></tr>
<tr><td>braille_dots_1356</td><td>0x1002835</td><td>U+2835 BRAILLE PATTERN DOTS-1356</td></tr>
<tr><td>braille_dots_2356</td><td>0x1002836</td><td>U+2836 BRAILLE PATTERN DOTS-2356</td></tr>
<tr><td>braille_dots_12356</td><td>0x1002837</td><td>U+2837 BRAILLE PATTERN DOTS-12356</td></tr>
<tr><td>braille_dots_456</td><td>0x1002838</td><td>U+2838 BRAILLE PATTERN DOTS-456</td></tr>
<tr><td>braille_dots_1456</td><td>0x1002839</td><td>U+2839 BRAILLE PATTERN DOTS-1456</td></tr>
<tr><td>braille_dots_2456</td><td>0x100283a</td><td>U+283a BRAILLE PATTERN DOTS-2456</td></tr>
<tr><td>braille_dots_12456</td><td>0x100283b</td><td>U+283b BRAILLE PATTERN DOTS-12456</td></tr>
<tr><td>braille_dots_3456</td><td>0x100283c</td><td>U+283c BRAILLE PATTERN DOTS-3456</td></tr>
<tr><td>braille_dots_13456</td><td>0x100283d</td><td>U+283d BRAILLE PATTERN DOTS-13456</td></tr>
<tr><td>braille_dots_23456</td><td>0x100283e</td><td>U+283e BRAILLE PATTERN DOTS-23456</td></tr>
<tr><td>braille_dots_123456</td><td>0x100283f</td><td>U+283f BRAILLE PATTERN DOTS-123456</td></tr>
<tr><td>braille_dots_7</td><td>0x1002840</td><td>U+2840 BRAILLE PATTERN DOTS-7</td></tr>
<tr><td>braille_dots_17</td><td>0x1002841</td><td>U+2841 BRAILLE PATTERN DOTS-17</td></tr>
<tr><td>braille_dots_27</td><td>0x1002842</td><td>U+2842 BRAILLE PATTERN DOTS-27</td></tr>
<tr><td>braille_dots_127</td><td>0x1002843</td><td>U+2843 BRAILLE PATTERN DOTS-127</td></tr>
<tr><td>braille_dots_37</td><td>0x1002844</td><td>U+2844 BRAILLE PATTERN DOTS-37</td></tr>
<tr><td>braille_dots_137</td><td>0x1002845</td><td>U+2845 BRAILLE PATTERN DOTS-137</td></tr>
<tr><td>braille_dots_237</td><td>0x1002846</td><td>U+2846 BRAILLE PATTERN DOTS-237</td></tr>
<tr><td>braille_dots_1237</td><td>0x1002847</td><td>U+2847 BRAILLE PATTERN DOTS-1237</td></tr>
<tr><td>braille_dots_47</td><td>0x1002848</td><td>U+2848 BRAILLE PATTERN DOTS-47</td></tr>
<tr><td>braille_dots_147</td><td>0x1002849</td><td>U+2849 BRAILLE PATTERN DOTS-147</td></tr>
<tr><td>braille_dots_247</td><td>0x100284a</td><td>U+284a BRAILLE PATTERN DOTS-247</td></tr>
<tr><td>braille_dots_1247</td><td>0x100284b</td><td>U+284b BRAILLE PATTERN DOTS-1247</td></tr>
<tr><td>braille_dots_347</td><td>0x100284c</td><td>U+284c BRAILLE PATTERN DOTS-347</td></tr>
<tr><td>braille_dots_1347</td><td>0x100284d</td><td>U+284d BRAILLE PATTERN DOTS-1347</td></tr>
<tr><td>braille_dots_2347</td><td>0x100284e</td><td>U+284e BRAILLE PATTERN DOTS-2347</td></tr>
<tr><td>braille_dots_12347</td><td>0x100284f</td><td>U+284f BRAILLE PATTERN DOTS-12347</td></tr>
<tr><td>braille_dots_57</td><td>0x1002850</td><td>U+2850 BRAILLE PATTERN DOTS-57</td></tr>
<tr><td>braille_dots_157</td><td>0x1002851</td><td>U+2851 BRAILLE PATTERN DOTS-157</td></tr>
<tr><td>braille_dots_257</td><td>0x1002852</td><td>U+2852 BRAILLE PATTERN DOTS-257</td></tr>
<tr><td>braille_dots_1257</td><td>0x1002853</td><td>U+2853 BRAILLE PATTERN DOTS-1257</td></tr>
<tr><td>braille_dots_357</td><td>0x1002854</td><td>U+2854 BRAILLE PATTERN DOTS-357</td></tr>
<tr><td>braille_dots_1357</td><td>0x1002855</td><td>U+2855 BRAILLE PATTERN DOTS-1357</td></tr>
<tr><td>braille_dots_2357</td><td>0x1002856</td><td>U+2856 BRAILLE PATTERN DOTS-2357</td></tr>
<tr><td>braille_dots_12357</td><td>0x1002857</td><td>U+2857 BRAILLE PATTERN DOTS-12357</td></tr>
<tr><td>braille_dots_457</td><td>0x1002858</td><td>U+2858 BRAILLE PATTERN DOTS-457</td></tr>
<tr><td>braille_dots_1457</td><td>0x1002859</td><td>U+2859 BRAILLE PATTERN DOTS-1457</td></tr>
<tr><td>braille_dots_2457</td><td>0x100285a</td><td>U+285a BRAILLE PATTERN DOTS-2457</td></tr>
<tr><td>braille_dots_12457</td><td>0x100285b</td><td>U+285b BRAILLE PATTERN DOTS-12457</td></tr>
<tr><td>braille_dots_3457</td><td>0x100285c</td><td>U+285c BRAILLE PATTERN DOTS-3457</td></tr>
<tr><td>braille_dots_13457</td><td>0x100285d</td><td>U+285d BRAILLE PATTERN DOTS-13457</td></tr>
<tr><td>braille_dots_23457</td><td>0x100285e</td><td>U+285e BRAILLE PATTERN DOTS-23457</td></tr>
<tr><td>braille_dots_123457</td><td>0x100285f</td><td>U+285f BRAILLE PATTERN DOTS-123457</td></tr>
<tr><td>braille_dots_67</td><td>0x1002860</td><td>U+2860 BRAILLE PATTERN DOTS-67</td></tr>
<tr><td>braille_dots_167</td><td>0x1002861</td><td>U+2861 BRAILLE PATTERN DOTS-167</td></tr>
<tr><td>braille_dots_267</td><td>0x1002862</td><td>U+2862 BRAILLE PATTERN DOTS-267</td></tr>
<tr><td>braille_dots_1267</td><td>0x1002863</td><td>U+2863 BRAILLE PATTERN DOTS-1267</td></tr>
<tr><td>braille_dots_367</td><td>0x1002864</td><td>U+2864 BRAILLE PATTERN DOTS-367</td></tr>
<tr><td>braille_dots_1367</td><td>0x1002865</td><td>U+2865 BRAILLE PATTERN DOTS-1367</td></tr>
<tr><td>braille_dots_2367</td><td>0x1002866</td><td>U+2866 BRAILLE PATTERN DOTS-2367</td></tr>
<tr><td>braille_dots_12367</td><td>0x1002867</td><td>U+2867 BRAILLE PATTERN DOTS-12367</td></tr>
<tr><td>braille_dots_467</td><td>0x1002868</td><td>U+2868 BRAILLE PATTERN DOTS-467</td></tr>
<tr><td>braille_dots_1467</td><td>0x1002869</td><td>U+2869 BRAILLE PATTERN DOTS-1467</td></tr>
<tr><td>braille_dots_2467</td><td>0x100286a</td><td>U+286a BRAILLE PATTERN DOTS-2467</td></tr>
<tr><td>braille_dots_12467</td><td>0x100286b</td><td>U+286b BRAILLE PATTERN DOTS-12467</td></tr>
<tr><td>braille_dots_3467</td><td>0x100286c</td><td>U+286c BRAILLE PATTERN DOTS-3467</td></tr>
<tr><td>braille_dots_13467</td><td>0x100286d</td><td>U+286d BRAILLE PATTERN DOTS-13467</td></tr>
<tr><td>braille_dots_23467</td><td>0x100286e</td><td>U+286e BRAILLE PATTERN DOTS-23467</td></tr>
<tr><td>braille_dots_123467</td><td>0x100286f</td><td>U+286f BRAILLE PATTERN DOTS-123467</td></tr>
<tr><td>braille_dots_567</td><td>0x1002870</td><td>U+2870 BRAILLE PATTERN DOTS-567</td></tr>
<tr><td>braille_dots_1567</td><td>0x1002871</td><td>U+2871 BRAILLE PATTERN DOTS-1567</td></tr>
<tr><td>braille_dots_2567</td><td>0x1002872</td><td>U+2872 BRAILLE PATTERN DOTS-2567</td></tr>
<tr><td>braille_dots_12567</td><td>0x1002873</td><td>U+2873 BRAILLE PATTERN DOTS-12567</td></tr>
<tr><td>braille_dots_3567</td><td>0x1002874</td><td>U+2874 BRAILLE PATTERN DOTS-3567</td></tr>
<tr><td>braille_dots_13567</td><td>0x1002875</td><td>U+2875 BRAILLE PATTERN DOTS-13567</td></tr>
<tr><td>braille_dots_23567</td><td>0x1002876</td><td>U+2876 BRAILLE PATTERN DOTS-23567</td></tr>
<tr><td>braille_dots_123567</td><td>0x1002877</td><td>U+2877 BRAILLE PATTERN DOTS-123567</td></tr>
<tr><td>braille_dots_4567</td><td>0x1002878</td><td>U+2878 BRAILLE PATTERN DOTS-4567</td></tr>
<tr><td>braille_dots_14567</td><td>0x1002879</td><td>U+2879 BRAILLE PATTERN DOTS-14567</td></tr>
<tr><td>braille_dots_24567</td><td>0x100287a</td><td>U+287a BRAILLE PATTERN DOTS-24567</td></tr>
<tr><td>braille_dots_124567</td><td>0x100287b</td><td>U+287b BRAILLE PATTERN DOTS-124567</td></tr>
<tr><td>braille_dots_34567</td><td>0x100287c</td><td>U+287c BRAILLE PATTERN DOTS-34567</td></tr>
<tr><td>braille_dots_134567</td><td>0x100287d</td><td>U+287d BRAILLE PATTERN DOTS-134567</td></tr>
<tr><td>braille_dots_234567</td><td>0x100287e</td><td>U+287e BRAILLE PATTERN DOTS-234567</td></tr>
<tr><td>braille_dots_1234567</td><td>0x100287f</td><td>U+287f BRAILLE PATTERN DOTS-1234567</td></tr>
<tr><td>braille_dots_8</td><td>0x1002880</td><td>U+2880 BRAILLE PATTERN DOTS-8</td></tr>
<tr><td>braille_dots_18</td><td>0x1002881</td><td>U+2881 BRAILLE PATTERN DOTS-18</td></tr>
<tr><td>braille_dots_28</td><td>0x1002882</td><td>U+2882 BRAILLE PATTERN DOTS-28</td></tr>
<tr><td>braille_dots_128</td><td>0x1002883</td><td>U+2883 BRAILLE PATTERN DOTS-128</td></tr>
<tr><td>braille_dots_38</td><td>0x1002884</td><td>U+2884 BRAILLE PATTERN DOTS-38</td></tr>
<tr><td>braille_dots_138</td><td>0x1002885</td><td>U+2885 BRAILLE PATTERN DOTS-138</td></tr>
<tr><td>braille_dots_238</td><td>0x1002886</td><td>U+2886 BRAILLE PATTERN DOTS-238</td></tr>
<tr><td>braille_dots_1238</td><td>0x1002887</td><td>U+2887 BRAILLE PATTERN DOTS-1238</td></tr>
<tr><td>braille_dots_48</td><td>0x1002888</td><td>U+2888 BRAILLE PATTERN DOTS-48</td></tr>
<tr><td>braille_dots_148</td><td>0x1002889</td><td>U+2889 BRAILLE PATTERN DOTS-148</td></tr>
<tr><td>braille_dots_248</td><td>0x100288a</td><td>U+288a BRAILLE PATTERN DOTS-248</td></tr>
<tr><td>braille_dots_1248</td><td>0x100288b</td><td>U+288b BRAILLE PATTERN DOTS-1248</td></tr>
<tr><td>braille_dots_348</td><td>0x100288c</td><td>U+288c BRAILLE PATTERN DOTS-348</td></tr>
<tr><td>braille_dots_1348</td><td>0x100288d</td><td>U+288d BRAILLE PATTERN DOTS-1348</td></tr>
<tr><td>braille_dots_2348</td><td>0x100288e</td><td>U+288e BRAILLE PATTERN DOTS-2348</td></tr>
<tr><td>braille_dots_12348</td><td>0x100288f</td><td>U+288f BRAILLE PATTERN DOTS-12348</td></tr>
<tr><td>braille_dots_58</td><td>0x1002890</td><td>U+2890 BRAILLE PATTERN DOTS-58</td></tr>
<tr><td>braille_dots_158</td><td>0x1002891</td><td>U+2891 BRAILLE PATTERN DOTS-158</td></tr>
<tr><td>braille_dots_258</td><td>0x1002892</td><td>U+2892 BRAILLE PATTERN DOTS-258</td></tr>
<tr><td>braille_dots_1258</td><td>0x1002893</td><td>U+2893 BRAILLE PATTERN DOTS-1258</td></tr>
<tr><td>braille_dots_358</td><td>0x1002894</td><td>U+2894 BRAILLE PATTERN DOTS-358</td></tr>
<tr><td>braille_dots_1358</td><td>0x1002895</td><td>U+2895 BRAILLE PATTERN DOTS-1358</td></tr>
<tr><td>braille_dots_2358</td><td>0x1002896</td><td>U+2896 BRAILLE PATTERN DOTS-2358</td></tr>
<tr><td>braille_dots_12358</td><td>0x1002897</td><td>U+2897 BRAILLE PATTERN DOTS-12358</td></tr>
<tr><td>braille_dots_458</td><td>0x1002898</td><td>U+2898 BRAILLE PATTERN DOTS-458</td></tr>
<tr><td>braille_dots_1458</td><td>0x1002899</td><td>U+2899 BRAILLE PATTERN DOTS-1458</td></tr>
<tr><td>braille_dots_2458</td><td>0x100289a</td><td>U+289a BRAILLE PATTERN DOTS-2458</td></tr>
<tr><td>braille_dots_12458</td><td>0x100289b</td><td>U+289b BRAILLE PATTERN DOTS-12458</td></tr>
<tr><td>braille_dots_3458</td><td>0x100289c</td><td>U+289c BRAILLE PATTERN DOTS-3458</td></tr>
<tr><td>braille_dots_13458</td><td>0x100289d</td><td>U+289d BRAILLE PATTERN DOTS-13458</td></tr>
<tr><td>braille_dots_23458</td><td>0x100289e</td><td>U+289e BRAILLE PATTERN DOTS-23458</td></tr>
<tr><td>braille_dots_123458</td><td>0x100289f</td><td>U+289f BRAILLE PATTERN DOTS-123458</td></tr>
<tr><td>braille_dots_68</td><td>0x10028a0</td><td>U+28a0 BRAILLE PATTERN DOTS-68</td></tr>
<tr><td>braille_dots_168</td><td>0x10028a1</td><td>U+28a1 BRAILLE PATTERN DOTS-168</td></tr>
<tr><td>braille_dots_268</td><td>0x10028a2</td><td>U+28a2 BRAILLE PATTERN DOTS-268</td></tr>
<tr><td>braille_dots_1268</td><td>0x10028a3</td><td>U+28a3 BRAILLE PATTERN DOTS-1268</td></tr>
<tr><td>braille_dots_368</td><td>0x10028a4</td><td>U+28a4 BRAILLE PATTERN DOTS-368</td></tr>
<tr><td>braille_dots_1368</td><td>0x10028a5</td><td>U+28a5 BRAILLE PATTERN DOTS-1368</td></tr>
<tr><td>braille_dots_2368</td><td>0x10028a6</td><td>U+28a6 BRAILLE PATTERN DOTS-2368</td></tr>
<tr><td>braille_dots_12368</td><td>0x10028a7</td><td>U+28a7 BRAILLE PATTERN DOTS-12368</td></tr>
<tr><td>braille_dots_468</td><td>0x10028a8</td><td>U+28a8 BRAILLE PATTERN DOTS-468</td></tr>
<tr><td>braille_dots_1468</td><td>0x10028a9</td><td>U+28a9 BRAILLE PATTERN DOTS-1468</td></tr>
<tr><td>braille_dots_2468</td><td>0x10028aa</td><td>U+28aa BRAILLE PATTERN DOTS-2468</td></tr>
<tr><td>braille_dots_12468</td><td>0x10028ab</td><td>U+28ab BRAILLE PATTERN DOTS-12468</td></tr>
<tr><td>braille_dots_3468</td><td>0x10028ac</td><td>U+28ac BRAILLE PATTERN DOTS-3468</td></tr>
<tr><td>braille_dots_13468</td><td>0x10028ad</td><td>U+28ad BRAILLE PATTERN DOTS-13468</td></tr>
<tr><td>braille_dots_23468</td><td>0x10028ae</td><td>U+28ae BRAILLE PATTERN DOTS-23468</td></tr>
<tr><td>braille_dots_123468</td><td>0x10028af</td><td>U+28af BRAILLE PATTERN DOTS-123468</td></tr>
<tr><td>braille_dots_568</td><td>0x10028b0</td><td>U+28b0 BRAILLE PATTERN DOTS-568</td></tr>
<tr><td>braille_dots_1568</td><td>0x10028b1</td><td>U+28b1 BRAILLE PATTERN DOTS-1568</td></tr>
<tr><td>braille_dots_2568</td><td>0x10028b2</td><td>U+28b2 BRAILLE PATTERN DOTS-2568</td></tr>
<tr><td>braille_dots_12568</td><td>0x10028b3</td><td>U+28b3 BRAILLE PATTERN DOTS-12568</td></tr>
<tr><td>braille_dots_3568</td><td>0x10028b4</td><td>U+28b4 BRAILLE PATTERN DOTS-3568</td></tr>
<tr><td>braille_dots_13568</td><td>0x10028b5</td><td>U+28b5 BRAILLE PATTERN DOTS-13568</td></tr>
<tr><td>braille_dots_23568</td><td>0x10028b6</td><td>U+28b6 BRAILLE PATTERN DOTS-23568</td></tr>
<tr><td>braille_dots_123568</td><td>0x10028b7</td><td>U+28b7 BRAILLE PATTERN DOTS-123568</td></tr>
<tr><td>braille_dots_4568</td><td>0x10028b8</td><td>U+28b8 BRAILLE PATTERN DOTS-4568</td></tr>
<tr><td>braille_dots_14568</td><td>0x10028b9</td><td>U+28b9 BRAILLE PATTERN DOTS-14568</td></tr>
<tr><td>braille_dots_24568</td><td>0x10028ba</td><td>U+28ba BRAILLE PATTERN DOTS-24568</td></tr>
<tr><td>braille_dots_124568</td><td>0x10028bb</td><td>U+28bb BRAILLE PATTERN DOTS-124568</td></tr>
<tr><td>braille_dots_34568</td><td>0x10028bc</td><td>U+28bc BRAILLE PATTERN DOTS-34568</td></tr>
<tr><td>braille_dots_134568</td><td>0x10028bd</td><td>U+28bd BRAILLE PATTERN DOTS-134568</td></tr>
<tr><td>braille_dots_234568</td><td>0x10028be</td><td>U+28be BRAILLE PATTERN DOTS-234568</td></tr>
<tr><td>braille_dots_1234568</td><td>0x10028bf</td><td>U+28bf BRAILLE PATTERN DOTS-1234568</td></tr>
<tr><td>braille_dots_78</td><td>0x10028c0</td><td>U+28c0 BRAILLE PATTERN DOTS-78</td></tr>
<tr><td>braille_dots_178</td><td>0x10028c1</td><td>U+28c1 BRAILLE PATTERN DOTS-178</td></tr>
<tr><td>braille_dots_278</td><td>0x10028c2</td><td>U+28c2 BRAILLE PATTERN DOTS-278</td></tr>
<tr><td>braille_dots_1278</td><td>0x10028c3</td><td>U+28c3 BRAILLE PATTERN DOTS-1278</td></tr>
<tr><td>braille_dots_378</td><td>0x10028c4</td><td>U+28c4 BRAILLE PATTERN DOTS-378</td></tr>
<tr><td>braille_dots_1378</td><td>0x10028c5</td><td>U+28c5 BRAILLE PATTERN DOTS-1378</td></tr>
<tr><td>braille_dots_2378</td><td>0x10028c6</td><td>U+28c6 BRAILLE PATTERN DOTS-2378</td></tr>
<tr><td>braille_dots_12378</td><td>0x10028c7</td><td>U+28c7 BRAILLE PATTERN DOTS-12378</td></tr>
<tr><td>braille_dots_478</td><td>0x10028c8</td><td>U+28c8 BRAILLE PATTERN DOTS-478</td></tr>
<tr><td>braille_dots_1478</td><td>0x10028c9</td><td>U+28c9 BRAILLE PATTERN DOTS-1478</td></tr>
<tr><td>braille_dots_2478</td><td>0x10028ca</td><td>U+28ca BRAILLE PATTERN DOTS-2478</td></tr>
<tr><td>braille_dots_12478</td><td>0x10028cb</td><td>U+28cb BRAILLE PATTERN DOTS-12478</td></tr>
<tr><td>braille_dots_3478</td><td>0x10028cc</td><td>U+28cc BRAILLE PATTERN DOTS-3478</td></tr>
<tr><td>braille_dots_13478</td><td>0x10028cd</td><td>U+28cd BRAILLE PATTERN DOTS-13478</td></tr>
<tr><td>braille_dots_23478</td><td>0x10028ce</td><td>U+28ce BRAILLE PATTERN DOTS-23478</td></tr>
<tr><td>braille_dots_123478</td><td>0x10028cf</td><td>U+28cf BRAILLE PATTERN DOTS-123478</td></tr>
<tr><td>braille_dots_578</td><td>0x10028d0</td><td>U+28d0 BRAILLE PATTERN DOTS-578</td></tr>
<tr><td>braille_dots_1578</td><td>0x10028d1</td><td>U+28d1 BRAILLE PATTERN DOTS-1578</td></tr>
<tr><td>braille_dots_2578</td><td>0x10028d2</td><td>U+28d2 BRAILLE PATTERN DOTS-2578</td></tr>
<tr><td>braille_dots_12578</td><td>0x10028d3</td><td>U+28d3 BRAILLE PATTERN DOTS-12578</td></tr>
<tr><td>braille_dots_3578</td><td>0x10028d4</td><td>U+28d4 BRAILLE PATTERN DOTS-3578</td></tr>
<tr><td>braille_dots_13578</td><td>0x10028d5</td><td>U+28d5 BRAILLE PATTERN DOTS-13578</td></tr>
<tr><td>braille_dots_23578</td><td>0x10028d6</td><td>U+28d6 BRAILLE PATTERN DOTS-23578</td></tr>
<tr><td>braille_dots_123578</td><td>0x10028d7</td><td>U+28d7 BRAILLE PATTERN DOTS-123578</td></tr>
<tr><td>braille_dots_4578</td><td>0x10028d8</td><td>U+28d8 BRAILLE PATTERN DOTS-4578</td></tr>
<tr><td>braille_dots_14578</td><td>0x10028d9</td><td>U+28d9 BRAILLE PATTERN DOTS-14578</td></tr>
<tr><td>braille_dots_24578</td><td>0x10028da</td><td>U+28da BRAILLE PATTERN DOTS-24578</td></tr>
<tr><td>braille_dots_124578</td><td>0x10028db</td><td>U+28db BRAILLE PATTERN DOTS-124578</td></tr>
<tr><td>braille_dots_34578</td><td>0x10028dc</td><td>U+28dc BRAILLE PATTERN DOTS-34578</td></tr>
<tr><td>braille_dots_134578</td><td>0x10028dd</td><td>U+28dd BRAILLE PATTERN DOTS-134578</td></tr>
<tr><td>braille_dots_234578</td><td>0x10028de</td><td>U+28de BRAILLE PATTERN DOTS-234578</td></tr>
<tr><td>braille_dots_1234578</td><td>0x10028df</td><td>U+28df BRAILLE PATTERN DOTS-1234578</td></tr>
<tr><td>braille_dots_678</td><td>0x10028e0</td><td>U+28e0 BRAILLE PATTERN DOTS-678</td></tr>
<tr><td>braille_dots_1678</td><td>0x10028e1</td><td>U+28e1 BRAILLE PATTERN DOTS-1678</td></tr>
<tr><td>braille_dots_2678</td><td>0x10028e2</td><td>U+28e2 BRAILLE PATTERN DOTS-2678</td></tr>
<tr><td>braille_dots_12678</td><td>0x10028e3</td><td>U+28e3 BRAILLE PATTERN DOTS-12678</td></tr>
<tr><td>braille_dots_3678</td><td>0x10028e4</td><td>U+28e4 BRAILLE PATTERN DOTS-3678</td></tr>
<tr><td>braille_dots_13678</td><td>0x10028e5</td><td>U+28e5 BRAILLE PATTERN DOTS-13678</td></tr>
<tr><td>braille_dots_23678</td><td>0x10028e6</td><td>U+28e6 BRAILLE PATTERN DOTS-23678</td></tr>
<tr><td>braille_dots_123678</td><td>0x10028e7</td><td>U+28e7 BRAILLE PATTERN DOTS-123678</td></tr>
<tr><td>braille_dots_4678</td><td>0x10028e8</td><td>U+28e8 BRAILLE PATTERN DOTS-4678</td></tr>
<tr><td>braille_dots_14678</td><td>0x10028e9</td><td>U+28e9 BRAILLE PATTERN DOTS-14678</td></tr>
<tr><td>braille_dots_24678</td><td>0x10028ea</td><td>U+28ea BRAILLE PATTERN DOTS-24678</td></tr>
<tr><td>braille_dots_124678</td><td>0x10028eb</td><td>U+28eb BRAILLE PATTERN DOTS-124678</td></tr>
<tr><td>braille_dots_34678</td><td>0x10028ec</td><td>U+28ec BRAILLE PATTERN DOTS-34678</td></tr>
<tr><td>braille_dots_134678</td><td>0x10028ed</td><td>U+28ed BRAILLE PATTERN DOTS-134678</td></tr>
<tr><td>braille_dots_234678</td><td>0x10028ee</td><td>U+28ee BRAILLE PATTERN DOTS-234678</td></tr>
<tr><td>braille_dots_1234678</td><td>0x10028ef</td><td>U+28ef BRAILLE PATTERN DOTS-1234678</td></tr>
<tr><td>braille_dots_5678</td><td>0x10028f0</td><td>U+28f0 BRAILLE PATTERN DOTS-5678</td></tr>
<tr><td>braille_dots_15678</td><td>0x10028f1</td><td>U+28f1 BRAILLE PATTERN DOTS-15678</td></tr>
<tr><td>braille_dots_25678</td><td>0x10028f2</td><td>U+28f2 BRAILLE PATTERN DOTS-25678</td></tr>
<tr><td>braille_dots_125678</td><td>0x10028f3</td><td>U+28f3 BRAILLE PATTERN DOTS-125678</td></tr>
<tr><td>braille_dots_35678</td><td>0x10028f4</td><td>U+28f4 BRAILLE PATTERN DOTS-35678</td></tr>
<tr><td>braille_dots_135678</td><td>0x10028f5</td><td>U+28f5 BRAILLE PATTERN DOTS-135678</td></tr>
<tr><td>braille_dots_235678</td><td>0x10028f6</td><td>U+28f6 BRAILLE PATTERN DOTS-235678</td></tr>
<tr><td>braille_dots_1235678</td><td>0x10028f7</td><td>U+28f7 BRAILLE PATTERN DOTS-1235678</td></tr>
<tr><td>braille_dots_45678</td><td>0x10028f8</td><td>U+28f8 BRAILLE PATTERN DOTS-45678</td></tr>
<tr><td>braille_dots_145678</td><td>0x10028f9</td><td>U+28f9 BRAILLE PATTERN DOTS-145678</td></tr>
<tr><td>braille_dots_245678</td><td>0x10028fa</td><td>U+28fa BRAILLE PATTERN DOTS-245678</td></tr>
<tr><td>braille_dots_1245678</td><td>0x10028fb</td><td>U+28fb BRAILLE PATTERN DOTS-1245678</td></tr>
<tr><td>braille_dots_345678</td><td>0x10028fc</td><td>U+28fc BRAILLE PATTERN DOTS-345678</td></tr>
<tr><td>braille_dots_1345678</td><td>0x10028fd</td><td>U+28fd BRAILLE PATTERN DOTS-1345678</td></tr>
<tr><td>braille_dots_2345678</td><td>0x10028fe</td><td>U+28fe BRAILLE PATTERN DOTS-2345678</td></tr>
<tr><td>braille_dots_12345678</td><td>0x10028ff</td><td>U+28ff BRAILLE PATTERN DOTS-12345678</td></tr>
<tr><td>Sinh_ng</td><td>0x1000d82</td><td>U+0D82 SINHALA ANUSVARAYA</td></tr>
<tr><td>Sinh_h2</td><td>0x1000d83</td><td>U+0D83 SINHALA VISARGAYA</td></tr>
<tr><td>Sinh_a</td><td>0x1000d85</td><td>U+0D85 SINHALA AYANNA</td></tr>
<tr><td>Sinh_aa</td><td>0x1000d86</td><td>U+0D86 SINHALA AAYANNA</td></tr>
<tr><td>Sinh_ae</td><td>0x1000d87</td><td>U+0D87 SINHALA AEYANNA</td></tr>
<tr><td>Sinh_aee</td><td>0x1000d88</td><td>U+0D88 SINHALA AEEYANNA</td></tr>
<tr><td>Sinh_i</td><td>0x1000d89</td><td>U+0D89 SINHALA IYANNA</td></tr>
<tr><td>Sinh_ii</td><td>0x1000d8a</td><td>U+0D8A SINHALA IIYANNA</td></tr>
<tr><td>Sinh_u</td><td>0x1000d8b</td><td>U+0D8B SINHALA UYANNA</td></tr>
<tr><td>Sinh_uu</td><td>0x1000d8c</td><td>U+0D8C SINHALA UUYANNA</td></tr>
<tr><td>Sinh_ri</td><td>0x1000d8d</td><td>U+0D8D SINHALA IRUYANNA</td></tr>
<tr><td>Sinh_rii</td><td>0x1000d8e</td><td>U+0D8E SINHALA IRUUYANNA</td></tr>
<tr><td>Sinh_lu</td><td>0x1000d8f</td><td>U+0D8F SINHALA ILUYANNA</td></tr>
<tr><td>Sinh_luu</td><td>0x1000d90</td><td>U+0D90 SINHALA ILUUYANNA</td></tr>
<tr><td>Sinh_e</td><td>0x1000d91</td><td>U+0D91 SINHALA EYANNA</td></tr>
<tr><td>Sinh_ee</td><td>0x1000d92</td><td>U+0D92 SINHALA EEYANNA</td></tr>
<tr><td>Sinh_ai</td><td>0x1000d93</td><td>U+0D93 SINHALA AIYANNA</td></tr>
<tr><td>Sinh_o</td><td>0x1000d94</td><td>U+0D94 SINHALA OYANNA</td></tr>
<tr><td>Sinh_oo</td><td>0x1000d95</td><td>U+0D95 SINHALA OOYANNA</td></tr>
<tr><td>Sinh_au</td><td>0x1000d96</td><td>U+0D96 SINHALA AUYANNA</td></tr>
<tr><td>Sinh_ka</td><td>0x1000d9a</td><td>U+0D9A SINHALA KAYANNA</td></tr>
<tr><td>Sinh_kha</td><td>0x1000d9b</td><td>U+0D9B SINHALA MAHA. KAYANNA</td></tr>
<tr><td>Sinh_ga</td><td>0x1000d9c</td><td>U+0D9C SINHALA GAYANNA</td></tr>
<tr><td>Sinh_gha</td><td>0x1000d9d</td><td>U+0D9D SINHALA MAHA. GAYANNA</td></tr>
<tr><td>Sinh_ng2</td><td>0x1000d9e</td><td>U+0D9E SINHALA KANTAJA NAASIKYAYA</td></tr>
<tr><td>Sinh_nga</td><td>0x1000d9f</td><td>U+0D9F SINHALA SANYAKA GAYANNA</td></tr>
<tr><td>Sinh_ca</td><td>0x1000da0</td><td>U+0DA0 SINHALA CAYANNA</td></tr>
<tr><td>Sinh_cha</td><td>0x1000da1</td><td>U+0DA1 SINHALA MAHA. CAYANNA</td></tr>
<tr><td>Sinh_ja</td><td>0x1000da2</td><td>U+0DA2 SINHALA JAYANNA</td></tr>
<tr><td>Sinh_jha</td><td>0x1000da3</td><td>U+0DA3 SINHALA MAHA. JAYANNA</td></tr>
<tr><td>Sinh_nya</td><td>0x1000da4</td><td>U+0DA4 SINHALA TAALUJA NAASIKYAYA</td></tr>
<tr><td>Sinh_jnya</td><td>0x1000da5</td><td>U+0DA5 SINHALA TAALUJA SANYOOGA NAASIKYAYA</td></tr>
<tr><td>Sinh_nja</td><td>0x1000da6</td><td>U+0DA6 SINHALA SANYAKA JAYANNA</td></tr>
<tr><td>Sinh_tta</td><td>0x1000da7</td><td>U+0DA7 SINHALA TTAYANNA</td></tr>
<tr><td>Sinh_ttha</td><td>0x1000da8</td><td>U+0DA8 SINHALA MAHA. TTAYANNA</td></tr>
<tr><td>Sinh_dda</td><td>0x1000da9</td><td>U+0DA9 SINHALA DDAYANNA</td></tr>
<tr><td>Sinh_ddha</td><td>0x1000daa</td><td>U+0DAA SINHALA MAHA. DDAYANNA</td></tr>
<tr><td>Sinh_nna</td><td>0x1000dab</td><td>U+0DAB SINHALA MUURDHAJA NAYANNA</td></tr>
<tr><td>Sinh_ndda</td><td>0x1000dac</td><td>U+0DAC SINHALA SANYAKA DDAYANNA</td></tr>
<tr><td>Sinh_tha</td><td>0x1000dad</td><td>U+0DAD SINHALA TAYANNA</td></tr>
<tr><td>Sinh_thha</td><td>0x1000dae</td><td>U+0DAE SINHALA MAHA. TAYANNA</td></tr>
<tr><td>Sinh_dha</td><td>0x1000daf</td><td>U+0DAF SINHALA DAYANNA</td></tr>
<tr><td>Sinh_dhha</td><td>0x1000db0</td><td>U+0DB0 SINHALA MAHA. DAYANNA</td></tr>
<tr><td>Sinh_na</td><td>0x1000db1</td><td>U+0DB1 SINHALA DANTAJA NAYANNA</td></tr>
<tr><td>Sinh_ndha</td><td>0x1000db3</td><td>U+0DB3 SINHALA SANYAKA DAYANNA</td></tr>
<tr><td>Sinh_pa</td><td>0x1000db4</td><td>U+0DB4 SINHALA PAYANNA</td></tr>
<tr><td>Sinh_pha</td><td>0x1000db5</td><td>U+0DB5 SINHALA MAHA. PAYANNA</td></tr>
<tr><td>Sinh_ba</td><td>0x1000db6</td><td>U+0DB6 SINHALA BAYANNA</td></tr>
<tr><td>Sinh_bha</td><td>0x1000db7</td><td>U+0DB7 SINHALA MAHA. BAYANNA</td></tr>
<tr><td>Sinh_ma</td><td>0x1000db8</td><td>U+0DB8 SINHALA MAYANNA</td></tr>
<tr><td>Sinh_mba</td><td>0x1000db9</td><td>U+0DB9 SINHALA AMBA BAYANNA</td></tr>
<tr><td>Sinh_ya</td><td>0x1000dba</td><td>U+0DBA SINHALA YAYANNA</td></tr>
<tr><td>Sinh_ra</td><td>0x1000dbb</td><td>U+0DBB SINHALA RAYANNA</td></tr>
<tr><td>Sinh_la</td><td>0x1000dbd</td><td>U+0DBD SINHALA DANTAJA LAYANNA</td></tr>
<tr><td>Sinh_va</td><td>0x1000dc0</td><td>U+0DC0 SINHALA VAYANNA</td></tr>
<tr><td>Sinh_sha</td><td>0x1000dc1</td><td>U+0DC1 SINHALA TAALUJA SAYANNA</td></tr>
<tr><td>Sinh_ssha</td><td>0x1000dc2</td><td>U+0DC2 SINHALA MUURDHAJA SAYANNA</td></tr>
<tr><td>Sinh_sa</td><td>0x1000dc3</td><td>U+0DC3 SINHALA DANTAJA SAYANNA</td></tr>
<tr><td>Sinh_ha</td><td>0x1000dc4</td><td>U+0DC4 SINHALA HAYANNA</td></tr>
<tr><td>Sinh_lla</td><td>0x1000dc5</td><td>U+0DC5 SINHALA MUURDHAJA LAYANNA</td></tr>
<tr><td>Sinh_fa</td><td>0x1000dc6</td><td>U+0DC6 SINHALA FAYANNA</td></tr>
<tr><td>Sinh_al</td><td>0x1000dca</td><td>U+0DCA SINHALA AL-LAKUNA</td></tr>
<tr><td>Sinh_aa2</td><td>0x1000dcf</td><td>U+0DCF SINHALA AELA-PILLA</td></tr>
<tr><td>Sinh_ae2</td><td>0x1000dd0</td><td>U+0DD0 SINHALA AEDA-PILLA</td></tr>
<tr><td>Sinh_aee2</td><td>0x1000dd1</td><td>U+0DD1 SINHALA DIGA AEDA-PILLA</td></tr>
<tr><td>Sinh_i2</td><td>0x1000dd2</td><td>U+0DD2 SINHALA IS-PILLA</td></tr>
<tr><td>Sinh_ii2</td><td>0x1000dd3</td><td>U+0DD3 SINHALA DIGA IS-PILLA</td></tr>
<tr><td>Sinh_u2</td><td>0x1000dd4</td><td>U+0DD4 SINHALA PAA-PILLA</td></tr>
<tr><td>Sinh_uu2</td><td>0x1000dd6</td><td>U+0DD6 SINHALA DIGA PAA-PILLA</td></tr>
<tr><td>Sinh_ru2</td><td>0x1000dd8</td><td>U+0DD8 SINHALA GAETTA-PILLA</td></tr>
<tr><td>Sinh_e2</td><td>0x1000dd9</td><td>U+0DD9 SINHALA KOMBUVA</td></tr>
<tr><td>Sinh_ee2</td><td>0x1000dda</td><td>U+0DDA SINHALA DIGA KOMBUVA</td></tr>
<tr><td>Sinh_ai2</td><td>0x1000ddb</td><td>U+0DDB SINHALA KOMBU DEKA</td></tr>
<tr><td>Sinh_o2</td><td>0x1000ddc</td><td>-</td></tr>
<tr><td>Sinh_oo2</td><td>0x1000ddd</td><td>-</td></tr>
<tr><td>Sinh_au2</td><td>0x1000dde</td><td>U+0DDE SINHALA KOMBUVA HAA GAYANUKITTA</td></tr>
<tr><td>Sinh_lu2</td><td>0x1000ddf</td><td>U+0DDF SINHALA GAYANUKITTA</td></tr>
<tr><td>Sinh_ruu2</td><td>0x1000df2</td><td>U+0DF2 SINHALA DIGA GAETTA-PILLA</td></tr>
<tr><td>Sinh_luu2</td><td>0x1000df3</td><td>U+0DF3 SINHALA DIGA GAYANUKITTA</td></tr>
<tr><td>Sinh_kunddaliya</td><td>0x1000df4</td><td>U+0DF4 SINHALA KUNDDALIYA</td></tr>
</table>
