(* Content-type: application/mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 7.0' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       145,          7]
NotebookDataLength[    416803,       7428]
NotebookOptionsPosition[    397244,       7050]
NotebookOutlinePosition[    414024,       7355]
CellTagsIndexPosition[    413981,       7352]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Convoluci\[OAcute]n", "Title",
 ShowCellBracket->False,
 ShowGroupOpener->False,
 CellChangeTimes->{{3.4785699756332345`*^9, 3.4785699767823*^9}, {
  3.47914186088818*^9, 3.4791418635763335`*^9}, {3.4791419522634063`*^9, 
  3.479141965284151*^9}}],

Cell[CellGroupData[{

Cell["Infinita", "Subtitle",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.479141968752349*^9, 3.4791419776178565`*^9}, {
   3.4791421780053177`*^9, 3.4791421855997524`*^9}, 3.4802835672718863`*^9}],

Cell[CellGroupData[{

Cell["Definici\[OAcute]n:", "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.479142032719008*^9, 3.4791420455777435`*^9}, 
   3.4802835672718863`*^9}],

Cell[TextData[{
 "La convoluci\[OAcute]n entre dos se\[NTilde]ales cont\[IAcute]nuas ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]], "None"],
 " e ",
 Cell[BoxData[
  FormBox["y", TraditionalForm]], "None"],
 " se denota ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "*", "y"}], TraditionalForm]], "None"],
 " y se define como:"
}], "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{
  3.4791420637377825`*^9, {3.4791421488876524`*^9, 3.479142151696813*^9}, 
   3.4802835672718863`*^9}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     RowBox[{"x", "*", "y"}], ")"}], 
    RowBox[{"(", "t", ")"}]}], "=", 
   RowBox[{
    SubsuperscriptBox["\[Integral]", 
     RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
    RowBox[{
     RowBox[{"x", "(", "p", ")"}], " ", 
     RowBox[{"y", "(", 
      RowBox[{"t", "-", "p"}], ")"}], 
     RowBox[{"\[DifferentialD]", "p"}]}]}]}], 
  TraditionalForm]], "DisplayFormula",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.4791443453232813`*^9, 3.4791443781051564`*^9}, 
   3.4802835672728863`*^9}]
}, Closed]],

Cell[CellGroupData[{

Cell["Interpretaci\[OAcute]n geometrica", "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.479142142709299*^9, 3.4791421466145225`*^9}, {
   3.479142189719988*^9, 3.479142189822994*^9}, 3.4802835672728863`*^9}],

Cell["\<\
Las siguientes se\[NTilde]ales ser\[AAcute]n usada como ejemplo.\
\>", "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.479142193049178*^9, 3.479142233616499*^9}, {
   3.4791424491228247`*^9, 3.479142465951788*^9}, {3.4791429304213533`*^9, 
   3.4791429349756145`*^9}, {3.479143355135646*^9, 3.4791433628390865`*^9}, {
   3.4791441475879717`*^9, 3.4791441515381975`*^9}, 3.4802835672728863`*^9}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"x", "(", "t", ")"}], "=", 
   RowBox[{
    SuperscriptBox["\[ExponentialE]", 
     RowBox[{"-", "t"}]], " ", 
    RowBox[{"u", "(", "t", ")"}]}]}], TraditionalForm]], "DisplayFormula",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.479144197788843*^9, 3.479144207154379*^9}, 
   3.4802835672728863`*^9}],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"y", "(", "t", ")"}], "=", 
   RowBox[{"{", "\[NoBreak]", GridBox[{
      {"1", 
       RowBox[{"0", "\[LessEqual]", "t", "<", "1"}]},
      {
       RowBox[{"2", "-", "t"}], 
       RowBox[{"1", "\[LessEqual]", "t", "<", "2"}]}
     },
     GridBoxAlignment->{
      "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}},
        "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.7]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]"}]}], 
  TraditionalForm]], "DisplayFormula",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.479144253318019*^9, 3.4791442883130207`*^9}, 
   3.4802835672728863`*^9}],

Cell[TextData[Cell[BoxData[
 PanelBox[
  GraphicsBox[{{}, {InsetBox[
      GraphicsBox[GraphicsComplexBox[CompressedData["
1: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
Kb/Oz2j4AjuR83/99r/5y/FlL59Py/4345Yu8w==
        "], {{{}, 
          {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
           GraphicsGroupBox[
            PolygonBox[{{82, 123, 124, 50, 120, 102, 118, 86, 99, 115, 73, 83,
              96, 112, 63, 71, 81, 94, 110, 55, 60, 68, 78, 91, 107, 49, 48, 
             47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 
             31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 
             15, 54, 59, 67, 77, 90, 106, 14, 62, 70, 80, 93, 109, 53, 85, 98,
              114, 72, 100, 116}}]]}, {}, {}}, {{}, {}, 
          {Hue[0.67, 0.6, 0.6], 
           LineBox[{1, 103, 87, 74, 64, 56, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 
            11, 12, 104, 88, 75, 65, 57, 52, 108, 92, 79, 69, 61, 13, 105, 89,
             76, 66, 113, 97, 84, 117, 101, 58, 111, 95, 119}], 
           LineBox[{82, 116, 100, 72, 114, 98, 85, 53, 109, 93, 80, 70, 62, 
            14, 106, 90, 77, 67, 59, 54, 15, 16, 17, 18, 19, 20, 21, 22, 23, 
            24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 
            40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 107, 91, 78, 68, 60, 55, 
            110, 94, 81, 71, 63, 112, 96, 83, 73, 115, 99, 86, 118, 102, 120, 
            50}]}, 
          {Hue[0.67, 0.6, 0.6], Opacity[0.2], 
           LineBox[{122, 121}]}}, {{}, {}, {}}}],
       AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
       Axes->True,
       AxesLabel->{
         FormBox["\"t\"", TraditionalForm], 
         FormBox["\"x(t)\"", TraditionalForm]},
       AxesOrigin->{0, 0},
       Method->{"AxesInFront" -> True},
       PlotRange->{{-1, 3}, {0., 0.9987253029133089}},
       PlotRangeClipping->True,
       PlotRangePadding->{
         Scaled[0.02], 
         Scaled[0.02]}], {192., -116.80842387373012`}, 
      ImageScaled[{0.5, 0.5}], {360., 222.49223594996212`}], InsetBox[
      GraphicsBox[GraphicsComplexBox[CompressedData["
1:eJxllgs01Gkfxyf3HVFu6a1VlDIsaStF4UelVMq4lq2MsBGbSl5JhJKX3jRy
SS61FbmbUaIxyZ0oWQzREqMQYWbc1nXMznve9nnO0f+cOXM+M//f9/u7PM/z
/6s5n7P+VYRAIDCEn/99n7iq3SIQcEsJ3y7egx86GgJGEGdlKrdcr/yK2Ci4
m+SlP4DYqy1ceg2zD3H1Shd2vvhnxJMbppYHBbERx+/0c3MK60AcpFVde1jj
PeJ/PbvR80S9CbFgNflVjOdrxBSJaQvnSCbi3NPnDDamJyLOEfU2gtZc+FYN
mJcK/qKFlSOWtuu28z1fj1jbJ7kkJoaFWDWtNTEkuh1xrWhudAr/I+Ju1/Az
OmE9iJ+fjFBO2dOLeKg1Y4fNRD/iA9dk59/5DiIO2bunwVl3GDF7Z8neiiIO
Yqv27BW0JB44WmY0p9RyYO0atlz45ChUVEInV1EYd3UHZb/+OBDE7pheoA5C
g7tvvsLdCXDdpJDQzuqHIzFVJoEjk+D6wfeq+IZe6GnTU63XmQJjcmypW2oP
nEq/LUGKmIYA5+o+SsdHmIgiwpl3M7C5uFX0+Jt2MGDG5e2XnoMflTONeppZ
4OElpbnVdR7ybhW/ON1VD3TDB+OiaXwIXyXrwv6jAnriVlf3iAiAvSfyxOsU
OsSIOfpYqxNM/pmHbFfBY5EqzITAEFuDC0sQz2U40j/JiyA+m0iPlK/AzPgp
XErOSxTx0oPe2tdkxRC36TSyLhdjzn4A6r2O4oiP0bfLqSxgvnLjUUhnlgTi
jAGVJFkLScTxa6UnBQLMabJJR91KOGh9ifMyR+KS8hDbk5mqOSFRaH5bTU7U
LMwxEJdPEg2o01zE+nNmiknmoxD1g09bndcImA+e6PS2XYBgz593NjOYEPrH
kH3lEwEQ1i4106LeBfJoxH+1fHD/VEMVzSXTcH4hNZ/jtlLw/t0yR1YJiC1A
TNP2+HnioA9i8r3eEpIDzqdq0C9OfYwHftqyrYWrOTAfzXfbxeeDqrtCmfqK
Mnj2TPS2ta0AyjIjgPbvJzA2Ox5kbIHzcd2eMEq8jPPJqxMPoJilI7/huC9p
ROkU5JeQee/D7CEeNOQ0WBDduRALxeSs7AUokzCc+MWsAOyGWWu3TQnrt9c4
VhZ/CjqbqA9EWVjfa51UQQId11sbrK7HXc5A3D5aZ/a5iIqYeErefrCGB8NG
HTY63hx4/+Vd7u9NfCCXR90RuVgOB1Opmok/CevzlW5g3sqCCgHJ31wf1xdG
PV5zyxn7f2zJyTYzzsHnofyyXWrqPAjr6Il49YILXrG37soGL4Bq0fb4FYIX
MPyR8vJKg7Aeohx5XUU4LGhZX7xRjPXsbpaSuj76ov6sLr80RgwUwMNOyaeP
HB8Chb9+91/LcD5Mv3d1IYM4/ldyYlV9G+5H7B7ZcpJlEeJ6XS2O9O44vB5+
pBQeesqD1BrTGPf7HNgtX9jY9JIPvLOW/hfUKmDFfbspI2UBmJy0UDJdmQta
1/ZcOrwJ+ysXF+cdPor9fX4JrmQwaUifuu+N57blPPjk7UmK7+ZCR4lPkYnH
ApDln7tPHC8CxvsNEWuZwn5Y3yxU8bsD1KP5J/c9xXoG4rrp7D5b1I/+IqMy
mrswn0rzaY2vj6F6RkKzVhznc+jJpue7u3D8ylCg07ihKB/VvoSRtk9CP/aq
0/KkQBja8jVrvUEY0p8hmB5XX4X1SBa/dZdNYD0nNxeL/iHc31l10f+YcXB/
Dd/WKyRMxCMO9r/RH5DGA4L05BaJfA74aWh9+prHB5MqGifDrwICEvS7lskI
ILhxWF/MkQaOlY2TlprY38l6ZAPNCvuDiofl2DQd6TPYGmLGEjyIMs6buj7O
BfmWgTcOlAVgl3hbuRCZsIYldX6ULtTXf8tPEY2F9pHPzWnZWO/PwFK9oCUu
SM+iUDU92FF4//bB1UO6qbDOy1n70LywX7zbw8lphyF2F0UzpR3HTzNDZ2tt
b6L4sJ6Alsx24f1G1HKl7OugHfTsiIwSrufCp2RbNS6OP53zG0trFQ+2pW90
yHrLBZKBh7qNhjuaR/SVOL1uIo4/lzjxmqQUhPyYA4USEiNCv33KB2ZmvIFd
sMvDaRbrd43tXz4+ieeVE8cfZBnh94WJlQ/Sug8nIHbPvHdV6REPNuc2iLS+
4oDill6PS9l8cDrXlbE3tQJoyllN05LC9Ud89aaPQIdpF2W9po04v9D7N5y6
jmB/6yD6TUkL/HxYfP7ndj226XdYgM1KzdWJp5hgZeXv8meW8PzJ9lRzOxAH
8/oBMm0ZWC9p6EB9/tuz+H1pW3TiGQcBqJ4vyq1v/n5ejLApF1Yrjne311C1
l4xE8UUUzutolnDe6xulkreHwT5jz9oQeVzPXR09qtUwjve/nPS7rhIPlsrU
lT1s5ULOziN0Gyl8f8ZAcoSa0TWkP3KaNMv5IsxHIaFNXM4PxJa0pEZNYb1U
hZkdBtI8YLTLREUOcuHbfkfxXYzSx4aiWL/YI0V3Mx/Hl7/V9DMQ58FV95xl
kZPc756vi8+Pxfr//E6IMryYPseFnj7F4mQR7Le4n+Wppvck2hpe/v9f9jdd
gsmHipOBvsdMF/ktnjfer9/pf7v+BhxG55A=
        "], {{{}, 
          {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
           GraphicsGroupBox[{
             PolygonBox[{{106, 181, 182, 151, 55, 64, 25, 24, 23, 22, 21, 20, 
              19, 18, 17, 16, 15, 54, 14, 71, 53, 112, 89, 137}}], 
             PolygonBox[{{124, 183, 184, 130, 157, 74, 140, 166, 111, 133, 
              160, 87, 104, 126, 153, 58, 90, 107, 129, 156, 67, 81, 98, 120, 
              147, 37, 73, 86, 103, 125, 152, 57, 66, 80, 97, 119, 146, 36, 
              35, 34, 33, 32, 31, 30, 29, 28, 27, 56, 65, 79, 96, 118, 145, 
              26, 72, 85, 136, 163, 102, 168}}]}]}, {}, {}}, {{}, {}, 
          {Hue[0.67, 0.6, 0.6], 
           LineBox[{1, 142, 115, 93, 76, 61, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 
            11, 12, 143, 116, 94, 77, 62, 52, 150, 123, 101, 84, 70, 13, 144, 
            117, 95, 78, 159, 132, 110, 165, 139, 63, 155, 128, 169}], 
           LineBox[{106, 137, 89, 112, 53, 71, 14, 54, 15, 16, 17, 18, 19, 20,
             21, 22, 23, 24, 25, 64, 55, 151}], 
           LineBox[{124, 168, 102, 163, 136, 85, 72, 26, 145, 118, 96, 79, 65,
             56, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 146, 119, 97, 80, 66,
             57, 152, 125, 103, 86, 73, 37, 147, 120, 98, 81, 67, 156, 129, 
            107, 90, 58, 153, 126, 104, 87, 160, 133, 111, 166, 140, 74, 157, 
            130}], LineBox[{170, 108, 164, 138, 91, 161, 134, 113, 38, 148, 
            121, 99, 82, 68, 59, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 
            149, 122, 100, 83, 69, 60, 154, 127, 105, 88, 75, 158, 131, 109, 
            92, 162, 135, 114, 167, 141, 171, 50}]}, 
          {Hue[0.67, 0.6, 0.6], Opacity[0.2], LineBox[{173, 176, 172}], 
           LineBox[{175, 179, 174}], 
           LineBox[{178, 180, 177}]}}, {{}, {}, {}}}],
       AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
       Axes->True,
       AxesLabel->{
         FormBox["\"t\"", TraditionalForm], 
         FormBox["\"y(t)\"", TraditionalForm]},
       AxesOrigin->{0, 0},
       Method->{"AxesInFront" -> True},
       PlotRange->{{-1, 3}, {0., 1.}},
       PlotRangeClipping->True,
       PlotRangePadding->{
         Scaled[0.02], 
         Scaled[0.02]}], {576., -116.80842387373012`}, 
      ImageScaled[{0.5, 0.5}], {360., 222.49223594996212`}]}, {}},
   ContentSelectable->True,
   PlotRangePadding->{6, 5},
   ImageCache->GraphicsData["CompressedBitmap", "\<\
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
wT/VrEbrDDkTkk7AtqTl5Psza/NfAn9jAg==\
\>"]]]],
 CellChangeTimes->{3.4791444677862864`*^9}]], "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{3.479144482561131*^9, 3.4802835672728863`*^9}],

Cell[TextData[{
 "La transformaci\[OAcute]n ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"y", "(", 
     RowBox[{"p", "-", "t"}], ")"}], "=", 
    RowBox[{"y", "(", 
     RowBox[{"-", 
      RowBox[{"(", 
       RowBox[{"t", "-", "p"}], ")"}]}], ")"}]}], TraditionalForm]]],
 " es una inversi\[OAcute]n en el tiempo seguida de un desplazamiento a \
derecha en ",
 Cell[BoxData[
  FormBox["p", TraditionalForm]]],
 "."
}], "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.479143369319457*^9, 3.4791434049184933`*^9}, 
   3.4791434441877394`*^9, {3.4791434867711754`*^9, 3.479143583856728*^9}, {
   3.479144532208971*^9, 3.4791445471718264`*^9}, 3.4802835672728863`*^9}],

Cell[TextData[Cell[BoxData[
 PanelBox[
  GraphicsBox[{{}, {InsetBox[
      GraphicsBox[GraphicsComplexBox[CompressedData["
1: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
Marv6/Nf1U2umA==
        "], {{{}, 
          {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
           GraphicsGroupBox[{
             PolygonBox[{{148, 176, 177, 161, 109, 130, 82, 100, 55, 63, 33, 
              32, 31, 30, 29, 28, 27, 54, 26, 87, 69, 108, 81, 135, 99, 164, 
              122}}], PolygonBox[{{137, 178, 179, 89, 165, 136, 160, 106, 128,
               154, 71, 110, 131, 156, 83, 101, 123, 149, 57, 86, 104, 126, 
              152, 65, 77, 95, 118, 144, 41, 40, 39, 38, 37, 36, 35, 56, 64, 
              76, 94, 117, 143, 34, 88, 105, 127, 153, 70, 
              166}}]}]}, {}, {}}, {{}, {}, 
          {Hue[0.67, 0.6, 0.6], 
           LineBox[{1, 140, 114, 91, 73, 60, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 
            11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 141, 115, 
            92, 74, 61, 52, 147, 121, 98, 80, 68, 25, 142, 116, 93, 75, 62, 
            151, 125, 103, 85, 157, 132, 111, 162, 138, 167, 53}], 
           LineBox[{148, 122, 164, 99, 135, 81, 108, 69, 87, 26, 54, 27, 28, 
            29, 30, 31, 32, 33, 63, 55, 100, 82, 130, 109, 161}], 
           LineBox[{137, 166, 70, 153, 127, 105, 88, 34, 143, 117, 94, 76, 64,
             56, 35, 36, 37, 38, 39, 40, 41, 144, 118, 95, 77, 65, 152, 126, 
            104, 86, 57, 149, 123, 101, 83, 156, 131, 110, 71, 154, 128, 106, 
            160, 136, 165, 89}], 
           LineBox[{158, 133, 112, 42, 145, 119, 96, 78, 66, 58, 43, 44, 45, 
            46, 47, 48, 49, 146, 120, 97, 79, 67, 59, 150, 124, 102, 84, 72, 
            155, 129, 107, 90, 159, 134, 113, 163, 139, 168, 50}]}, 
          {Hue[0.67, 0.6, 0.6], Opacity[0.2], LineBox[{170, 169}], 
           LineBox[{172, 175, 171}], LineBox[{174, 173}]}}, {{}, {}, {}}}],
       AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
       Axes->True,
       AxesOrigin->{0, 0},
       Method->{"AxesInFront" -> True},
       PlotLabel->FormBox["\"y(t)\"", TraditionalForm],
       PlotRange->{{-3, 3}, {0., 1.}},
       PlotRangeClipping->True,
       PlotRangePadding->{
         Scaled[0.02], 
         Scaled[0.02]}], {193.5, -116.80842387373012`}, 
      ImageScaled[{0.5, 0.5}], {360., 222.49223594996212`}], InsetBox[
      GraphicsBox[GraphicsComplexBox[CompressedData["
1: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
B9bUjmC/yzdNljRJkFCWcDLWmsR5ONTMlbg8zAHhegu/b58y5yh1TsDzHb/o
vW4z8vymML6NI1mG3263wD+Vdysb3xUozy0GPu9qNUnsvNz8CPi8mzuqrjEi
1QR83vWOuOS22e8d8HnXKbeqe7TuI/B5t/pzUoJ/dDvwebeL0HfUvcECPu9q
2fbXZ2ezQZB3SRDkXRIEeZc6RwR4lwRB3qX2twDvkiDIuyQI8i4JgrxL7VcB
3qXRBHmX6qAA79JogrxLndcCvEujCfIuxUcCvEuj8XmXr/m8y9d83uVrPu/y
NZ93+ZrPu3zN512+5vMuX//TedfnzunNZml4vdpKsnNW7BgjVJ+biFoYXgXa
uUl9fa6jBM2x1IFZVA1GJUuXPEjvIUJCz8V6ZHaB8rIDvMK9HNTvlTSOHDe4
E2lBnhbe3yQI8vSPeXj5vAH98g6cb/LXix7HmsYIWq7Iz+Z3AsBp+7pzWztH
CXJujL3+tUpQ75Y9uVWbS5Rpto5YZnRC+eD7tVV6JHFmMt31SCIHBHma+p5i
bZmwJ78A5SPMxwV20w40uuD4ctPp3NE2HqGaxHujmnwTNgfatxsu6CGYPQz9
iKxuqDiq7dzpz0b+gjxNnTc/4OV4ZvaVwUn4fFE/sjzVShLHVyA8W0N1eUSD
nFjxSoNyOD9xOC3FjUs840pnl2l3wtTUn/fddieJl/nxs2LmccBEsXhKy7U8
FF+Yn2ecfdwqG4T9836a8XS2+hhRKanybnVZBtQmm8v67+4hvCrc20Z1u0GQ
r2k0YX7+Knovwj6e6s9KwirBNQ7qopXWJn7B60WQn6nz+Ad8/HBvyJupirge
Ycs5l2xm4ny7SD8ZzXU8gt5DGuT8qxQ2KHiV3QvhEo6v5gR6s1hAH90unhNC
En7iZv0pLDaE5LJmKiblovjCvGyWlq6scwH7B4SdrPwXfYzw88zmrBm+Diez
CNVrwT3E16t+Fbe7ukCQp2k0YV6uP6F33KOIGi/Tsj+5NQqikguKauVJorki
OmIPxWXVo6fTPUdS0HhhPt53WMI+vI+qp7Jsz+q2XdBhJfm+1Iok9Jy6VwY5
Ue9XAX6mvida78/NyML1/hEPOx33OaShhutbOfNh3Os5eP4vg4OT99rzCD8n
l8E2rRLIUtSpeRHPJVIfpe/f8JAFTWlkfUYcSWzOVnFKe8QGh6GJy383yEH5
CPNxy63YouXJ2J9tYVi0dP0YQb88MGSmmArN+b7ahXE9BOOCVEbUoy4Q5Gca
TZiXDUzaDxy4T9W3tUVm9eowmG+59uQ9NZLIc9k94k199+1vkzcynp2Mxgvz
8ThvoHyOD19KK7InCTHp6uwIBgd2TAoXfWcWhcb/PQ8j/iH4/CNZutH5dBvV
v0FGdryvL/yIf7MDPO9pa+J+bAsqjE3QwPlZNYWzYp2p8+eiuq1/ajG8TZhU
13KZS5jVsHeblLAghVeir51CEhWiIRcyqO8XseqkMokl2Sg/YR7WLY2YuPIq
9lfXVrhVbEPt/9L4Yw+0roGMAXNRZUoP0RG1PuVEWZcQv1HvEyE+dp99Z++f
9dR8LfbOWXMqCLgp0z6bLiAJ5bJni32yOBCTlyex2i4RjRfm4SBpy7QwcZyP
+QZXWQNnktjjsKgtaikHlFr0tayfR6DxwjysbrRst+f9E+j3GosuawtpkvB2
m8/8/Qt1Hsbr/luym8qvyrkxcWAf/D0PU+tlwG/2GiWSMFPgVe+to9aD1Z26
BUPU+KBvdRjvM9pvwjw8fh/xrfDzwutFuL7C78/x26g+fP/t/8vr+/yE13eU
0WIuQ+2F0TfVgvxcT//1/Ho8fvzi5/f/8//+/2X/BQZljYE=
        "], {{{}, {}, {}, 
          {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
           GraphicsGroupBox[{
             PolygonBox[{{344, 359, 360, 234, 243, 200, 233, 199, 198, 197, 
              196, 195, 194, 232, 193, 249, 231, 289, 266}}], 
             PolygonBox[{{343, 357, 358, 313, 338, 283, 342, 305, 330, 242, 
              287, 309, 334, 257, 274, 296, 321, 192, 248, 262, 279, 301, 326,
               230, 241, 256, 273, 295, 320, 191, 190, 189, 188, 187, 186, 
              229, 240, 255, 272, 294, 319, 185, 247, 261, 278, 300, 325, 228,
               265, 282, 304, 329, 239, 314, 339, 
              286}}]}]}, {}, {}, {}, {}, {}, {}}, {{}, {}, 
          {Hue[0.67, 0.6, 0.6], Dashing[{Small, Small}], 
           LineBox[{1, 140, 114, 91, 73, 60, 51, 2, 3, 4, 5, 6, 7, 8, 9, 351, 
            10, 11, 12, 13, 14, 15, 16, 17, 346, 18, 19, 20, 21, 22, 23, 24, 
            141, 115, 92, 74, 61, 52, 147, 121, 98, 80, 68, 25, 142, 116, 93, 
            75, 62, 151, 125, 103, 85, 157, 132, 111, 162, 138, 167, 53}], 
           LineBox[{148, 122, 164, 99, 135, 81, 108, 69, 87, 26, 54, 27, 28, 
            29, 30, 31, 32, 33, 63, 55, 100, 82, 130, 109, 161}], 
           LineBox[{137, 166, 70, 153, 127, 105, 88, 34, 143, 117, 94, 76, 64,
             56, 35, 36, 37, 38, 39, 40, 41, 144, 118, 95, 77, 65, 152, 126, 
            104, 86, 57, 149, 123, 101, 83, 156, 131, 110, 71, 154, 128, 106, 
            160, 136, 165, 89}], 
           LineBox[{158, 133, 112, 42, 145, 119, 96, 78, 66, 58, 43, 44, 45, 
            46, 47, 48, 49, 146, 120, 97, 79, 67, 59, 150, 124, 102, 84, 72, 
            155, 129, 107, 90, 159, 134, 113, 163, 139, 168, 50}]}, 
          {Hue[0.9060679774997897, 0.6, 0.6], 
           LineBox[{176, 316, 291, 269, 252, 237, 226, 177, 178, 179, 180, 
            181, 182, 183, 317, 292, 270, 253, 238, 227, 324, 299, 277, 260, 
            246, 184, 318, 293, 271, 254, 333, 308}], 
           LineBox[{343, 286, 339, 314, 239, 329, 304, 282, 265, 228, 325, 
            300, 278, 261, 247, 185, 319, 294, 272, 255, 240, 229, 186, 187, 
            188, 189, 190, 191, 320, 295, 273, 256, 241, 230, 326, 301, 279, 
            262, 248, 192, 321, 296, 274, 257, 334, 309, 287, 242, 330, 305, 
            342, 283, 338, 313}], 
           LineBox[{344, 266, 289, 231, 249, 193, 232, 194, 195, 196, 197, 
            198, 199, 233, 200, 243, 234}], 
           LineBox[{327, 302, 341, 280, 337, 312, 263, 335, 310, 288, 250, 
            331, 306, 284, 267, 201, 322, 297, 275, 258, 244, 235, 202, 203, 
            204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 
            217, 218, 219, 220, 221, 222, 223, 224, 323, 298, 276, 259, 245, 
            236, 328, 303, 281, 264, 251, 332, 307, 285, 268, 336, 311, 290, 
            340, 315, 345, 225}]}, 
          {Hue[0.67, 0.6, 0.6], Opacity[0.2], LineBox[{170, 169}], 
           LineBox[{172, 175, 171}], LineBox[{174, 173}], 
           LineBox[{348, 352, 347}], LineBox[{350, 355, 349}], 
           LineBox[{354, 356, 353}]}}, {{}, {}, {}, {}}}],
       AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
       Axes->True,
       AxesOrigin->{0, 0},
       Method->{"AxesInFront" -> True},
       PlotLabel->FormBox["\"y(-t)\"", TraditionalForm],
       PlotRange->{{-3, 3}, {0., 1.}},
       PlotRangeClipping->True,
       PlotRangePadding->{
         Scaled[0.02], 
         Scaled[0.02]}], {580.5, -116.80842387373012`}, 
      ImageScaled[{0.5, 0.5}], {360., 222.49223594996212`}], InsetBox[
      GraphicsBox[GraphicsComplexBox[CompressedData["
1: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
        "], {{{}, {}, {}, {}, {}, 
          {Hue[0.1421359549995791, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
           GraphicsGroupBox[{
             PolygonBox[{{427, 478, 479, 406, 412, 405, 404, 403, 402, 401, 
              400, 399, 411, 398, 439}}], 
             PolygonBox[{{465, 476, 477, 466, 451, 464, 436, 448, 461, 418, 
              438, 450, 463, 424, 433, 445, 458, 410, 425, 434, 446, 459, 416,
               422, 431, 443, 456, 397, 396, 395, 394, 393, 392, 391, 409, 
              415, 421, 430, 442, 455, 390, 426, 435, 447, 460, 417, 467, 
              452}}]}]}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}}, \
{{}, {}, 
          {Hue[0.67, 0.6, 0.6], Dashing[{0, Small}], 
           LineBox[{1, 140, 114, 91, 73, 60, 51, 2, 3, 4, 5, 6, 7, 8, 9, 351, 
            10, 11, 12, 13, 14, 15, 16, 17, 346, 18, 19, 20, 21, 22, 23, 24, 
            141, 115, 92, 74, 61, 52, 147, 121, 98, 80, 68, 25, 142, 116, 93, 
            75, 62, 151, 125, 103, 85, 157, 132, 111, 162, 138, 167, 53}], 
           LineBox[{148, 122, 164, 99, 135, 81, 108, 69, 87, 26, 54, 27, 28, 
            29, 30, 31, 32, 33, 63, 55, 100, 82, 130, 109, 161}], 
           LineBox[{137, 166, 70, 153, 127, 105, 88, 34, 143, 117, 94, 76, 64,
             56, 35, 36, 37, 38, 39, 40, 41, 144, 118, 95, 77, 65, 152, 126, 
            104, 86, 57, 149, 123, 101, 83, 156, 131, 110, 71, 154, 128, 106, 
            160, 136, 165, 89}], 
           LineBox[{158, 133, 112, 42, 145, 119, 96, 78, 66, 58, 43, 44, 45, 
            46, 47, 48, 49, 146, 120, 97, 79, 67, 59, 150, 124, 102, 84, 72, 
            155, 129, 107, 90, 159, 134, 113, 163, 139, 168, 50}]}, 
          {Hue[0.9060679774997897, 0.6, 0.6], Dashing[{Small, Small}], 
           LineBox[{176, 316, 291, 269, 252, 237, 226, 177, 178, 179, 180, 
            181, 182, 183, 317, 292, 270, 253, 238, 227, 324, 299, 277, 260, 
            246, 184, 318, 293, 271, 254, 333, 308}], 
           LineBox[{343, 286, 339, 314, 239, 329, 304, 282, 265, 228, 325, 
            300, 278, 261, 247, 185, 319, 294, 272, 255, 240, 229, 186, 187, 
            188, 189, 190, 191, 320, 295, 273, 256, 241, 230, 326, 301, 279, 
            262, 248, 192, 321, 296, 274, 257, 334, 309, 287, 242, 330, 305, 
            342, 283, 338, 313}], 
           LineBox[{344, 266, 289, 231, 249, 193, 232, 194, 195, 196, 197, 
            198, 199, 233, 200, 243, 234}], 
           LineBox[{327, 302, 341, 280, 337, 312, 263, 335, 310, 288, 250, 
            331, 306, 284, 267, 201, 322, 297, 275, 258, 244, 235, 202, 203, 
            204, 205, 206, 207, 208, 471, 209, 210, 211, 212, 213, 214, 215, 
            216, 468, 217, 218, 219, 220, 221, 222, 223, 224, 323, 298, 276, 
            259, 245, 236, 328, 303, 281, 264, 251, 332, 307, 285, 268, 336, 
            311, 290, 340, 315, 345, 225}]}, 
          {Hue[0.1421359549995791, 0.6, 0.6], 
           LineBox[{357, 453, 440, 428, 419, 413, 407, 358, 359, 360, 361, 
            362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 
            375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 
            388, 389, 454, 441, 429, 420, 414, 408, 457, 444, 432, 423, 462, 
            449, 437}], 
           LineBox[{465, 452, 467, 417, 460, 447, 435, 426, 390, 455, 442, 
            430, 421, 415, 409, 391, 392, 393, 394, 395, 396, 397, 456, 443, 
            431, 422, 416, 459, 446, 434, 425, 410, 458, 445, 433, 424, 463, 
            450, 438, 418, 461, 448, 436, 464, 451, 466}], 
           LineBox[{427, 439, 398, 411, 399, 400, 401, 402, 403, 404, 405, 
            412, 406}]}, 
          {Hue[0.67, 0.6, 0.6], Opacity[0.2], LineBox[{170, 169}], 
           LineBox[{172, 175, 171}], LineBox[{174, 173}], 
           LineBox[{348, 352, 347}], LineBox[{350, 355, 349}], 
           LineBox[{354, 356, 353}], LineBox[{470, 472, 469}], 
           LineBox[{474, 475, 473}]}}, {{}, {}, {}, {}, {}}}],
       AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
       Axes->True,
       AxesOrigin->{0, 0},
       Method->{"AxesInFront" -> True},
       PlotLabel->FormBox["\"y(p-t) con p=3\"", TraditionalForm],
       PlotRange->{{-3, 3}, {0., 1.}},
       PlotRangeClipping->True,
       PlotRangePadding->{
         Scaled[0.02], 
         Scaled[0.02]}], {967.5, -116.80842387373012`}, 
      ImageScaled[{0.5, 0.5}], {360., 222.49223594996212`}]}, 
    ArrowBox[{{950.6649657528659, -117.8323013365406}, {
     1061.3656817722174`, -117.8323013365406}}]},
   ContentSelectable->True,
   ImageSize->Large,
   PlotRangePadding->{6, 5}]]],
 CellChangeTimes->{
  3.4791436212258654`*^9, {3.4791436953771067`*^9, 3.479143749718215*^9}, {
   3.479143787237361*^9, 3.4791437980389786`*^9}, {3.4791438423535132`*^9, 
   3.4791438627396793`*^9}, {3.4791439227001085`*^9, 3.479143928433437*^9}, {
   3.4791439817194843`*^9, 3.479144020327693*^9}, {3.4791446039270725`*^9, 
   3.479144619120942*^9}, {3.4791446654775934`*^9, 3.4791447041188035`*^9}, {
   3.4791447560127716`*^9, 3.4791448118739667`*^9}}]], "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{
  3.479144030406269*^9, 3.4791448205994654`*^9, {3.479327316299019*^9, 
   3.4793273180691204`*^9}, 3.4802835672728863`*^9}],

Cell["\<\
Bas\[AAcute]ndose en esto la convoluci\[OAcute]n puede interpretarse gr\
\[AAcute]ficamente como se muestra a continuaci\[OAcute]n:\
\>", "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.479144064020192*^9, 3.4791440870145073`*^9}, {
   3.4791453899650316`*^9, 3.4791453937162457`*^9}, 3.4802835672728863`*^9}],

Cell[TextData[Cell[BoxData[
 PanelBox[
  GraphicsBox[{{}, {{InsetBox[
       GraphicsBox[GraphicsComplexBox[CompressedData["
1:eJzllns0VWkfx49LDpPcdsWoJJkooXtTyW8PLddhpjKNFCOSUkoSyiF3MeSe
cQuHIZJxSSbOFIeRXCLp4poOHbmeI7od4T3vmp7nrHXe9a535u/Xspb1Wc/v
9+z9e/bevp9VDmf2OYlSKJQvRSiUf/+NncjtnJ+fv0f5/EOcvD6/pWUWs+et
hIPEyRnM22NqHe03fsQcyFA06xJ9j7mo/MDR2ZxpzF9/81wn+swbzDnJe7Qb
v+Bi3hxSKHvUYRRz54zVV/KUIcwG0o/pcsDC/DCwUKQ7vRsz6JromIy0Y3ZV
Ufnh1hsm5uLF1E89e0IwN3UYLW2tqwE7SZWLm7tGwbQpNsrAoB0+ley2LJZ5
DeWstw8dKN1Q1lZ9fu+nQbB0/FGVs5sF1VVXjQKUWBBSXOTdWsCG6dC4oqPB
L4DnuOGErecoOGz4eeXVVd2gXVXW1rCECy2Bo2m2J5/BfEmk3rTxG1C2Ldzn
49IB3O6LHp7506DOKQ3uTHoEQefWfApnvYNJOfdGw4yHEFlZmOcm9xHiqKHu
kncaoWyLycoi1xkoXK7r9P2i++C7PItNo8/C1PqEt9pL6qA0lbp7rxiFpPre
2O5rXgMvKYW/tOiKkN+Z3hZJ6PsDXi7XTVMwESUXLlNadFW6EtzaGQvEvMXI
sZbSmU6P29Cmv1aRES9O+h1lu62KKoMx0aDKvvwFZK2Nr2eYfAkk2Q/VFj6T
IFV3qVteO38TiPPrzhtOUsloFfv+tsJ8UFntHRmiJkUy19AMclRygReWYx4D
X5AuDI2dbP1siN1zN038x4VkLeP7cM/GTKhIYe1XD5UmRz9679Z9lwa/5b0q
lc5aREo0LwtK2pEM2yynvDIfy5CmK7OjGisSQW+N15AlRY7UiJdpHbgXB/WU
QXZJpBw5mams8dY6BpQ0DySPqMuTIZx8bo12JLQXVGRQy+RJdTW1dF7oZXDp
lD1zUF+BTPeKPmR4PAQeWLlO+j9RIAcnnU/pegdCrFbl/UgHguRWsD82KPpD
TtWJd/PzBCkysUmNTPaB9sK8UynsOfz+/B7dpy5qfAuzv2OoUYBbMcxYLO30
Fp2Aoq3lSgXqTRDdb6pXwBqGlCn5n4xKCHJTeHNfZ4svlFporLY4J/jeTI9F
OW9d+gfmDpGFlk3RqeDfrRrqvoYDegv8khge9RCUSnvV3jkCV2WPxQ+HE6Th
QKFi1wc/sHT/qS6dk4v7f5aIuCM7ewdkS39g6w6PQcazP9ZlPyfIWStxLdUi
GqipOPvl3hFc/8Fx9+Chu9WYaV7UtsPj/pAYT36KZXBA3JX19M/ldZCZdOzP
p9ajkLAiRnuXJ0E63cp6XBF3CV6YyFAf3f0N90tslfRv2FYOuZeW0IM9xiHt
1VDddB1BVqmJLkvV84W3q6WUPazyoCfvtO6X8RNwcfsRsSdkGu6nP4iP2TtG
kHkZBxMPqdHARoK6/nGP4H5TDRvGWp7XYI5TN+X/OmB+nZng2chlgsaGu1Y7
kkchTv1XnuMp/vMdij5Z138JFndtstpKlOJ6w2+NB3Iel8JR3wML1lWNQ+rY
p9gVVQS5jK6n+TLYF9z2hfWvv0IHOx3DEdeeCZCgSq4Wv0zH/Zlt120vsgjS
4d7Q8JAzDR7YUbv1xOIgg9dzXfMsB4btS6uzzsbj+mymX63mO4I06nK5fKHX
Bzx5TwNPTAjmE984pVrjJPj/ZTYgoZDu5oW5q9K1vtmGCcQ5d7vsO6OgcF33
iLczQT6J/HBBStwf2LcuM5Zpl+F61jP2YoJeAiIKzzQYfeOg7Bb2YeNtggwe
ea5gnO8LN0/UG0ppZUL4V02rbEQ4UMAom2qrysH9qlab6670EqQO85T7RAQN
wpQXGo5eiID2S+WP6q9yYFOzlMOuziRcr2YktW73JEGWDCy2fzLvA3V7ZT12
BLnCed4BuwgWB9Rh+vDiGYLcmGDXZVzlA8HT+kVb3gvm/z1PsmpnoWD+dYYh
zEQ/f8ztxjYTLbJMUPwK8tgPRqF92CNB1Ikgg8pTNrAX+cN39DKuTKVg/pL0
29pmUvz5089qJXLHoaukWYtRRpB9vM2dEVW+kDTSNDLxJh2+UZNr6ic4QEuS
Olzx5Ffc35/o/V6pmyCr7zi+CkijgahpuFROWQjo3Txem5vPgacB5ZskF6UI
zjvM0vb+BEGap9VoEfI0+Px+wgXDIYIxzoFB/x0x1z4QZL/l6TOHmn3Az19C
f0XDSdw/br5QW8vSG8QteIGXWzlwdLZobcQsQYaI1TP1C3z+Yz/h9///Nc//
Ii7Oc8QozxGjPEeM8hwxynPEKM9zw3+xO93BwXkumsYOVXQbxXmuavKFInGT
jfOcp1RGHdvJwnnetsTiyO673TjPt2i/CDQ2bcd5rrT8faPSGBPnOZoP5Tnm
z3mOGOU5YpTniFGeI0Z5jhjlOWKU54hRniNGeY4Y5TlilOeIUZ4jRnmOGOU5
YpTniFGeI0Z5jhjlOb6/z3mOGOU53u9v5vlfxMV5jnjduHnI+7ZxzFe3ZYb2
6UxCR9y9Nwb0ceCutS6O7pgDyhFfnnhFKZg97HSJThY8T+QDiP+uD6DrxWnq
exVkj2Fmfci/sZ/OBT2ZwuvWVROwLZtmHrprDjKbt5qkGjNg7hZ3v5ul4PrI
HxD/N39A+zNLDsbvmZvAXFC8eUmy6zxUj4Qf7P2Wjv0C9f9dv0D7SXbp6Msc
5gLXnB40YMyBrhcyySKcWdggEr59KqwarDVpDf2agvtH/oFY2D88W/dJX3MW
3K/F+J8Oi1fNg/0Bg7xzvTewj6B65COoXthHZBLslUcTOHid6pF1f0XlPJBz
dMUr3rGAfAXV/y9fafOY+41itxdzitnZsNGvudDssmJS8woH1s89g3sNs5Ap
Q4pIVNbAAlaN6JdLBfMjn0Es7DPXFkZLtfPmQNVI1vnFvmLsM2hd2F9eq/U+
TTIVzGcd53K6O34eKC6HnNSlUgH5DX6en/0G1Qv7zZYFg7b6/YL9bv/wXNW+
n7+fWYHGi4xLgPwHP69/6D+DgQrrbTS48DWvK8+8hANWUXrEtfJZsE9cdkx2
PxN67g6uLJcWnBfyI8TCfnQ/ZaqneGgOYvbXb3gTXIL9CK0L+1DAqtZvKv35
73/G9sgzjzIA+RFaF/ahrG/VGAmVgvPoG9Sb1m/hn0ds1MsQ+3BAvoTqkS+h
+sG+9vkpUf68BjYUJR4HourPWQRM8fvZ7kpOs8exT6H+f+pTkisd/WJV+N9f
zQ6xXiYHXndM0BYVzkK1dbhSQgYTjLU9dcQkBeeJfAuxsG8dZv1qpNo3B2RX
VuLMilLsW2hd2K+Wngi4sdaL/z31tkc3KmcB8i20LuxX7us5tkW1/Pnvn5B8
pHkFkG/h6yvKLd/RYYXPz+9lnQ4xJTh/NZk1Fdxhfn/fZKeJrCf2MdQv7GNm
6RERrU/59YdKKnf+EgzIz9B+khaGx+2k+efndEHXcIgDH/xqBuRn+fWk5PRL
N2Psb2g/5G+IhfPpX8GSQq4=
         "], {{{}, 
           {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
            GraphicsGroupBox[PolygonBox[CompressedData["
1:eJwtz8tKAgEABdCpL6g0dSwrM3vaEypISbCoaGE0YrRQeom1yKZQMurnPUKL
A/duLtz8cxx9TAZBMEHEkIwSciD/8cYP93T55pomL/Spcvm/8cgnx1Q454Y2
PfbZY5cdtimxxSYbrLPGKkVWKLBMniUWWSDHPHNkCccfSJNiliQJZpjmiDJn
1GnxzhSnXHDLAzGHXNHgiS9OuKPDgBq/vDICGvMWSw==
              "]]]}, {}, 
           {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
            GraphicsGroupBox[
             PolygonBox[{{216, 154, 278, 252, 272, 231, 275, 248, 268, 212, 
              226, 244, 265, 196, 207, 222, 241, 262, 182, 190, 202, 218, 237,
               258, 153, 152, 151, 150, 149, 148, 181, 189, 201, 217, 236, 
              257, 147, 277, 251, 271, 230, 247, 211, 225, 195, 206, 180, 188,
               146, 145, 144, 143, 142, 179, 141, 194, 178, 209, 187, 228, 
              200, 276, 250, 270}}]]}, {}, {}, {}, {}, {}, {}}, {{}, {}, 
           {Hue[0.67, 0.6, 0.6], 
            LineBox[{1, 105, 89, 75, 64, 56, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 
             11, 12, 13, 14, 106, 90, 76, 65, 57, 52, 110, 94, 80, 69, 61, 
             114, 98, 84, 73, 117, 101, 87, 15, 107, 91, 121, 77}], 
            LineBox[{119, 103, 122, 66, 116, 100, 86, 58, 113, 97, 83, 72, 53,
              111, 95, 81, 70, 62, 16, 108, 92, 78, 67, 59, 54, 17, 18, 19, 
             20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 
             36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 109, 93, 
             79, 68, 60, 55, 112, 96, 82, 71, 63, 115, 99, 85, 74, 118, 102, 
             88, 120, 104, 123, 50}]}, 
           {Hue[0.9060679774997897, 0.6, 0.6], LineBox[CompressedData["
1:eJwl0ek2VgEUgOHvU6YGypDf3VKX0AXUHUQzQioZkgwJGSqFytAgEcpQhlKm
MpQITVLCY/nxrPfsvc46+8c5ePjooSPBQCBwhWOs84Uh2nnIHRJJ4jgnOMkp
TnOGsySTQirn2GCOYTpopJZQB5d0lFc8JcLuh07wmt3m3zpNGgHzV4nRtxql
fzVOX+gUTfRzl1bSuUcG58nkAhdppo4enjHJG1aYIdp3/2m8Xto6r/P6jk5a
qCeLy2STQy55hHh/QUfo4hENhNkv6xi9tBFp91M/MsAe8x+N1Vndp2t6ILj9
n3boN31PN4+5Tz5XKeAahRRRTAnXKeUGZZRTwU0qqaKaGm6x051F/cBLnvCA
cPvvOk4fz9ll90s/Mche86p+Zr/n/5qgt3UTpRlkNw==
             "]]}, 
           {Hue[0.67, 0.6, 0.6], Opacity[0.2], 
            LineBox[{125, 124}]}}, {{}, {}, {}, {}}}],
        AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
        Axes->True,
        AxesOrigin->{0, 0},
        ImageSize->Large,
        Method->{"AxesInFront" -> True},
        PlotRange->{{-2, 5}, {0., 1.}},
        PlotRangeClipping->True,
        PlotRangePadding->{
          Scaled[0.02], 
          Scaled[0.02]}], {307.2, -189.86004134396768`}, 
       ImageScaled[{0.5, 0.5}], {576, 355.9875775199394}], InsetBox[
       GraphicsBox[GraphicsComplexBox[CompressedData["
1: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
N2Psb2g/5G+IhfPpX8GSQq4=
         "], {{{}, 
           {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
            GraphicsGroupBox[PolygonBox[CompressedData["
1:eJwtz8tKAgEABdCpL6g0dSwrM3vaEypISbCoaGE0YrRQeom1yKZQMurnPUKL
A/duLtz8cxx9TAZBMEHEkIwSciD/8cYP93T55pomL/Spcvm/8cgnx1Q454Y2
PfbZY5cdtimxxSYbrLPGKkVWKLBMniUWWSDHPHNkCccfSJNiliQJZpjmiDJn
1GnxzhSnXHDLAzGHXNHgiS9OuKPDgBq/vDICGvMWSw==
              "]]]}, {}, 
           {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
            GraphicsGroupBox[
             PolygonBox[{{216, 154, 278, 252, 272, 231, 275, 248, 268, 212, 
              226, 244, 265, 196, 207, 222, 241, 262, 182, 190, 202, 218, 237,
               258, 153, 152, 151, 150, 149, 148, 181, 189, 201, 217, 236, 
              257, 147, 277, 251, 271, 230, 247, 211, 225, 195, 206, 180, 188,
               146, 145, 144, 143, 142, 179, 141, 194, 178, 209, 187, 228, 
              200, 276, 250, 270}}]]}, {}, {}, {}, {}, {}, {}}, {{}, {}, 
           {Hue[0.67, 0.6, 0.6], Thickness[0.01], 
            LineBox[{1, 105, 89, 75, 64, 56, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 
             11, 12, 13, 14, 106, 90, 76, 65, 57, 52, 110, 94, 80, 69, 61, 
             114, 98, 84, 73, 117, 101, 87, 15, 107, 91, 121, 77}], 
            LineBox[{119, 103, 122, 66, 116, 100, 86, 58, 113, 97, 83, 72, 53,
              111, 95, 81, 70, 62, 16, 108, 92, 78, 67, 59, 54, 17, 18, 19, 
             20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 
             36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 109, 93, 
             79, 68, 60, 55, 112, 96, 82, 71, 63, 115, 99, 85, 74, 118, 102, 
             88, 120, 104, 123, 50}]}, 
           {Hue[0.9060679774997897, 0.6, 0.6], Thickness[0.001], 
            LineBox[CompressedData["
1:eJwl0ek2VgEUgOHvU6YGypDf3VKX0AXUHUQzQioZkgwJGSqFytAgEcpQhlKm
MpQITVLCY/nxrPfsvc46+8c5ePjooSPBQCBwhWOs84Uh2nnIHRJJ4jgnOMkp
TnOGsySTQirn2GCOYTpopJZQB5d0lFc8JcLuh07wmt3m3zpNGgHzV4nRtxql
fzVOX+gUTfRzl1bSuUcG58nkAhdppo4enjHJG1aYIdp3/2m8Xto6r/P6jk5a
qCeLy2STQy55hHh/QUfo4hENhNkv6xi9tBFp91M/MsAe8x+N1Vndp2t6ILj9
n3boN31PN4+5Tz5XKeAahRRRTAnXKeUGZZRTwU0qqaKaGm6x051F/cBLnvCA
cPvvOk4fz9ll90s/Mche86p+Zr/n/5qgt3UTpRlkNw==
             "]]}, 
           {Hue[0.67, 0.6, 0.6], Opacity[0.2], 
            LineBox[{125, 124}]}}, {{}, {}, {}, {}}}],
        AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
        Axes->True,
        AxesOrigin->{0, 0},
        ImageSize->Large,
        Method->{"AxesInFront" -> True},
        PlotLabel->FormBox["\"Elijo la azul\"", TraditionalForm],
        PlotRange->{{-2, 5}, {0., 1.}},
        PlotRangeClipping->True,
        PlotRangePadding->{
          Scaled[0.02], 
          Scaled[0.02]}], {921.5999999999999, -189.86004134396768`}, 
       ImageScaled[{0.5, 0.5}], {576, 355.9875775199394}]}, {InsetBox[
       GraphicsBox[GraphicsComplexBox[CompressedData["
1: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

         "], {{{}, 
           {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
            GraphicsGroupBox[
             PolygonBox[{{1, 280, 281, 77, 121, 91, 107, 15, 87, 101, 117, 73,
               84, 98, 114, 61, 69, 80, 94, 110, 52, 57, 65, 76, 90, 106, 14, 
              13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 51, 56, 64, 75, 89, 
              105}}]]}, {}, 
           {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
            GraphicsGroupBox[
             PolygonBox[{{216, 154, 278, 252, 272, 231, 275, 248, 268, 212, 
              226, 244, 265, 196, 207, 222, 241, 262, 182, 190, 202, 218, 237,
               258, 153, 152, 151, 150, 149, 148, 181, 189, 201, 217, 236, 
              257, 147, 277, 251, 271, 230, 247, 211, 225, 195, 206, 180, 188,
               146, 145, 144, 143, 142, 179, 141, 194, 178, 209, 187, 228, 
              200, 276, 250, 270}}]]}, {}, {}, {}, {}, {}, {}}, {{}, {}, 
           {Hue[0.67, 0.6, 0.6], Thickness[0.01], 
            LineBox[{1, 105, 89, 75, 64, 56, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 
             11, 12, 13, 14, 106, 90, 76, 65, 57, 52, 110, 94, 80, 69, 61, 
             114, 98, 84, 73, 117, 101, 87, 15, 107, 91, 121, 77}], 
            LineBox[{119, 103, 122, 66, 116, 100, 86, 58, 113, 97, 83, 72, 53,
              111, 95, 81, 70, 62, 16, 108, 92, 78, 67, 59, 54, 17, 18, 19, 
             20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 
             36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 109, 93, 
             79, 68, 60, 55, 112, 96, 82, 71, 63, 115, 99, 85, 74, 118, 102, 
             88, 120, 104, 123, 50}]}, 
           {Hue[0.9060679774997897, 0.6, 0.6], Thickness[0.001], 
            LineBox[CompressedData["
1:eJwl0ek2VgEUgOHvU6YGypDf3VKX0AXUHUQzQioZkgwJGSqFytAgEcpQhlKm
MpQITVLCY/nxrPfsvc46+8c5ePjooSPBQCBwhWOs84Uh2nnIHRJJ4jgnOMkp
TnOGsySTQirn2GCOYTpopJZQB5d0lFc8JcLuh07wmt3m3zpNGgHzV4nRtxql
fzVOX+gUTfRzl1bSuUcG58nkAhdppo4enjHJG1aYIdp3/2m8Xto6r/P6jk5a
qCeLy2STQy55hHh/QUfo4hENhNkv6xi9tBFp91M/MsAe8x+N1Vndp2t6ILj9
n3boN31PN4+5Tz5XKeAahRRRTAnXKeUGZZRTwU0qqaKaGm6x051F/cBLnvCA
cPvvOk4fz9ll90s/Mche86p+Zr/n/5qgt3UTpRlkNw==
             "]]}, 
           {Hue[0.67, 0.6, 0.6], Opacity[0.2], 
            LineBox[{125, 124}]}}, {{}, {}, {}, {}}}],
        AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
        Axes->True,
        AxesOrigin->{0, 0},
        ImageSize->Large,
        Method->{"AxesInFront" -> True},
        PlotLabel->FormBox["\"La invierto en tiempo\"", TraditionalForm],
        PlotRange->{{-2, 5}, {0., 1.}},
        PlotRangeClipping->True,
        PlotRangePadding->{
          Scaled[0.02], 
          Scaled[0.02]}], {307.2, -569.5801240319031}, 
       ImageScaled[{0.5, 0.5}], {576, 355.9875775199394}], InsetBox[
       GraphicsBox[GraphicsComplexBox[CompressedData["
1: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
QU+Tr/Ibbz4j8hvB/wLD4Pv5
         "], {{{}, 
           {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
            GraphicsGroupBox[
             PolygonBox[{{1, 278, 279, 72, 120, 100, 116, 82, 95, 111, 58, 84,
               97, 113, 66, 76, 89, 105, 25, 61, 69, 79, 92, 108, 52, 57, 65, 
              75, 88, 104, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12,
               11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 51, 56, 64, 74, 87, 
              103}}]]}, {}, 
           {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
            GraphicsGroupBox[
             PolygonBox[{{214, 152, 276, 250, 270, 229, 273, 246, 266, 210, 
              224, 242, 263, 194, 205, 220, 239, 260, 180, 188, 200, 216, 235,
               256, 151, 150, 149, 148, 147, 146, 179, 187, 199, 215, 234, 
              255, 145, 275, 249, 269, 228, 245, 209, 223, 193, 204, 178, 186,
               144, 143, 142, 141, 140, 177, 139, 192, 176, 207, 185, 226, 
              198, 274, 248, 268}}]]}, {}, {}, {}, {}, {}, {}}, {{}, {}, 
           {Hue[0.67, 0.6, 0.6], Thickness[0.01], 
            LineBox[{1, 103, 87, 74, 64, 56, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 
             11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 104, 88, 
             75, 65, 57, 52, 108, 92, 79, 69, 61, 25, 105, 89, 76, 66, 113, 
             97, 84, 58, 111, 95, 82, 116, 100, 120, 72}], 
            LineBox[{114, 98, 119, 85, 117, 101, 53, 109, 93, 80, 70, 62, 26, 
             106, 90, 77, 67, 59, 54, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 
             37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 107, 91, 78, 
             68, 60, 55, 110, 94, 81, 71, 63, 112, 96, 83, 73, 115, 99, 86, 
             118, 102, 121, 50}]}, 
           {Hue[0.9060679774997897, 0.6, 0.6], Thickness[0.001], 
            LineBox[CompressedData["
1:eJwt0ek2UFEYgOETkSmSugC31CV0AbmBMjZIJZVCMk8NMkVpEpqMIZVSyiya
aBJRHmv58az3fN9aZ+8fO3F/0r4D24IguMhB1pjjBY+4RR2HSCaFVNJIJ4PD
HOEox8jkOOt85CWPaaWeUBd+1bf08oBwuyV9zyCR5p86RRb/mGeX/SuN0T+6
W5/oJLcZoIF2TtDISU6RzWlyuEMTfXTwgSF+Mc1O565ogp7R/ywwwlPucoOz
nCOX81wgj8B/n+Q1Xdyjme323/Qd/XSyw+67jvOcKPNvjdcZjdVV3aP5m0fr
Z31DN/dpoWDrHQu5RBHFlFBKGeVUUEkV1dRwmStc5Rq1hLjni47SQxs3CbNf
1DGe8ZAIux86wTDR5mWdJc73X92r13UDRSllAQ==
             "]]}, 
           {Hue[0.67, 0.6, 0.6], Opacity[0.2], 
            LineBox[{123, 122}]}}, {{}, {}, {}, {}}}],
        AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
        Axes->True,
        AxesOrigin->{0, 0},
        ImageSize->Large,
        Method->{"AxesInFront" -> True},
        PlotLabel->FormBox["\"La voy desplazando\"", TraditionalForm],
        PlotRange->{{-2, 5}, {0., 1.}},
        PlotRangeClipping->True,
        PlotRangePadding->{
          Scaled[0.02], 
          Scaled[0.02]}], {921.5999999999999, -569.5801240319031}, 
       ImageScaled[{0.5, 0.5}], {576, 355.9875775199394}]}}, 
    StyleBox[{{}, {
       LineBox[{{0, -379.72008268793536`}, {614.4, -379.72008268793536`}}], 
       LineBox[{{614.4, -379.72008268793536`}, {
        1228.8, -379.72008268793536`}}]}},
     Antialiasing->False]},
   ContentSelectable->True,
   ImageSize->Large,
   PlotRangePadding->{6, 5}]]],
 CellChangeTimes->{{3.4817862450624366`*^9, 3.481786263542494*^9}}]], "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{
  3.479145257631462*^9, {3.48010710374675*^9, 3.4801071071129427`*^9}, 
   3.4801073642366495`*^9, 3.4802835672728863`*^9, 3.4802841014274387`*^9, 
   3.4817862688938*^9}],

Cell["\<\
y luego voy desplazando, multiplicando e integrando para obtener cada valor \
de la se\[NTilde]al resultante, como se muestra en los ejemplos.\
\>", "Text",
 CellChangeTimes->{{3.480284602252084*^9, 3.4802846511578813`*^9}}]
}, Closed]],

Cell[CellGroupData[{

Cell["Ejemplos", "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.479142032719008*^9, 3.4791420455777435`*^9}, 
   3.4802835672718863`*^9, {3.4802843011028595`*^9, 3.4802843027389526`*^9}, 
   3.4804301685069284`*^9}],

Cell[CellGroupData[{

Cell["Ejemplo interactivo 1", "Subitem",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.480284311443451*^9, 3.48028433364472*^9}, {
  3.481785728515892*^9, 3.4817857285948963`*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`pw$$ = 1, $CellContext`t$$ = -0.99, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Style["Tiempo", Bold]], Manipulate`Dump`ThisIsNotAControl}, {
      Hold[$CellContext`t$$], -0.99, 5, 0.01}, {
      Hold[
       Style["Ancho del pulso", Bold]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`pw$$], 1, "\!\(\*SubscriptBox[\(T\), \(0\)]\)"}, 0.5,
       3, 0.1}}, Typeset`size$$ = {520., {288., 297.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`t$76886$$ = 0, $CellContext`pw$76887$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`pw$$ = 1, $CellContext`t$$ = -0.99}, 
      "ControllerVariables" :> {
        Hold[$CellContext`t$$, $CellContext`t$76886$$, 0], 
        Hold[$CellContext`pw$$, $CellContext`pw$76887$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> GraphicsColumn[{
         Show[
          Plot[
           $CellContext`h[$CellContext`t$$ - $CellContext`tau], \
{$CellContext`tau, -1, 5}, PlotStyle -> {{
              Thickness[0.008]}}, PlotRange -> {-0.1, 2.1}, 
           AxesLabel -> {"\[Tau]"}, PerformanceGoal -> "Quality"], 
          Plot[
           $CellContext`rect[$CellContext`tau/$CellContext`pw$$ - 1/
            2], {$CellContext`tau, -1, 5}, Filling -> None, PlotStyle -> {{
              Thickness[0.008], 
              RGBColor[1, 0, 0]}}], 
          
          Plot[$CellContext`h[$CellContext`t$$ - $CellContext`tau] \
$CellContext`rect[$CellContext`tau/$CellContext`pw$$ - 1/
             2], {$CellContext`tau, -1, 5}, PlotRange -> {-0.1, 2.1}, 
           Filling -> {1 -> Axis}, PerformanceGoal -> "Quality"]], 
         Show[
          Plot[
           $CellContext`y[$CellContext`x, $CellContext`pw$$], \
{$CellContext`x, -1, $CellContext`t$$}, PlotRange -> {{-1, 5}, {-0.1, 1.1}}, 
           AxesLabel -> {
             Style["t", Italic], 
             Row[{
               Style["y", Italic], "(", 
               Style["t", Italic], ")"}]}], 
          Graphics[{
            PointSize[Large], Blue, 
            Point[{$CellContext`t$$, 
              $CellContext`y[$CellContext`t$$, $CellContext`pw$$]}]}]]}, 
        ImageSize -> {400, 450}], "Specifications" :> {
        Style[
        "Tiempo", Bold], {$CellContext`t$$, -0.99, 5, 0.01, Appearance -> 
         "Labeled", ImageSize -> Small}, Delimiter, 
        Style[
        "Ancho del pulso", 
         Bold], {{$CellContext`pw$$, 1, "\!\(\*SubscriptBox[\(T\), \(0\)]\)"},
          0.5, 3, 0.1, Appearance -> "Labeled", ImageSize -> Small}}, 
      "Options" :> {ControlPlacement -> Left}, "DefaultOptions" :> {}],
     ImageSizeCache->{838., {328., 335.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`h[
         Pattern[$CellContext`x, 
          Blank[]]] := 
       Condition[(1/$CellContext`rc) 
         Exp[-($CellContext`x/$CellContext`rc)], $CellContext`x >= 
         0], $CellContext`h[
         Pattern[$CellContext`x, 
          Blank[]]] := Condition[0, $CellContext`x < 0], $CellContext`h[
         Pattern[$CellContext`x, 
          Blank[]]] := Condition[0., $CellContext`x < 0.], $CellContext`h[
         Pattern[$CellContext`x, 
          Blank[]]] := 
       Condition[
        1.4 Exp[(-1.4) $CellContext`x], $CellContext`x >= 0.], $CellContext`h[
         Pattern[$CellContext`x, 
          Blank[]]] := $CellContext`x^2, $CellContext`x = 
       "Fri 2 Feb 2007 17:02:11", $CellContext`rc = 0.5, 
       Attributes[PlotRange] = {ReadProtected}, $CellContext`rect[
         Pattern[$CellContext`x, 
          Blank[]]] := Condition[1, 
         And[$CellContext`x <= 
          0.5, $CellContext`x >= -0.5]], $CellContext`rect[
         Pattern[$CellContext`x, 
          Blank[]]] := Condition[0, 
         Or[$CellContext`x > 0.5, $CellContext`x < -0.5]], $CellContext`rect[
         Pattern[$CellContext`t, 
          Blank[]]] := Condition[1, 
         And[$CellContext`t <= 
          1/2, $CellContext`t >= (-1)/2]], $CellContext`rect[
         Pattern[$CellContext`t, 
          Blank[]]] := Condition[0, 
         Or[$CellContext`t > 1/2, $CellContext`t < (-1)/2]], $CellContext`y[
         Pattern[$CellContext`x, 
          Blank[]], 
         Pattern[$CellContext`t0, 
          Blank[]]] := Condition[1 - Exp[-($CellContext`x/$CellContext`rc)], 
         And[$CellContext`x >= 
          0, $CellContext`x <= $CellContext`t0]], $CellContext`y[
         Pattern[$CellContext`x, 
          Blank[]], 
         Pattern[$CellContext`t0, 
          Blank[]]] := 
       Condition[(Exp[$CellContext`t0/$CellContext`rc] - 1) 
         Exp[-($CellContext`x/$CellContext`rc)], $CellContext`x > \
$CellContext`t0], $CellContext`y[
         Pattern[$CellContext`x, 
          Blank[]], Blank[] Subscript[$CellContext`T, 0]] := 
       Condition[0, $CellContext`x < 0], $CellContext`y[
         Pattern[$CellContext`x, 
          Blank[]], 
         Pattern[$CellContext`t0, 
          Blank[]]] := Condition[0, $CellContext`x < 0], $CellContext`y[
         Pattern[$CellContext`x, 
          Blank[]]] := Condition[1 - Exp[-$CellContext`x], 
         And[$CellContext`x >= 0, $CellContext`x <= 
          Subscript[$CellContext`T, 0]]], $CellContext`y[
         Pattern[$CellContext`x, 
          Blank[]]] := Condition[(Exp[
            Subscript[$CellContext`T, 0]] - 1) 
         Exp[-$CellContext`x], $CellContext`x > 
         Subscript[$CellContext`T, 0]], $CellContext`y[
         Pattern[$CellContext`x, 
          Blank[]]] := Condition[0, $CellContext`x < 0], $CellContext`y[
         Pattern[$CellContext`x, 
          Blank[]], Blank[] Subscript[$CellContext`T, 0]] := 
       Condition[1 - Exp[-$CellContext`x], 
         And[$CellContext`x >= 0, $CellContext`x <= 
          Subscript[$CellContext`T, 0]]], $CellContext`y[
         Pattern[$CellContext`x, 
          Blank[]], Blank[] Subscript[$CellContext`T, 0]] := Condition[(Exp[
            Subscript[$CellContext`T, 0]] - 1) 
         Exp[-$CellContext`x], $CellContext`x > 
         Subscript[$CellContext`T, 0]], $CellContext`y[
         Pattern[$CellContext`x, 
          Blank[]], 
         Blank[]] := Condition[1 - Exp[-$CellContext`x], 
         And[$CellContext`x >= 0, $CellContext`x <= 
          Subscript[$CellContext`T, 0]]], $CellContext`y[
         Pattern[$CellContext`x, 
          Blank[]], 
         Blank[]] := Condition[(Exp[
            Subscript[$CellContext`T, 0]] - 1) 
         Exp[-$CellContext`x], $CellContext`x > Subscript[$CellContext`T, 0]],
        Attributes[Subscript] = {NHoldRest}, Subscript[Global`T, 0] = 1, 
       Subscript[Notebook$$21`T, 0] = 1, Subscript[$CellContext`T, 0] = 1, 
       Subscript[Notebook$$5`T, 0] = 1, Subscript[Notebook$$74`T, 0] = 1}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Input",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{3.4802835672728863`*^9, 3.481787104699605*^9}]
}, Closed]],

Cell[CellGroupData[{

Cell["Ejemplo interactivo 2", "Subitem",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.480284311443451*^9, 3.480284313566572*^9}, {
  3.4817857306980166`*^9, 3.4817857307860217`*^9}}],

Cell[BoxData[
 TagBox[
  DynamicModuleBox[{Typeset`var$$ = 1}, 
   InterpretationBox[
    TagBox[
     PanelBox[GridBox[{
        {
         ItemBox[GridBox[{
            {GridBox[{
               {
                TagBox[
                 TooltipBox[
                  ButtonBox[
                   StyleBox["\<\"\[FirstPage]\"\>",
                    StripOnInput->False,
                    FontSize->18],
                   Appearance->"Palette",
                   ButtonFunction:>If[Typeset`var$$ =!= 1, Typeset`var$$ = 1],
                   Enabled->Automatic,
                   Evaluator->Automatic,
                   ImageSize->Small,
                   Method->"Preemptive"],
                  "\"First Slide\"",
                  LabelStyle->"TextStyling"],
                 Annotation[#, "First Slide", "Tooltip"]& ], 
                TagBox[
                 TooltipBox[
                  ButtonBox[
                   StyleBox["\<\"\[LeftPointer]\"\>",
                    StripOnInput->False,
                    FontSize->18],
                   Appearance->"Palette",
                   ButtonFunction:>If[Typeset`var$$ > 1, 
                    PreDecrement[Typeset`var$$]],
                   Enabled->Automatic,
                   Evaluator->Automatic,
                   ImageSize->Small,
                   Method->"Preemptive"],
                  "\"Previous Slide\"",
                  LabelStyle->"TextStyling"],
                 Annotation[#, "Previous Slide", "Tooltip"]& ], 
                TagBox[
                 TooltipBox[
                  ButtonBox[
                   StyleBox["\<\"\[RightPointer]\"\>",
                    StripOnInput->False,
                    FontSize->18],
                   Appearance->"Palette",
                   ButtonFunction:>If[Typeset`var$$ < 4, 
                    PreIncrement[Typeset`var$$]],
                   Enabled->Automatic,
                   Evaluator->Automatic,
                   ImageSize->Small,
                   Method->"Preemptive"],
                  "\"Next Slide\"",
                  LabelStyle->"TextStyling"],
                 Annotation[#, "Next Slide", "Tooltip"]& ], 
                TagBox[
                 TooltipBox[
                  ButtonBox[
                   StyleBox["\<\"\[LastPage]\"\>",
                    StripOnInput->False,
                    FontSize->18],
                   Appearance->"Palette",
                   ButtonFunction:>If[Typeset`var$$ =!= 4, Typeset`var$$ = 4],
                   Enabled->Automatic,
                   Evaluator->Automatic,
                   ImageSize->Small,
                   Method->"Preemptive"],
                  "\"Last Slide\"",
                  LabelStyle->"TextStyling"],
                 Annotation[#, "Last Slide", "Tooltip"]& ]}
              },
              AutoDelete->False,
              
              GridBoxItemSize->{
               "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
              GridBoxSpacings->{"Columns" -> {
                  Offset[0.27999999999999997`], {
                   Offset[0.]}, 
                  Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, 
                "Rows" -> {
                  Offset[0.2], {
                   Offset[0.4]}, 
                  Offset[0.2]}, "RowsIndexed" -> {}}]}
           },
           AutoDelete->False,
           
           GridBoxAlignment->{
            "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, 
             "Rows" -> {{Center}}, "RowsIndexed" -> {}},
           
           GridBoxItemSize->{
            "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
          Alignment->Left,
          StripOnInput->False]},
        {
         ItemBox[
          StyleBox[Cell[BoxData[
            PaneSelectorBox[{1->
             GraphicsBox[GraphicsComplexBox[CompressedData["
1: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
N2Psb2g/5G+IhfPpX8GSQq4=
               "], {{{}, 
                 {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
                  GraphicsGroupBox[PolygonBox[CompressedData["
1:eJwtz8tKAgEABdCpL6g0dSwrM3vaEypISbCoaGE0YrRQeom1yKZQMurnPUKL
A/duLtz8cxx9TAZBMEHEkIwSciD/8cYP93T55pomL/Spcvm/8cgnx1Q454Y2
PfbZY5cdtimxxSYbrLPGKkVWKLBMniUWWSDHPHNkCccfSJNiliQJZpjmiDJn
1GnxzhSnXHDLAzGHXNHgiS9OuKPDgBq/vDICGvMWSw==
                    "]]]}, {}, 
                 {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[
                  None], GraphicsGroupBox[
                   PolygonBox[{{216, 154, 278, 252, 272, 231, 275, 248, 268, 
                    212, 226, 244, 265, 196, 207, 222, 241, 262, 182, 190, 
                    202, 218, 237, 258, 153, 152, 151, 150, 149, 148, 181, 
                    189, 201, 217, 236, 257, 147, 277, 251, 271, 230, 247, 
                    211, 225, 195, 206, 180, 188, 146, 145, 144, 143, 142, 
                    179, 141, 194, 178, 209, 187, 228, 200, 276, 250, 
                    270}}]]}, {}, {}, {}, {}, {}, {}}, {{}, {}, 
                 {Hue[0.67, 0.6, 0.6], 
                  LineBox[{1, 105, 89, 75, 64, 56, 51, 2, 3, 4, 5, 6, 7, 8, 9,
                    10, 11, 12, 13, 14, 106, 90, 76, 65, 57, 52, 110, 94, 80, 
                   69, 61, 114, 98, 84, 73, 117, 101, 87, 15, 107, 91, 121, 
                   77}], LineBox[{119, 103, 122, 66, 116, 100, 86, 58, 113, 
                   97, 83, 72, 53, 111, 95, 81, 70, 62, 16, 108, 92, 78, 67, 
                   59, 54, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
                    30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 
                   44, 45, 46, 47, 48, 49, 109, 93, 79, 68, 60, 55, 112, 96, 
                   82, 71, 63, 115, 99, 85, 74, 118, 102, 88, 120, 104, 123, 
                   50}]}, 
                 {Hue[0.9060679774997897, 0.6, 0.6], LineBox[CompressedData["
1:eJwl0ek2VgEUgOHvU6YGypDf3VKX0AXUHUQzQioZkgwJGSqFytAgEcpQhlKm
MpQITVLCY/nxrPfsvc46+8c5ePjooSPBQCBwhWOs84Uh2nnIHRJJ4jgnOMkp
TnOGsySTQirn2GCOYTpopJZQB5d0lFc8JcLuh07wmt3m3zpNGgHzV4nRtxql
fzVOX+gUTfRzl1bSuUcG58nkAhdppo4enjHJG1aYIdp3/2m8Xto6r/P6jk5a
qCeLy2STQy55hHh/QUfo4hENhNkv6xi9tBFp91M/MsAe8x+N1Vndp2t6ILj9
n3boN31PN4+5Tz5XKeAahRRRTAnXKeUGZZRTwU0qqaKaGm6x051F/cBLnvCA
cPvvOk4fz9ll90s/Mche86p+Zr/n/5qgt3UTpRlkNw==
                   "]]}, 
                 {Hue[0.67, 0.6, 0.6], Opacity[0.2], 
                  LineBox[{125, 124}]}}, {{}, {}, {}, {}}}],
              AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
              Axes->True,
              AxesOrigin->{0, 0},
              ImageSize->Large,
              Method->{"AxesInFront" -> True},
              PlotRange->{{-2, 5}, {-0.1, 1.1}},
              PlotRangeClipping->True,
              PlotRangePadding->{
                Scaled[0.02], Automatic}], 2->
             GraphicsBox[GraphicsComplexBox[CompressedData["
1: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
N2Psb2g/5G+IhfPpX8GSQq4=
               "], {{{}, 
                 {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
                  GraphicsGroupBox[PolygonBox[CompressedData["
1:eJwtz8tKAgEABdCpL6g0dSwrM3vaEypISbCoaGE0YrRQeom1yKZQMurnPUKL
A/duLtz8cxx9TAZBMEHEkIwSciD/8cYP93T55pomL/Spcvm/8cgnx1Q454Y2
PfbZY5cdtimxxSYbrLPGKkVWKLBMniUWWSDHPHNkCccfSJNiliQJZpjmiDJn
1GnxzhSnXHDLAzGHXNHgiS9OuKPDgBq/vDICGvMWSw==
                    "]]]}, {}, 
                 {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[
                  None], GraphicsGroupBox[
                   PolygonBox[{{216, 154, 278, 252, 272, 231, 275, 248, 268, 
                    212, 226, 244, 265, 196, 207, 222, 241, 262, 182, 190, 
                    202, 218, 237, 258, 153, 152, 151, 150, 149, 148, 181, 
                    189, 201, 217, 236, 257, 147, 277, 251, 271, 230, 247, 
                    211, 225, 195, 206, 180, 188, 146, 145, 144, 143, 142, 
                    179, 141, 194, 178, 209, 187, 228, 200, 276, 250, 
                    270}}]]}, {}, {}, {}, {}, {}, {}}, {{}, {}, 
                 {Hue[0.67, 0.6, 0.6], Thickness[0.01], 
                  LineBox[{1, 105, 89, 75, 64, 56, 51, 2, 3, 4, 5, 6, 7, 8, 9,
                    10, 11, 12, 13, 14, 106, 90, 76, 65, 57, 52, 110, 94, 80, 
                   69, 61, 114, 98, 84, 73, 117, 101, 87, 15, 107, 91, 121, 
                   77}], LineBox[{119, 103, 122, 66, 116, 100, 86, 58, 113, 
                   97, 83, 72, 53, 111, 95, 81, 70, 62, 16, 108, 92, 78, 67, 
                   59, 54, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
                    30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 
                   44, 45, 46, 47, 48, 49, 109, 93, 79, 68, 60, 55, 112, 96, 
                   82, 71, 63, 115, 99, 85, 74, 118, 102, 88, 120, 104, 123, 
                   50}]}, 
                 {Hue[0.9060679774997897, 0.6, 0.6], Thickness[0.001], 
                  LineBox[CompressedData["
1:eJwl0ek2VgEUgOHvU6YGypDf3VKX0AXUHUQzQioZkgwJGSqFytAgEcpQhlKm
MpQITVLCY/nxrPfsvc46+8c5ePjooSPBQCBwhWOs84Uh2nnIHRJJ4jgnOMkp
TnOGsySTQirn2GCOYTpopJZQB5d0lFc8JcLuh07wmt3m3zpNGgHzV4nRtxql
fzVOX+gUTfRzl1bSuUcG58nkAhdppo4enjHJG1aYIdp3/2m8Xto6r/P6jk5a
qCeLy2STQy55hHh/QUfo4hENhNkv6xi9tBFp91M/MsAe8x+N1Vndp2t6ILj9
n3boN31PN4+5Tz5XKeAahRRRTAnXKeUGZZRTwU0qqaKaGm6x051F/cBLnvCA
cPvvOk4fz9ll90s/Mche86p+Zr/n/5qgt3UTpRlkNw==
                   "]]}, 
                 {Hue[0.67, 0.6, 0.6], Opacity[0.2], 
                  LineBox[{125, 124}]}}, {{}, {}, {}, {}}}],
              AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
              Axes->True,
              AxesOrigin->{0, 0},
              ImageSize->Large,
              Method->{"AxesInFront" -> True},
              PlotLabel->FormBox["\"Elijo la azul\"", TraditionalForm],
              PlotRange->{{-2, 5}, {-0.1, 1.1}},
              PlotRangeClipping->True,
              PlotRangePadding->{
                Scaled[0.02], Automatic}], 3->
             GraphicsBox[GraphicsComplexBox[CompressedData["
1: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

               "], {{{}, 
                 {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
                  GraphicsGroupBox[
                   PolygonBox[{{1, 280, 281, 77, 121, 91, 107, 15, 87, 101, 
                    117, 73, 84, 98, 114, 61, 69, 80, 94, 110, 52, 57, 65, 76,
                     90, 106, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 51, 
                    56, 64, 75, 89, 105}}]]}, {}, 
                 {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[
                  None], GraphicsGroupBox[
                   PolygonBox[{{216, 154, 278, 252, 272, 231, 275, 248, 268, 
                    212, 226, 244, 265, 196, 207, 222, 241, 262, 182, 190, 
                    202, 218, 237, 258, 153, 152, 151, 150, 149, 148, 181, 
                    189, 201, 217, 236, 257, 147, 277, 251, 271, 230, 247, 
                    211, 225, 195, 206, 180, 188, 146, 145, 144, 143, 142, 
                    179, 141, 194, 178, 209, 187, 228, 200, 276, 250, 
                    270}}]]}, {}, {}, {}, {}, {}, {}}, {{}, {}, 
                 {Hue[0.67, 0.6, 0.6], Thickness[0.01], 
                  LineBox[{1, 105, 89, 75, 64, 56, 51, 2, 3, 4, 5, 6, 7, 8, 9,
                    10, 11, 12, 13, 14, 106, 90, 76, 65, 57, 52, 110, 94, 80, 
                   69, 61, 114, 98, 84, 73, 117, 101, 87, 15, 107, 91, 121, 
                   77}], LineBox[{119, 103, 122, 66, 116, 100, 86, 58, 113, 
                   97, 83, 72, 53, 111, 95, 81, 70, 62, 16, 108, 92, 78, 67, 
                   59, 54, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
                    30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 
                   44, 45, 46, 47, 48, 49, 109, 93, 79, 68, 60, 55, 112, 96, 
                   82, 71, 63, 115, 99, 85, 74, 118, 102, 88, 120, 104, 123, 
                   50}]}, 
                 {Hue[0.9060679774997897, 0.6, 0.6], Thickness[0.001], 
                  LineBox[CompressedData["
1:eJwl0ek2VgEUgOHvU6YGypDf3VKX0AXUHUQzQioZkgwJGSqFytAgEcpQhlKm
MpQITVLCY/nxrPfsvc46+8c5ePjooSPBQCBwhWOs84Uh2nnIHRJJ4jgnOMkp
TnOGsySTQirn2GCOYTpopJZQB5d0lFc8JcLuh07wmt3m3zpNGgHzV4nRtxql
fzVOX+gUTfRzl1bSuUcG58nkAhdppo4enjHJG1aYIdp3/2m8Xto6r/P6jk5a
qCeLy2STQy55hHh/QUfo4hENhNkv6xi9tBFp91M/MsAe8x+N1Vndp2t6ILj9
n3boN31PN4+5Tz5XKeAahRRRTAnXKeUGZZRTwU0qqaKaGm6x051F/cBLnvCA
cPvvOk4fz9ll90s/Mche86p+Zr/n/5qgt3UTpRlkNw==
                   "]]}, 
                 {Hue[0.67, 0.6, 0.6], Opacity[0.2], 
                  LineBox[{125, 124}]}}, {{}, {}, {}, {}}}],
              AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
              Axes->True,
              AxesOrigin->{0, 0},
              ImageSize->Large,
              Method->{"AxesInFront" -> True},
              PlotLabel->FormBox["\"La invierto en tiempo\"", TraditionalForm],
              PlotRange->{{-2, 5}, {-0.1, 1.1}},
              PlotRangeClipping->True,
              PlotRangePadding->{
                Scaled[0.02], Automatic}], 4->
             TagBox[
              StyleBox[
               
               DynamicModuleBox[{$CellContext`p$$ = -1.78, Typeset`show$$ = 
                True, Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = 
                "Menu", Typeset`animator$$, Typeset`animvar$$ = 1, 
                Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
                   Hold[$CellContext`p$$], 0}, -2, 5}}, Typeset`size$$ = {
                749., {237., 245.}}, Typeset`update$$ = 0, Typeset`initDone$$,
                 Typeset`skipInitDone$$ = False, $CellContext`p$29798$$ = 0}, 
                DynamicBox[Manipulate`ManipulateBoxes[
                 1, StandardForm, "Variables" :> {$CellContext`p$$ = 0}, 
                  "ControllerVariables" :> {
                    Hold[$CellContext`p$$, $CellContext`p$29798$$, 0]}, 
                  "OtherVariables" :> {
                   Typeset`show$$, Typeset`bookmarkList$$, 
                    Typeset`bookmarkMode$$, Typeset`animator$$, 
                    Typeset`animvar$$, Typeset`name$$, Typeset`specs$$, 
                    Typeset`size$$, Typeset`update$$, Typeset`initDone$$, 
                    Typeset`skipInitDone$$}, "Body" :> Plot[{
                    $CellContext`f1[$CellContext`p$$ - $CellContext`t$26460], 
                    $CellContext`f2[$CellContext`t$26460], \
$CellContext`f1[$CellContext`p$$ - $CellContext`t$26460] \
$CellContext`f2[$CellContext`t$26460], 
                    $CellContext`IntConved$26460[$CellContext`t$26460]}, \
{$CellContext`t$26460, -2, 5}, PlotRange -> {-0.1, 1.1}, PerformanceGoal -> 
                    "Speed", PlotStyle -> {
                    Thickness[0.01], 
                    Thickness[Medium], 
                    Thickness[0.01], Dashed}, 
                    Filling -> {1 -> Axis, 2 -> Axis, 3 -> Axis}, 
                    PlotRange -> {-0.1, 1.1}, PlotLabel -> 
                    "Desplazo, multiplico e integro", Epilog -> {
                    PointSize[0.02], 
                    Point[{$CellContext`p$$, 
                    $CellContext`IntConved$26460[$CellContext`p$$]}]}, 
                    ImageSize -> Large], 
                  "Specifications" :> {{{$CellContext`p$$, 0}, -2, 5, 
                    Appearance -> "Labeled"}}, "Options" :> {}, 
                  "DefaultOptions" :> {}],
                 ImageSizeCache->{809., {296., 303.}},
                 SingleEvaluation->True],
                Deinitialization:>None,
                DynamicModuleValues:>{},
                Initialization:>({$CellContext`f1[
                    Pattern[$CellContext`t, 
                    Blank[]]] := UnitStep[$CellContext`t]/E^$CellContext`t, 
                   Attributes[$CellContext`t$26460] = {
                    Temporary}, $CellContext`f2[
                    Pattern[$CellContext`t, 
                    Blank[]]] := 
                   UnitBox[$CellContext`t - 1/2] + 
                    UnitBox[$CellContext`t - 3/2] (-$CellContext`t + 2), 
                   Attributes[$CellContext`IntConved$26460] = {
                    Temporary}, $CellContext`IntConved$26460 = 
                   InterpolatingFunction[{{-2., 5.}}, {
                    3, 3, 0, {101}, {4}, 0, 0, 0, 0}, CompressedData["
1:eJw9kj0sQ3EUxV9btOqjnzOxMZubezdWnTtJWLEym80MFmYzieQKEQsiIWkH
kiIi0qZB+6qtz/f+58Q/eUPfO/fc3zn/TswvFReinudFgmfB+z9H96v5vZn7
HzvxJ0sbx9+2u1xIlne+bL02tz+2/mmL7vRs1gm7NhWo/MmOBaJA+WH1UFbz
7eI8PC0LzAJh00JVaePdVkK75TcrhrK5V/o16FPn/Avnnql/sml3Hq0dYvlV
vr/j74qthdirN4YYV+Q5o+8hv++aW7u/LVub4TkQ5DwVvL8UN1a+FvBVBDlu
BT1UBf08yLgr5EmcfemZfi+cr4lbl28I9r8K+noT5H0X9Nmkb4scPv3bghwd
7umKi1vocd+nIM8X936T/4f7f/ndU/QQUegiCp6oQh9VcMUUczEFX5+i1z4F
Z78iz4CCd0BxH3EFd1zRV0LBn1Dcz6AiR1Jx/0lFniHF/Q4pcg0reh5W5BtR
/A9GFDlGmSPFHCnypKlPkyvNuTT5MpzPkDNDnyx5s/TLkjvLfnLkz7GnHHPk
9Q8Lb39/
                    "], {
                    Developer`PackedArrayForm, {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 
                    10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 
                    24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 
                    38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 
                    52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 
                    66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 
                    80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 
                    94, 95, 96, 97, 98, 99, 100, 101}, CompressedData["
1:eJzlwYsz0wEAB/BxPXUeucLosbgeHl2Ux83S9+Lc9dglMgp1uHZ55DzCDXfJ
nUZeFTukeY10NYqktdSZ2dlwbjNp8srw0zJJqZG2qz+kz2dfdGIQ04hEIjFJ
/w97dhKf7VcDj6YQt7KI1yiKXr3fbywBM4pOkwYM4FlNXLa7+RB0S3bh1bT3
EPCS28huKihEcVaRKx/B9D46Nn97ArEdl6M02ilYnzRUHuNMw9cSkza1arCW
+NofFTNQnJGarmfPokCw/lUTOgdtUceunC0ELCiygKtsAqmuiXtJIwS4tZ5y
9iqBFLXy/MoyAc+SEiNTCQFdqeFA/A0Cxn4hR1hGBHiKXGFq0hxcdkpjMsWz
8BFG5N38PQNZbFVWsPUMVvPTLFt3q+EVH8M7aDaNp1QfC8b3SdBVG3rstOOo
8GOkajePQWnlJGP6j2KNNRXJqP8AF9s2Mp88grqLSM5qHkZrgpCiD1XiOLdv
Isd2CLRwYaZ+To5IPqPsz9tBNB6yo9PfDGDBqV0cM9aHUW/PLp2tDDs+JYkk
Gb0IM4Am/SmBSfG9rVYFPaim9G9c8BIjN79BXqUXQVLumEht6cKeUxyuIf8d
eH2Bzso7nYjO9uV5tAjBSb8yP7QsgFm6Az0j6BU4Ad3jDoqXsKaWSxavtWM6
WKY3t3mBHC3JRDPVisVvxmpV2nO43/1VGMZoQRA3faD5Eh+Pzn7OC7z1BKfj
lzp1vY/h3bapMMW5Cf2lKQUifiPOXT9M/evfgEFBc0PCWj2Gt2W5xnbXQdM1
vF91ohYJ3cXi7fbV4IRFVI47PkSZnPWl88ID/AO6tiai
                    "]}, {Automatic}], 
                   Attributes[PlotRange] = {ReadProtected}}; 
                 Typeset`initDone$$ = True),
                SynchronousInitialization->True,
                UnsavedVariables:>{Typeset`initDone$$},
                UntrackedVariables:>{Typeset`size$$}], "Manipulate",
               Deployed->True,
               StripOnInput->False],
              Manipulate`InterpretManipulate[1]]}, Dynamic[Typeset`var$$],
             Alignment->Automatic,
             ImageSize->All]],
            Background->GrayLevel[1]],
           Deployed->False,
           StripOnInput->False],
          Background->GrayLevel[1],
          Frame->True,
          FrameStyle->GrayLevel[0.8235294117647058],
          StripOnInput->False]}
       },
       AutoDelete->False,
       GridBoxAlignment->{"Columns" -> {{Left}}},
       GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
      BaselinePosition->Automatic,
      DefaultBaseStyle->"SlideView",
      FrameMargins->6,
      ImageMargins->Automatic],
     Deploy,
     DefaultBaseStyle->{Deployed -> True}],
    SlideView[{
      Graphics[
       GraphicsComplex[CompressedData["
1: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
N2Psb2g/5G+IhfPpX8GSQq4=
        "], {{{}, {
           EdgeForm[], 
           Directive[{
             Opacity[0.2], 
             Hue[0.67, 0.6, 0.6]}], 
           GraphicsGroup[{
             Polygon[CompressedData["
1:eJwtz8tKAgEABdCpL6g0dSwrM3vaEypISbCoaGE0YrRQeom1yKZQMurnPUKL
A/duLtz8cxx9TAZBMEHEkIwSciD/8cYP93T55pomL/Spcvm/8cgnx1Q454Y2
PfbZY5cdtimxxSYbrLPGKkVWKLBMniUWWSDHPHNkCccfSJNiliQJZpjmiDJn
1GnxzhSnXHDLAzGHXNHgiS9OuKPDgBq/vDICGvMWSw==
              "]]}]}, {}, {
           EdgeForm[], 
           Directive[{
             Opacity[0.2], 
             Hue[0.9060679774997897, 0.6, 0.6]}], 
           GraphicsGroup[{
             
             Polygon[{{216, 154, 278, 252, 272, 231, 275, 248, 268, 212, 226, 
              244, 265, 196, 207, 222, 241, 262, 182, 190, 202, 218, 237, 258,
               153, 152, 151, 150, 149, 148, 181, 189, 201, 217, 236, 257, 
              147, 277, 251, 271, 230, 247, 211, 225, 195, 206, 180, 188, 146,
               145, 144, 143, 142, 179, 141, 194, 178, 209, 187, 228, 200, 
              276, 250, 270}}]}]}, {}, {}, {}, {}, {}, {}}, {{}, {}, {
           Hue[0.67, 0.6, 0.6], 
           
           Line[{1, 105, 89, 75, 64, 56, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 
            12, 13, 14, 106, 90, 76, 65, 57, 52, 110, 94, 80, 69, 61, 114, 98,
             84, 73, 117, 101, 87, 15, 107, 91, 121, 77}], 
           
           Line[{119, 103, 122, 66, 116, 100, 86, 58, 113, 97, 83, 72, 53, 
            111, 95, 81, 70, 62, 16, 108, 92, 78, 67, 59, 54, 17, 18, 19, 20, 
            21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 
            37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 109, 93, 79, 
            68, 60, 55, 112, 96, 82, 71, 63, 115, 99, 85, 74, 118, 102, 88, 
            120, 104, 123, 50}]}, {
           Hue[0.9060679774997897, 0.6, 0.6], 
           Line[CompressedData["
1:eJwl0ek2VgEUgOHvU6YGypDf3VKX0AXUHUQzQioZkgwJGSqFytAgEcpQhlKm
MpQITVLCY/nxrPfsvc46+8c5ePjooSPBQCBwhWOs84Uh2nnIHRJJ4jgnOMkp
TnOGsySTQirn2GCOYTpopJZQB5d0lFc8JcLuh07wmt3m3zpNGgHzV4nRtxql
fzVOX+gUTfRzl1bSuUcG58nkAhdppo4enjHJG1aYIdp3/2m8Xto6r/P6jk5a
qCeLy2STQy55hHh/QUfo4hENhNkv6xi9tBFp91M/MsAe8x+N1Vndp2t6ILj9
n3boN31PN4+5Tz5XKeAahRRRTAnXKeUGZZRTwU0qqaKaGm6x051F/cBLnvCA
cPvvOk4fz9ll90s/Mche86p+Zr/n/5qgt3UTpRlkNw==
            "]]}, {
           Directive[{
             Opacity[0.2], 
             Hue[0.67, 0.6, 0.6]}], 
           Line[{125, 124}]}}, {{}, {}, {}, {}}}], {
       AspectRatio -> GoldenRatio^(-1), Axes -> True, AxesOrigin -> {0, 0}, 
        ImageSize -> Large, Method -> {"AxesInFront" -> True}, 
        PlotRange -> {{-2, 5}, {-0.1, 1.1}}, PlotRangeClipping -> True, 
        PlotRangePadding -> {
          Scaled[0.02], Automatic}}], 
      Graphics[
       GraphicsComplex[CompressedData["
1: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
N2Psb2g/5G+IhfPpX8GSQq4=
        "], {{{}, {
           EdgeForm[], 
           Directive[{
             Opacity[0.2], 
             Hue[0.67, 0.6, 0.6]}], 
           GraphicsGroup[{
             Polygon[CompressedData["
1:eJwtz8tKAgEABdCpL6g0dSwrM3vaEypISbCoaGE0YrRQeom1yKZQMurnPUKL
A/duLtz8cxx9TAZBMEHEkIwSciD/8cYP93T55pomL/Spcvm/8cgnx1Q454Y2
PfbZY5cdtimxxSYbrLPGKkVWKLBMniUWWSDHPHNkCccfSJNiliQJZpjmiDJn
1GnxzhSnXHDLAzGHXNHgiS9OuKPDgBq/vDICGvMWSw==
              "]]}]}, {}, {
           EdgeForm[], 
           Directive[{
             Opacity[0.2], 
             Hue[0.9060679774997897, 0.6, 0.6]}], 
           GraphicsGroup[{
             
             Polygon[{{216, 154, 278, 252, 272, 231, 275, 248, 268, 212, 226, 
              244, 265, 196, 207, 222, 241, 262, 182, 190, 202, 218, 237, 258,
               153, 152, 151, 150, 149, 148, 181, 189, 201, 217, 236, 257, 
              147, 277, 251, 271, 230, 247, 211, 225, 195, 206, 180, 188, 146,
               145, 144, 143, 142, 179, 141, 194, 178, 209, 187, 228, 200, 
              276, 250, 270}}]}]}, {}, {}, {}, {}, {}, {}}, {{}, {}, {
           Hue[0.67, 0.6, 0.6], 
           Thickness[0.01], 
           
           Line[{1, 105, 89, 75, 64, 56, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 
            12, 13, 14, 106, 90, 76, 65, 57, 52, 110, 94, 80, 69, 61, 114, 98,
             84, 73, 117, 101, 87, 15, 107, 91, 121, 77}], 
           
           Line[{119, 103, 122, 66, 116, 100, 86, 58, 113, 97, 83, 72, 53, 
            111, 95, 81, 70, 62, 16, 108, 92, 78, 67, 59, 54, 17, 18, 19, 20, 
            21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 
            37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 109, 93, 79, 
            68, 60, 55, 112, 96, 82, 71, 63, 115, 99, 85, 74, 118, 102, 88, 
            120, 104, 123, 50}]}, {
           Hue[0.9060679774997897, 0.6, 0.6], 
           Thickness[0.001], 
           Line[CompressedData["
1:eJwl0ek2VgEUgOHvU6YGypDf3VKX0AXUHUQzQioZkgwJGSqFytAgEcpQhlKm
MpQITVLCY/nxrPfsvc46+8c5ePjooSPBQCBwhWOs84Uh2nnIHRJJ4jgnOMkp
TnOGsySTQirn2GCOYTpopJZQB5d0lFc8JcLuh07wmt3m3zpNGgHzV4nRtxql
fzVOX+gUTfRzl1bSuUcG58nkAhdppo4enjHJG1aYIdp3/2m8Xto6r/P6jk5a
qCeLy2STQy55hHh/QUfo4hENhNkv6xi9tBFp91M/MsAe8x+N1Vndp2t6ILj9
n3boN31PN4+5Tz5XKeAahRRRTAnXKeUGZZRTwU0qqaKaGm6x051F/cBLnvCA
cPvvOk4fz9ll90s/Mche86p+Zr/n/5qgt3UTpRlkNw==
            "]]}, {
           Directive[{
             Opacity[0.2], 
             Hue[0.67, 0.6, 0.6]}], 
           Line[{125, 124}]}}, {{}, {}, {}, {}}}], {
       AspectRatio -> GoldenRatio^(-1), Axes -> True, AxesOrigin -> {0, 0}, 
        ImageSize -> Large, Method -> {"AxesInFront" -> True}, PlotLabel -> 
        "Elijo la azul", PlotRange -> {{-2, 5}, {-0.1, 1.1}}, 
        PlotRangeClipping -> True, PlotRangePadding -> {
          Scaled[0.02], Automatic}}], 
      Graphics[
       GraphicsComplex[CompressedData["
1:eJztlns0lekex7c7KZcoalKSUxIl3Ut+wrjGWWGaEo1LKspkSqiRpBAj90Zu
uaQUkmtKpre9yV0uidxrJyaXvV+XidS2Z5+1ep530XLmv/PX2ctae33W831/
9vO8797fz0qHUxZO/DQabQkfjfaf9wjWnTYul0tMfq9fl2FBB5kTd7mb6zjE
frHVSS09peBREH1Q5sRnolXB1VpaugK2hZc62m38RNw/ZHtG268a/ErkTNr5
JwjHzOb2e/YvILtw/xFO2jhxThSMnyc0wvY9r9eHnRolsmP8j2tsb4a0WH31
6nkkoRXUNnH+11bY5J8lecRhkAh8JFEWrNkBbZ+t/iVN6yf83eTrOjR6QHf+
y1QpYBIahg6RXXJMeOGXxdeR2EFc/PWtE6uyF2CD0XqjgSZC1SJrT3t9P7gu
X/5DwSiDkGdueFh/YxByZEW+dOr7E9r8NWCbyYaaZoPF9WV0oH19GddEXNPV
bcJcyPzrhQOtA7O544+K7N1MzP452V71GX2Ypxw1nG09BjGrP8lvqFxEYubm
hmiNG45iJjvOu3vcG8d8+czqL0HMj5hDirPS3aQ+Yc7fbLQi2/Uz5gvLUvq8
UzmY8+JFdu8ToOkgfkvLulG3gY/iZRsSFhrxY3ZrKhES8BLA3KC9Vq4kShDz
EP/l4u57Qphj7PpLs1qFMcucVT2rNyKCefkqrxB/JTHMU4FppuEwD3OE/tME
wR/FMRfFMS2VA+ZjfpD+Pm9+ygLMW83HPJNfSmDWWu3Zb06TwlxO6+3LDaFY
XmV/7ICyNOamjKIkkXyKXdokTx3UXoi5ysp1xPcVxRHriitCHGQwpz1x/sjl
UtyUlX4yrm+a8LhSMCEWyoBHYd3K/IYFRNcJcTWV8GHwdQwwuOSWg+9H9pZC
+QzlGsxxY9I/GeRS8/LM1qwyO8MlLCqXr7o9TAfjo9eObVn8B6Hb2eW3JnwI
mvnEzWvC4vH1WkI+MSXu5Zh/lzwa9SGImmd++qeyRPYdIqCzynxFLAt+Ew5+
LMl5jPNJrX+o3npN5ZWWH/O585hLqE3KJl1IokPV8dNX+p8+I8527NE5ITME
3p4iDTbDvvh6QVdmy/NlZZijFcLVd3lQ83qMJEQanz4gyI2XP12UYYHwFlHf
yq2FOJ/wvr9svIzK/7VKbKm7VTpeP7/NXuCVTgIRWWC/V2olG1KrosL3DVF5
a2ERtZedXGLl1X2cD150iNerHKp7TSdKhao/tb0ahEhlY96fA3FOr1+mZJgN
fyZHe1STDDw/Uvn2lONJap5su6bVFpk8YpPUEsZvjcOgt9fwXdrLPJyPH/oS
ofCEyrtZBL5RC03F68IioqsEr6YShe9Lx2s7WZDccNf2PJPKVx0W6dASiMT5
D3Z5z1J+iSKEakqSB5zYcIvhU6rykcp7TLX4ObO4RMr2TCbhRAfBjWOKdCcG
sStq4zz9okEweSe8MNHNk0g58Ul8TyMb2otdy2utqf0tvLvB3usYNa+v4GrJ
d+r5RHpc1ceKnGFgtvbJyqTm4vxSt8DJjQ+p/H3ncj2xdcl4PaMkf6zhSRqx
ImKN77tiFihabSoL7aLygUvF9QbPBeO8Zq2Yw662GGKnx1o/Fz02KBmIqe4e
ofJl+yTdd1x2xXllGLeR/UytXxnXzt48wSW+t6A/0rShw6N00Sc7sxjEydwF
D4TuDoKqnj/juo8vsUnklo/xUzY0GVqz6iSp/Td9cI/md6Lm/Ts1n5Qozifc
LZuiziQPQ27iQ3UTMWr/7bm160ryqXzMQM0AazQRr3vHiNkUvbpNTC1IoX+5
x4I3170m5DuoPL9xkFhavj/Ot1wq1BRdEEc45FZkbddkAzPQ3LaCReW/Pp84
3+u7I/zmJLXu4yusrVB5gvhyP4yl18uGYVNx9XXmXjh/hJO9Npgz97zZzz/q
c7SO+hwx6nPEqM8Roz5HjPocMepzxKjPEaM+R4z6HDHqc8SozxGjPkeM+hwx
6nPEM/uchJl9TsLMPidhZp+TMLPPSZjZ5ySgPr8TdOPwz81sQH3On9AXIOc2
CKjPFY3mycnc7wPU51Py+SJDO5mA+rxhkZn97qcdgPp8s3qPn6FxE6A+l182
US0/xID/9/n/ps8Roz5HPLPPSZjZ5ySoDpv6TzQMY/59a3JA9/oRaI4kRnVT
h4FceyAnrHkaaPYXpgSL8sDkRZtLWCx1P+fyAcTIBxDP9AESIlW0PTNuDWFm
Tt7LtEwlQUsi6+6BJyzYesvbNGDXNCTXbjGKNyyB6QLS0s2c+v9z+QPimf5A
AiP3YJT+NAtzRs6mRbGuXHg2EHSwa28qzOUX+P589QvEM/2CBNH29doSNiSQ
pqmX3xny+q1HIpaPzQENvqBtY4HP4ICKd+UbFerzz+UfiD3qLebfPEZ9XrPh
5w6yK7lgt183/UxXJvx3HyEB+Qhal4i2WzoYzcbrIu4pFQrFXNCZTpUL9YqY
01cQI19B3OA+/YB2eB/mOJNfAge3k1DrojCiEsoGtelWICo5kCyhwydcTAch
Jp1/yWJq/3P5DOKb4mFiTVPToGggeazHIgdm+wzyF8R/KnW1xBhT+zsQ6fJz
RxQXaC6HnJTF4v/Bb0hAfoPWNwv12mq/oeY9/OG1ot0b3jyTjDU9SRfn9B/E
yH8QI/9B3Ou3UM16DQnbp9rTTXPZYHVNS+ZmIQfsrn93VNKSAZ1Pe1cUzqfO
ay4/QlwRN9aZ0z8N4ZblGqNXcmG2HyEfQnxpZf2eYl/e85+0LeRUY9I3foR8
CHHKXqWS6GLqPLp7tca163jnEXHtrb9d0D/4Egm93U3cMX7efnWtafJTbLhW
fsbs0hjv+r7T8k6c4zCXTyFGPoUY+RRi0RWOPhHLed8/+g6BLgbPn5tZ3guy
OPDsQJB8dBIDDNU91guIUuc5l28htmHeNlDsngad9pTrnxXyYLZvIb9CvNj5
UuZaT973qasprHppyje+hfwK8Wk1tm12KW//Fc6ijSqh3/iWjZzUsh3NVvj8
fN6WrZcZo85fSWJ1EfmBd333SJuRpAfM5WOITRKDg+tbePlDucU7b1yZ5We8
3y8zveOH5/POz+ncBr1+Nkz60N9Jc3h5HdHxt26GMNvfZvsZ8jfEfwPxzbhV

        "], {{{}, {
           EdgeForm[], 
           Directive[{
             Opacity[0.2], 
             Hue[0.67, 0.6, 0.6]}], 
           GraphicsGroup[{
             
             Polygon[{{1, 280, 281, 77, 121, 91, 107, 15, 87, 101, 117, 73, 
              84, 98, 114, 61, 69, 80, 94, 110, 52, 57, 65, 76, 90, 106, 14, 
              13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 51, 56, 64, 75, 89, 
              105}}]}]}, {}, {
           EdgeForm[], 
           Directive[{
             Opacity[0.2], 
             Hue[0.9060679774997897, 0.6, 0.6]}], 
           GraphicsGroup[{
             
             Polygon[{{216, 154, 278, 252, 272, 231, 275, 248, 268, 212, 226, 
              244, 265, 196, 207, 222, 241, 262, 182, 190, 202, 218, 237, 258,
               153, 152, 151, 150, 149, 148, 181, 189, 201, 217, 236, 257, 
              147, 277, 251, 271, 230, 247, 211, 225, 195, 206, 180, 188, 146,
               145, 144, 143, 142, 179, 141, 194, 178, 209, 187, 228, 200, 
              276, 250, 270}}]}]}, {}, {}, {}, {}, {}, {}}, {{}, {}, {
           Hue[0.67, 0.6, 0.6], 
           Thickness[0.01], 
           
           Line[{1, 105, 89, 75, 64, 56, 51, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 
            12, 13, 14, 106, 90, 76, 65, 57, 52, 110, 94, 80, 69, 61, 114, 98,
             84, 73, 117, 101, 87, 15, 107, 91, 121, 77}], 
           
           Line[{119, 103, 122, 66, 116, 100, 86, 58, 113, 97, 83, 72, 53, 
            111, 95, 81, 70, 62, 16, 108, 92, 78, 67, 59, 54, 17, 18, 19, 20, 
            21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 
            37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 109, 93, 79, 
            68, 60, 55, 112, 96, 82, 71, 63, 115, 99, 85, 74, 118, 102, 88, 
            120, 104, 123, 50}]}, {
           Hue[0.9060679774997897, 0.6, 0.6], 
           Thickness[0.001], 
           Line[CompressedData["
1:eJwl0ek2VgEUgOHvU6YGypDf3VKX0AXUHUQzQioZkgwJGSqFytAgEcpQhlKm
MpQITVLCY/nxrPfsvc46+8c5ePjooSPBQCBwhWOs84Uh2nnIHRJJ4jgnOMkp
TnOGsySTQirn2GCOYTpopJZQB5d0lFc8JcLuh07wmt3m3zpNGgHzV4nRtxql
fzVOX+gUTfRzl1bSuUcG58nkAhdppo4enjHJG1aYIdp3/2m8Xto6r/P6jk5a
qCeLy2STQy55hHh/QUfo4hENhNkv6xi9tBFp91M/MsAe8x+N1Vndp2t6ILj9
n3boN31PN4+5Tz5XKeAahRRRTAnXKeUGZZRTwU0qqaKaGm6x051F/cBLnvCA
cPvvOk4fz9ll90s/Mche86p+Zr/n/5qgt3UTpRlkNw==
            "]]}, {
           Directive[{
             Opacity[0.2], 
             Hue[0.67, 0.6, 0.6]}], 
           Line[{125, 124}]}}, {{}, {}, {}, {}}}], {
       AspectRatio -> GoldenRatio^(-1), Axes -> True, AxesOrigin -> {0, 0}, 
        ImageSize -> Large, Method -> {"AxesInFront" -> True}, PlotLabel -> 
        "La invierto en tiempo", PlotRange -> {{-2, 5}, {-0.1, 1.1}}, 
        PlotRangeClipping -> True, PlotRangePadding -> {
          Scaled[0.02], Automatic}}], 
      Manipulate[
       Plot[{
         $CellContext`f1[$CellContext`p - $CellContext`t$26460], 
         $CellContext`f2[$CellContext`t$26460], \
$CellContext`f1[$CellContext`p - $CellContext`t$26460] \
$CellContext`f2[$CellContext`t$26460], 
         $CellContext`IntConved$26460[$CellContext`t$26460]}, \
{$CellContext`t$26460, -2, 5}, PlotRange -> {-0.1, 1.1}, PerformanceGoal -> 
        "Speed", PlotStyle -> {
          Thickness[0.01], 
          Thickness[Medium], 
          Thickness[0.01], Dashed}, 
        Filling -> {1 -> Axis, 2 -> Axis, 3 -> Axis}, 
        PlotRange -> {-0.1, 1.1}, PlotLabel -> 
        "Desplazo, multiplico e integro", Epilog -> {
          PointSize[0.02], 
          Point[{$CellContext`p, 
            $CellContext`IntConved$26460[$CellContext`p]}]}, ImageSize -> 
        Large], {{$CellContext`p, 0}, -2, 5, Appearance -> "Labeled"}, 
       SaveDefinitions -> True]}]],
   DynamicModuleValues:>{}],
  Setting[#, {0}]& ]], "Input",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{3.4802835672728863`*^9, 3.480284220220233*^9, 
  3.4817865320638523`*^9}]
}, Closed]]
}, Closed]]
}, Closed]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Peri\[OAcute]dica", "Subtitle",
 CellChangeTimes->{{3.4791419789909353`*^9, 3.4791419801039987`*^9}, {
  3.4804295502035637`*^9, 3.480429551338629*^9}}],

Cell[CellGroupData[{

Cell["Definici\[OAcute]n:", "Subsubsection",
 CellChangeTimes->{{3.479142032719008*^9, 3.4791420455777435`*^9}}],

Cell[TextData[{
 "La convoluci\[OAcute]n peri\[OAcute]dica entre dos se\[NTilde]ales cont\
\[IAcute]nuas ",
 Cell[BoxData[
  FormBox["x", TraditionalForm]], "None"],
 " e ",
 Cell[BoxData[
  FormBox["y", TraditionalForm]], "None"],
 "  peri\[OAcute]dicas de per\[IAcute]odo ",
 Cell[BoxData[
  FormBox["P", TraditionalForm]]],
 " se define como:"
}], "Text",
 CellChangeTimes->{
  3.4791420637377825`*^9, {3.4791421488876524`*^9, 3.479142151696813*^9}, {
   3.4800832248539553`*^9, 3.4800832257730083`*^9}, {3.4800832743677874`*^9, 
   3.4800833030404277`*^9}, {3.4800836565236454`*^9, 
   3.4800836807360306`*^9}, {3.4804295552488527`*^9, 3.4804295673275433`*^9}}],

Cell[BoxData[
 FormBox[
  RowBox[{
   SubsuperscriptBox["\[Integral]", 
    SubscriptBox["t", "0"], 
    RowBox[{
     SubscriptBox["t", "0"], "+", "P"}]], 
   RowBox[{
    RowBox[{"x", "(", "p", ")"}], " ", 
    RowBox[{"y", "(", 
     RowBox[{"t", "-", "\[Tau]"}], ")"}], 
    RowBox[{"\[DifferentialD]", "\[Tau]"}]}]}], 
  TraditionalForm]], "DisplayFormula",
 CellChangeTimes->{{3.4791443453232813`*^9, 3.4791443781051564`*^9}, {
  3.4800833080177126`*^9, 3.480083323663607*^9}, {3.48008335623647*^9, 
  3.4800833896443815`*^9}, {3.480429577181107*^9, 3.4804296254428673`*^9}}],

Cell["\<\
Es decir, es igual a la convoluci\[OAcute]n infinita pero integrando en un \
per\[IAcute]odo.\
\>", "Text",
 CellChangeTimes->{{3.4804296327842875`*^9, 3.480429671563505*^9}}]
}, Closed]],

Cell[CellGroupData[{

Cell["Interpretaci\[OAcute]n geometrica", "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.479142142709299*^9, 3.4791421466145225`*^9}, {
   3.479142189719988*^9, 3.479142189822994*^9}, 3.4802835672728863`*^9}],

Cell["\<\
Las siguientes se\[NTilde]ales ser\[AAcute]n usadas como ejemplo:\
\>", "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.479142193049178*^9, 3.479142233616499*^9}, {
   3.4791424491228247`*^9, 3.479142465951788*^9}, {3.4791429304213533`*^9, 
   3.4791429349756145`*^9}, {3.479143355135646*^9, 3.4791433628390865`*^9}, {
   3.4791441475879717`*^9, 3.4791441515381975`*^9}, 3.4802835672728863`*^9, {
   3.480809425446665*^9, 3.4808094297769127`*^9}}],

Cell[BoxData[
 PanelBox[
  GraphicsBox[{{}, {InsetBox[
      GraphicsBox[GraphicsComplexBox[CompressedData["
1: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
        "], {{
          {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
           GraphicsGroupBox[{PolygonBox[CompressedData["
1:eJwl0blOVAEchfE7YKWA2rBWhpJNTKgEFKqhIiEZtmQoCAmrYmHYKigsNBJQ
oGJkqeABCDsdqBQs6gOwBuQFQIGC3w3Fl3PO95+bzJ151txd8zYpCIIIvmI0
OQhG8FCfdNhxyMei3YqX2OQvuRgOwmfwCAl+lyvAkt2GMy4TvVwEpdyWfaXX
4tD+ghR84/e4Qizb7TjnstDHJaGM+27/0+twZKf7vlFuLnL/Djd6AT7bUbcB
PV3P0+P6uh4P31NP9fkpuc81c0WyRLZyK+F76WX6O5lwq5ZD9gfZ4f5Xz0a7
3e9eKd/bgzLZzpUxu0cu2PXyk/1Rlnv+h/6fb7Hrw99Hhn/IsVuGXqXP82P2
rV6IYTsj/F/cm+wNPc19Wv+lP8eq3YkLLgcD3AO84n7a13oDTuxxPMYM/5sr
xprdhdfY5m+4RpzaE3iCWf4P9wLr9htU4CnuAKErR/A=
              "]], PolygonBox[CompressedData["
1:eJwV0b0vXXEcx/HjWTvoflHuYC7tIClFEwulDWkisd2rlQhBItRDaJMmOjCo
xEbpWPfSzUzieaKtyUNr1ov/gNdveOf7eX++5+Sc3znx5EB7f3YURVlYwHxO
FH1FTP5hcWrxHNt8GE040mcjob/iiyjGqu5MV4MdPoJmHOtzkNT/50soQUp3
rqvFLv+AjK4MU7pCvNL94rno4hke834tPMW/8Tu5CnM8hif2Cb4pl9qn5Qv5
BartevievkhukJf1bfJneVR/bZajV/fRrtEc4Q/kCrkjXGdu8E5zls+Ed3Lv
bzkP3fydfZ05GM5jXofvZLbyITNt/9ac5l/MZfvIfMr7wn8I5zcnebFcKSfl
LfmxS9fkv+EZ2OeP7F/qVvgYv5Hj+MQfolX3h+fjPb/hK+Hfu++Zbl5XgjLd
Ov8n1+OAj+M1TvQF4Xz6W/4d5fipu9Q14JBP4A3iuAfWaEZZ
              "]], PolygonBox[CompressedData["
1:eJwl0ElLVQEchvGjkblKvX6AtMApbbBF6spFRZol3YWmNkjqKhwhEEJaXLVr
oGCR5boWaQm2yiHd6CewGTRzqWm6sLRs4e/Q4uF9n/d/LpxzM2+3RlsSgyBI
wCgK8eRAEDxGnv7WcdXxIhZ4DNU4jgm3NXsZ3vNuXMOi/TCa7Tv8JfIxafth
K8cH3oNtWxZ6bCmosS3xFLTwXT6Cg97nrG3IloEC2xRf1y/hI4945pztOe/l
v/Rs9PJU5LjX8km91v2bnopWXurWof+xH9Gv6nfluFuVjCf+/3+S9KLw3eRT
t8vyPo/JTF4oG/k9OcdvyUHeL0/4/bS+YW/gFbJY3rF1yU/u6fI875Av3KOy
mz9w+y1zwm6/YO/U0/RcvU6f0us8txzuaON/eYZ7lL/hr/ghXsyf8aM4aXvH
f4bfg888jh1bLuK2CK7bvvMI2vkef41TmLFt2q7gC+/DDZzGrNuWvRJf+UPc
xIo9PfxW+z8+hmTvVmIbth3DGd7E5/V6/ZE+IPcBBm5UQg==
              "]]}]}, 
          {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
           GraphicsGroupBox[{PolygonBox[CompressedData["
1:eJwV0btPk2EYhvEPibjAohzaBExMXBUSsMAAJggquBhNTIhAGxMT49BaDmGg
DproIAkoAx6IDHjgsDsCApvHBUHdFSj+Cbbwe4crz33dz/vle/v11K3MtfSR
KIpKMIWnpVH0DHH5MoaxgVYHfmPB4RifQR4pXYnuOy7xIayjRf8L8/oa/gp7
SIYX6b7honiM38dJ/g+Dull+Xq5wjzXezH/iva6ar8op+Wy4p5yTe+RJuUEu
4qVzj8zr+iX9FTku7+ozcps8oL9tHphfdV12T/i43Gt+0I+aN/hps4w/MEf4
BTPH75p1fB9Zzz/mD+Wr5mv7rNnOy82P9nfkhJyw28Y7XqVfkZPyGbuYPCZ3
yxNyvVzAC+cWeU/4D+x2eD8v4ouukx8Nz6KW53EvfC+c023hra6SP8df9OkK
+Bx+U/g24S5o0v3AG/0JPo0/uKn7j0/6Dp7GMhp1m5jTH+eHbYlIOQ==
              "]], PolygonBox[CompressedData["
1:eJwV0DtMUwEchfFr6yC0NbADRtoijCZi2AytlYVoLWokJAw6VAEhJCQmRFta
SHQhMYKTk4Iw4QNBnF0VlQVfm4o6AkVmfh2+nPOd/73p4/i1kdxwKAiCQ3iM
h+EgmEGbfgVlbKDLA//wxsOtfBH7GLLFbD9wmR/lU0jyCkq2zzhn+4tV2wl+
TH+E0/ywz1uwveBZ3sT/80Ee5d9xib/lvdX33WP6JBJ8FxPuT3lar3f/xAf0
Dj1j/4MV3mJ/IPvt72zj8jo/KZt4WRZ4t5zlt2Q7D8tn3r0v71V/q3zuPiYv
8Ea5516Uo/yMHHDPywj/hh73adlnW3O7Wv0+elS/rWf0sh7Xd1D0/BOe0uvc
PvKzfAuvbUneqM/gFA95Zt62xM/zBl7hN3kt/4ocj/ASmvk2CrZ1pG2/sWxL
8Dns4oatxvYFF/ldfEDK/guv7PHq/48d5G1HbJvI8jt4j077T7y0N/MDctxK
Uw==
              "]], PolygonBox[CompressedData["
1:eJwt0jtPUwEchvGDgFJWWp1rFKFl8wIWFhbZDLRNWJpgqzQOagfUhITBwaVy
6WABBVcdBVuYGLgYwNsnEHVQ+ADeEjFR+DU6PHnf5/3n5DQnjeYKyVtHgiCo
w5P/Wa4PghJCegJ5LCPu+A5zHmjiFzGMJcTsb/HY7Rgv4RPStp94ae8K/r3g
Lk7wPVwzVdFue4NHtqM8oo+jg//GlO0Z79MjfttHflPv1lP2H9jgnfaiHLRX
bWn9pH5gH9F79Tv26/I438VVt/v8nn5ZzrsXZA9vlhX3MZnn52Sbe1a+lrO2
RvcJPqVn5Ip9VGZ4TIZrrvfpD/S4vo9Jzz3ll/Sw2wd+Q0/oSft3rPML9oqe
0qNuf/ltHuFfkONzvFsPub/gZ/grzNgaeIteRIz/woRtBwO2b1izned/at+J
h/lnZPkiWm3bmLZ5RTCO9+i3fcVq7dvwK1jAadsWyvba/+sshvAcp+ybeOhw
CCypSpQ=
              "]]}]}, {}, {}}, {{}, {}, 
          {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
            "]]}}}],
       AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
       Axes->True,
       AxesOrigin->{0, 0},
       Method->{"AxesInFront" -> True},
       PlotLabel->FormBox[
        "\"\\!\\(\\*FormBox[\\n RowBox[{\\\"x\\\", \\\"(\\\", \\\"t\\\", \
\\\")\\\"}],\\n TraditionalForm]\\)\"", TraditionalForm],
       PlotRange->{{-1, 2}, {-0.9999990687548602, 0.9999987329187721}},
       PlotRangeClipping->True,
       PlotRangePadding->{
         Scaled[0.02], 
         Scaled[0.02]}], {192., -116.80842387373012`}, 
      ImageScaled[{0.5, 0.5}], {360., 222.49223594996212`}], InsetBox[
      GraphicsBox[GraphicsComplexBox[CompressedData["
1:eJyF1XkwnGccB/CXxApig2YjNlmaBC1KXFk6tEuiEkddUbZpQqUaTIU0R4cg
KT2iuWpS5yDOodKISFU3rSuiRlxDrJ0t2z3MRneVWIpsFqtpJ36/2fef7szO
zmfe9/k+3+d5j911PDnsY22CIK68+P77+1vULtHa2mw78d9HwXJ1O2hZzHgK
9mo3FlWaTIP3ltfeDLOdAudW1GTnB8jA+WH+Ml+fSfD5o/cDy6Kl4GXagHVs
2AR4ftbPrjVIDC54xzIhfVyw7vYv9NUnInv44H2ZSUlZKi54xL2xd5Q1DH6v
7LzlxvhecI5jR/fKWCc4jXC6GBT5E3jH9VtGr9DywHekWhV6yVWs9T7BBrqc
KeV9cJFDkWf2jS6wqVmJr7y3Hyz0yhhJT3oMTnxIU7k688Adk7H7th4cw3w2
I65qmxCc2qW1+yu5eN3t9vZD9EDFBFjtOUL9hCsFO5c6XWNIJsEKgbXEQyoD
9z8McbzXNQU2WB7VaxmYBsf9/q2Q0fQUXBNwquvcIQX06QvrjrIOmANfrG9e
yvKcB8fe5R622f83mE+5dieNuQA2HjBa2GC9CE736FSP2iyBz60a6obvfAYu
j7vE3bFHCX1yvPuvmlk9B1OTf9j/YkvBbT6c1mb6Mnj1ZDQzgroC1tJ9XGS3
imYeOt3pT6jBKsFtGW0e/VFDzuza2hp4xb8pc4CKz8dSlkFdTogE3GYiiE5r
EcL9Y/i6sUw+PAbWrv7gwHclt8DeHu87EY8yYb0j6gNdbvxGcLaF9+C4gwDc
UpJVcFghwvOV8Tdl0xLo9+aU88J0xwz4iDvnxy8rZ8HuwcXGg4/weqbslGnT
qnD/L9/rnfm5DPe/kFt3l16N++/QbT6tn4r7EfrcbVx1WwTrWRQvz1rFpIBT
pBHmrTrYV7zJ0i/UDvsQ7ESVThTOZ/vG59Llvj9g/AUXdr2fpADvL3Wsr/JT
fB6mXKy3CDbjemiGNpIECea9u3Q6sNQE3yfsr+uuHrW/AvlHivP5TkzMMw3R
TjAXYr8hUeqfOR2Yt4lymfGrK66XbnfySVNMBBxPinFpaqvHvB5Wn/x7W+w3
zLag/7UB9/PVM0KPekfsN5rQUBG0Hce7+xy7HtqBfRzyy5s5Pcdhfk4VEcWb
w35L89Rf6HLsJ+rP2EILx7yooAd9NkrMqxZTBpl5Z2H86lBDZIMJ9jMZ9qAc
08PxlG01Vg8mTkH+CX6uRbkc569sfNuVp4vrofDCeRtncL5C7T1veb2GebxL
3aohdjDk6SUnlmxWYZ7lZ1W9+n24nnlFOj9eR0GeD/K2mxaGmBng/Bfy8/i1
uREw/sNvmBlzi89I1wPzzpYujowaYd7L5w3Gv+wL5++tFT/ZuoJ5STeGz+zW
I19v9P/lke8P8vrIzz/5epL3n7y/5L6a//cEoTmeIDTHE4RmfzjOIh0Ha/aD
fLDm/hCEZj+C0Hz/rp+vBP8D1VwLPA==
        "], {{
          {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
           GraphicsGroupBox[{
             PolygonBox[{{50, 138, 139, 87, 97, 42, 66, 43, 44, 45, 46, 47, 
              48, 49, 67}}], 
             PolygonBox[{{104, 130, 131, 114, 93, 106, 68, 83, 53, 73, 10, 54,
               11, 12, 13, 14, 15, 16, 55, 17, 79, 69, 99, 91, 110}}], 
             PolygonBox[{{95, 134, 135, 108, 98, 113, 89, 103, 80, 94, 75, 85,
               26, 60, 27, 28, 29, 30, 31, 32, 61, 33, 71, 62, 90, 81, 
              102}}]}]}, 
          {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
           GraphicsGroupBox[{
             PolygonBox[{{1, 128, 129, 101, 109, 78, 88, 9, 52, 8, 7, 6, 5, 4,
               3, 2, 51}}], 
             PolygonBox[{{115, 132, 133, 59, 70, 25, 58, 24, 23, 22, 21, 20, 
              19, 57, 18, 74, 56, 96, 84}}], 
             PolygonBox[{{112, 136, 137, 116, 105, 111, 92, 100, 77, 82, 65, 
              72, 41, 64, 40, 39, 38, 37, 36, 35, 63, 34, 86, 76, 117, 
              107}}]}]}, {}, {}}, {{}, {}, 
          {Hue[0.67, 0.6, 0.6], 
           LineBox[{1, 51, 2, 3, 4, 5, 6, 7, 8, 52, 9, 88, 78, 109, 101}], 
           LineBox[{114, 93, 106, 68, 83, 53, 73, 10, 54, 11, 12, 13, 14, 15, 
            16, 55, 17, 79, 69, 99, 91, 110, 104}], 
           LineBox[{115, 84, 96, 56, 74, 18, 57, 19, 20, 21, 22, 23, 24, 58, 
            25, 70, 59}], 
           LineBox[{108, 98, 113, 89, 103, 80, 94, 75, 85, 26, 60, 27, 28, 29,
             30, 31, 32, 61, 33, 71, 62, 90, 81, 102, 95}], 
           LineBox[{112, 107, 117, 76, 86, 34, 63, 35, 36, 37, 38, 39, 40, 64,
             41, 72, 65, 82, 77, 100, 92, 111, 105, 116}], 
           LineBox[{87, 97, 42, 66, 43, 44, 45, 46, 47, 48, 49, 67, 50}]}, 
          {Hue[0.67, 0.6, 0.6], Opacity[0.2], LineBox[{123, 122}], 
           LineBox[{124, 118}], LineBox[{125, 119}], LineBox[{126, 120}], 
           LineBox[{127, 121}]}}, {{}, {}, {}}}],
       AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
       Axes->True,
       AxesOrigin->{0, 0},
       ImageSize->Medium,
       Method->{"AxesInFront" -> True},
       PlotLabel->FormBox[
        "\"\\!\\(\\*FormBox[\\n RowBox[{\\\"y\\\", \\\"(\\\", \\\"t\\\", \
\\\")\\\"}],\\n TraditionalForm]\\)\"", TraditionalForm],
       PlotRange->{{-1, 2}, {-1., 1.}},
       PlotRangeClipping->True,
       PlotRangePadding->{
         Scaled[0.02], 
         Scaled[0.02]}], {576., -116.80842387373012`}, 
      ImageScaled[{0.5, 0.5}], {360, 222.49223594996212`}]}, {}},
   ContentSelectable->True,
   ImageSize->Medium,
   PlotRangePadding->{6, 5}]]], "Input"],

Cell["\<\
Al igual que en el caso de la infinita, entonces, lo primero que debemos \
hacer es lo siguiente:\
\>", "Text",
 CellChangeTimes->{{3.4804300612197924`*^9, 3.480430075390603*^9}}],

Cell[BoxData[
 PanelBox[
  GraphicsBox[{{}, {{InsetBox[
       GraphicsBox[GraphicsComplexBox[CompressedData["
1:eJyFvHk0ld0bPk5UhgyJDEVKkZmkFLo1UVIqhTKkiAZpViRKFDKVKVKZGg1J
qEybSGbHPM+c+ZwHxzx+n89vfd9jve/3j59/rGs9z773vfe9931d11oeGy9c
P3lxGQcHhyw3B8f/fv+x3dizuIghjv/vZxi27zTa/FqaycYGaHVPggidjdXj
Pr49qURl4/D4D36RR8hsHHnSmGx4gMjG7ta/TN6dG2TjWbFqeYeT/Ww8ih1W
zj/Wy8ZRBzdf9ujo/AejJ3wLjhZlrWys/djFxXumkY0bdL5VNEEdG59+576Z
+1IFG4dqFJbOtf9m4wccml7HLLLYeF3wF+E1YhFsnDbIGc97PRH+yceUf+VP
6tQvNo5Wi9bze1nCxuKSsYaUiio27jZ42ODhUs/GzsViM9u3NbNxIdFBW9So
fSm+pbRT4tpuNnYr4dzkS+n9ByNVVYKUyXA/Gy/oNQhebRxk421vNIOk+4hs
PNwp36c7SGbjquLjGhklVDbmn23izaums7FTW0i3dCaTjT8cuVFy99AwO5/K
k6W28kdG2NgrNXvCW2+UjR3SG80U97HYuHVFUNqDHWNsvLpaeIxLfpyNPXR/
LzQpTrDx3XmBlafWT7JxnNOzxnVyU+x8QvdWBUpumWZjwevJ+/AtZeOCAz/z
s6Vm2Xj+2rkd5oJzbMy5sj5aeX4J7zh067cxxwIbz3SmkMVGl7D911BscXGR
jeeMMx9XCy7djwlv/s+hx/vYuECk89yDvG72+RHYuppMqWtn42VJVvvDYr+w
8V7dM5oc5Y/Z621Y2F+ys/UbG/tt2FvTodbJxnmx3lFmwz1L709dekum97Hz
20XdNkYvZLDxWZ2f330SMDbWMX29uqZ8qZ7315OXiSUu7X9ARgXjx7ul/X/V
+DldKmlp/9VKZeh8bkv7cWJ6Z8dMSg97PeO9s9iW8/fZ+P6guUz+8qV8e3k2
Hz6hvJQPh6XzzHLbpfmUVB4NzlZ2scd7almmHu6LWjpfCw6GUzeX7gNVS16o
c9XSesQEFPsu9y3FOzpxy+SNyFI/sXz6OdBa9Tk7/tnXka2aO5biiR9fdlmm
eyk/Qo8bKbRwKR7PigDp3O1L65VSvjaUed6c/dzlvFZmQepSvDKopHxSWsqv
znKDFI1raT9lb3frpmos5dd0+Wv8MYml8ToHbIJPFC7loxYZl/2z7AJ7/p+J
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
xZDHiWIde9dyNK38ia/chome7u4QE2kqQnfODct5vyCjzu0EI4HT35Hjhk9r
fPW7EP3KgJS910dIuVnod1CrHgLvqty43p0LK0PPBzzXGQTy8zab8Og/UKaQ
n3OfRgMV4seTytXV4KAkxW9BwEDjxPFWFrEeXtDPH8zLYkLzR68+QmYzrK38
Qks3pcDo2Ot1K4raYaJ401/+pz0Q+mIdp61SHyw8KT/6mLcabQ05Pl2rMgDz
IU2rY9P6ETfvO1vOtUPAy3ofok+iIqWD6RaPN5KgU7HsGac/rkclVyUby1JA
8p5HY6AOhjKvPL7asJwG2+12vlp4SkXNO64d8ONjAP8pm+NCoX0oYFVuS+Wl
YSD2+TdNe5TAJtuSkROXR+BcnODToJZe6Lx29vdOm1EYXZ1iNP+WAttyld99
t2OButjI3oRVGLzz0v/hfGoM/EuMpRxzcX0+46jtaTgO7+svdPWupkPu90q0
5dAEbOHpZjrOD0D3stDnVvunoGp6o9UDpxxkoOBXrLZ/GiS8zpEIN7tRCa9A
xvkdM0C+qiYnd52MiIrVKUq7ZiFazHR6yJeJZIqq+zVU5gAuyjipMzC0VYjo
GSI9D5ev9HD7z+D6K2aXgo/MAsg8VD+94/kQMrLwV2xYswhbq78b56Y1I72q
5dOomY42UPbfvhrbD81Xa7Nv9FHRrdPfmzS5aSDISRKWXiSj1rJQ71R7DHYM
O5dwryShqoHsO6JXMSj5KaRgKzaEhjYHiYgMUeGLXZWRr2k7Oia189u18V6U
cSrpSIZTM2rnff9UpI+CprQk/Jrf1yNy8V5KKZ2JtgfXMftvVKMbA0XoNsKQ
lBTRv+frH/Tl3n5nnzka+lUSnFTjnouujdVxfZkdQKNF2x879H4HIf+8joDF
LtgjdH7r3pwieON5OeK6Kxm2cnb0l2SVw/quAIs3HkwwCLpaJEkjQOXg+Nqc
bgxcX8bSassagd9MdqLajw6Pdil4GaBWkE2q1X1JHgTqH++HRar9wKl/sXVj
UDsSFj95u0dmEPL31j7espWEZHbVvDm7ngifLSevVNczEM/Ql8fCcmTIcRZ8
y4vrh90C8fW+wlScF3i5115ioFMrDlha8tFhfUZdsNstIpIWJm7eTB2G9G8i
YiTPZvB4nqfP0T8CM2bb1nCHDsGx65Rhvt5ROG86k5vFoIMz8VlVZzsL4hcl
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

         "], {{
           {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
            GraphicsGroupBox[{
              PolygonBox[{{50, 1055, 1056, 87, 97, 42, 66, 43, 44, 45, 46, 47,
                48, 49, 67}}], 
              PolygonBox[{{104, 1047, 1048, 114, 93, 106, 68, 83, 53, 73, 10, 
               54, 11, 12, 13, 14, 15, 16, 55, 17, 79, 69, 99, 91, 110}}], 
              PolygonBox[{{95, 1051, 1052, 108, 98, 113, 89, 103, 80, 94, 75, 
               85, 26, 60, 27, 28, 29, 30, 31, 32, 61, 33, 71, 62, 90, 81, 
               102}}]}]}, 
           {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
            GraphicsGroupBox[{
              PolygonBox[{{1, 1045, 1046, 101, 109, 78, 88, 9, 52, 8, 7, 6, 5,
                4, 3, 2, 51}}], 
              PolygonBox[{{115, 1049, 1050, 59, 70, 25, 58, 24, 23, 22, 21, 
               20, 19, 57, 18, 74, 56, 96, 84}}], 
              PolygonBox[{{112, 1053, 1054, 116, 105, 111, 92, 100, 77, 82, 
               65, 72, 41, 64, 40, 39, 38, 37, 36, 35, 63, 34, 86, 76, 117, 
               107}}]}]}, 
           {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
            GraphicsGroupBox[{PolygonBox[CompressedData["
1:eJwV0DtPU2EAxvGDdNBoWkUmKyiLfgDjjbKByoCKfACQGpFJJ25l4TJx1ZCA
yuhIQSBhUi4ylYmpWk3KQEhKEQkDAe0kvw7/PM/zf897knOq4m+aXp8JgqAE
E4iEgiCMIf1KaRA0OEw6vI0c9wW1fAef5poRwTAf5R/zs/Yd7HIvuffcid2H
r1wd18l9t1twESP8Vf4JP2ffRZ5r4z5wf+1+LHMPuC7uh/0ck3bKvoFLdsKe
1c8jpRfkJD+jZ/UYsnoYo95XIZ9y2/Kz55Zkzr5X/C59WT+UUbkpA4T8oz31
lf6Rz8t/nl+XR/Z/OWB/kmn7WN6SGXkOZ91fcf+h3s3vyEzx/8gDu1Wf0jf0
myize+05/QKm7KS9pddgzLsq7UZ93tl9/ObauWmuYA9ilXvE9XA/7TguY5y/
xj/jF+xq7HNrqOcT/C/uBcrxlr/ON/GLdgx/uG94h1M1f06g
               "]], PolygonBox[CompressedData["
1:eJwV0LtPUwEYhvEjKoMOtLPS4iatujlDAoJOYHVSQeOIvfwHiAICA24ObaXt
4OxtMPFSS8KibTUkJiZurZfEwEBCrFUC4q/Dk/d9n++cNKcnbmYS6a4gCA7g
AcKHgiCErH7yYBBccXzpOIRf3DuM8Xf4BjeFY8jx/fxV/pU9jBb3HuP8Xb7J
3cJx5PkYf41/bZ/Dby7JFbg9ewFV7iI3y321k8jaNTuGXnvafqr3IGs/thv6
AB56P25P6G/cXug/9RF9Wa/oEazrXWh7PiWL3Ib857k12bIX9Uf6Z70tz8ov
8iiO+M9q3k3oc/wP+c3zZbnV+R6Z6vxPsm5vy7j8JA+j2/sR99v6M35ThmRV
7sqc2xO9qQ9ixW+dsif1stso7turdhR/3NN2Sd93W0Kdu8TNc9/tNKKY4Z5z
YeTtgudOc9ftt/Z5/OU+4DJ/r/N9XAZ9KPJn+Bt8xb6AHe4jSvgPxE9UgA==

               "]], PolygonBox[CompressedData["
1:eJwt0klLlXEYhvG3c44ehQKLTLfWwibIVanpRj+Blhk0KK4qp4WVpVuHlcPx
A2gF5VSmLUpXLko0y9BFmpoG2irKAYJAJPq90OLifq77+b+8wzlZVfWldZEg
CA5gCGM4GguCIxg0n48GwS0Hph0oQQSL/89esLttN6MrRRRL+mv6Dv1Pfh/Z
GNbn6u/o3/NLiKFB91QXQyf/4tx1XSf/xRtxEi2617p09PHnzuXpqvksv4wE
f8uPI4nf5c/CGV28ny+bc7Hs+hu8y7xlN2neNT8w95rnzb/lOflZxnHKrlW+
CZ9NHpMf5V8Z8b0e2Y/xTb4ni+S6TMNB+xfumW+u0W/ID86Pyx98X5bxHvmO
78oTckFGkWx3T/brkjFl/iO79QPmFXMeVtzjJu82b9s9RB9f4Dk4zdv4uDkD
j/mIay7qasP34VcQD3873YAujgRfda5Cl+A7vAln8FJfoA//SHO8HCn4qh9F
oV293SfdVaRiTV+p7wnflTfjLNp1E7pMPOGv+HdzMb6ZD+OQb/kP2JJZ5w==

               "]]}]}, 
           {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
            GraphicsGroupBox[{PolygonBox[CompressedData["
1:eJwl0rsvX3EcxvGjGCqpdqEIA21ddiOKjaoBva2CuiT1B7gOamFx/yWYrEXi
2qEkRd0WiUTStC6LRDrUPYYyeJ10eOfzPO/POSfnfHPSq5srPj0IgiAK/Xgc
EwRPEJE3cIViy6/44MKs6CAY4VL0Bhyhky/n1/lLFHGLeM9n8sNcsl6PQ3Tw
r/kffLd+h3Guibvg0uRl9OqFdgt4p7/Qh+wL5CNM6hG7W3lLjjen0SYn8THm
LnK4bUTkj/yp/E0+kI/Ndr3MXPPsh749Tv6JXP7G3DMnzM/hIdlf6yv6rf7H
HNMbzXPrWPsoeQep/Lm5ZPaYL11/Is/L8/Jb+bk86L58+RBfwvO1+ydvyo/M
KbTKT/ns8Fsxotfp+2jTX+mrntMV3otRroE7C89Ln8Mb7hk3wCXqtfiNVr6U
X+FPw3fhZlHFZ0T//y8S9Br8Qgtfwn/n/yKPm0Eln873cfdkwU/o
               "]], PolygonBox[CompressedData["
1:eJwl0TtPU2EAxvFTSmQhIaAfgJtOiKIIs6sCEhPxslFvm70gHwAYEFojO5Sk
hVZHEyRsxpbLYrReMBoTFwel6EBiYkKUy++E4Z/n+T/ve9qctiUWv/qgJgiC
CGbRWBsETXimfwp3B4PYwH0XL0SD4Kn9FB/FL2Tst+yb9sc8yheRih598BWs
456t21Y0z/MTfBkTtpO8U68gyx/ybaT5Tf7RM736FxR5xlmNvoAkP3Deopcx
wwecV/UVfU2/q5/XC+41yG+4aNuV3+VzmXUv4t33+Gt+XP6WL+S4bHde5/xY
+K44bf8j38o5OeJ8X+7wl7LKf8hpfkN+8N318it6bJ9R0NPu/dXX9IjMI6Hv
u9+sl/CE97u3ijv8HF90Pseb+BLGbG28Q3+DWZ7iW5ji1/l7z0yHfzbPIW7b
o322Mm7bumwLtlaexE88sg/Z39n/47KthJj9rD0f/v48Eb4zJu3X7BX7P1yy
vcKw/Yw9ZzsEbWZUew==
               "]], PolygonBox[CompressedData["
1:eJwV0DtMU2EYxvGjOCDYDiIqbCY6KlKdHBCNcpHNTdBBcOZqoiaCAl5wtYXJ
QcO1daMCFhYX2YjSJi4kUIXGAcKAkjRh0N8Z/nmf5/9+38k550x71+3Ow0EQ
HMI7PEfFkSCIYkTOoIDLDqTQ4nBVSRC85j5jC5f4JG7ZnbZ7xUX1e8jhIX+d
X+Cf6fsY4x5wm1xMn0Ezd4p7ySX0Mv0jnnAR/Zy8jIR+V9+RF+Ws3Cdfk+fd
LTV/IMbl8EEecGZP/iL/lX+bo3qH+cudEt/7T1/Rq81dc8l8Y9Y6f2AW9LQ5
refNJv2k+cL9cvcj8hqu8MUwm0kz7nwxfHf5qJnCY/kYf1b+irjepm/LGXlV
7pXr5TnPr5WzeK/32/1BQm/Xf9pXhf8CI/pFuyk06pX6sP1bvTR8HzziyvVW
fEcPd5X75NzT8D8hzt3n8lyNPokG7gQ3xJXpd/AN3Xwdn+Y3cIGbwE2+gh/k
ZrGO8/w4btgdt/sP3E9SPg==
               "]]}]}, {}, {}, {}, {}, {}, {}}, {{}, {}, 
           {Hue[0.67, 0.6, 0.6], 
            LineBox[{1, 51, 2, 3, 4, 5, 6, 7, 8, 52, 9, 88, 78, 109, 101}], 
            LineBox[{114, 93, 106, 68, 83, 53, 73, 10, 54, 11, 12, 13, 14, 15,
              16, 55, 17, 79, 69, 99, 91, 110, 104}], 
            LineBox[{115, 84, 96, 56, 74, 18, 57, 19, 20, 21, 22, 23, 24, 58, 
             25, 70, 59}], 
            LineBox[{108, 98, 113, 89, 103, 80, 94, 75, 85, 26, 60, 27, 28, 
             29, 30, 31, 32, 61, 33, 71, 62, 90, 81, 102, 95}], 
            LineBox[{112, 107, 117, 76, 86, 34, 63, 35, 36, 37, 38, 39, 40, 
             64, 41, 72, 65, 82, 77, 100, 92, 111, 105, 116}], 
            LineBox[{87, 97, 42, 66, 43, 44, 45, 46, 47, 48, 49, 67, 50}]}, 
           {Hue[0.9060679774997897, 0.6, 0.6], LineBox[CompressedData["
1:eJwl1nf8j9UfxvGvUVZWZFd2VHayGwhFya7sLURSWS1FRjZlJZSys8reZW9Z
RSh7y8qqfs/34/fH9biu63XO/f247/vc58jVonPtTokSEhJGJklI+Ijfzysn
Tkj4BixEh7H51JsyGHvO2BS8MB3BFtBT+Jv4DuxVSkkf4xnxKvi3ehE6ijXH
RmJX9PfoB+xprAu2U3+NUlE3bDqWnEbon5j3AFZV/04vSv31pXpW+sN4C32U
fNXY+zRJ360Xox+NP6O/Je8ytkQ+JzdM9P97Xyfnpfv07voMOQWtl2/ykfh0
+aB8k5flB3lqSpU0IaGPv59JroYf5VPNX8BP6Hd4MX0AX6Zf5Nn4Nv4fT+L6
P13fUv9cP8Wvmb+aX9E/kCfLv8jFaZ+cnBa65lneFdttzlL5vNxIHiWvl/NR
ar2HPlNOSaP0vq7NjD2vT9OL0zGsFfYFdl3/kBZhFbG3sV/0xpSGPsWz4C/g
0/USdBxbTP0oq7HqxmbgT9AJbAn1pzTudwDPZk4Nc2YaL0knsaVUCX8H34M1
obQ0EM+Ov4jP0p+kU1hrbDR2Q/+IlmGVsXexvXpTSkef4Tnwl/DZeik6jbXB
xmB/671pOfYc1i2es96MPtc36Pkpvd5TnyWnog3yLf45PkM+JJejQ3IaGuTv
Pchrxhrl38ea5yf10nFf8nL5Es/Ot/MESuoZnRHbymPx07EOzV/Dr+r/8Y/1
r/meeF+8BN/PU8T6cP0K11eRu+PH+P54PvyC3lz+Qt4oP0L367302fEN0Bf6
TP13uTwN9rce0l+W5xgrQ2exdtg47FZ8o7QSq4r1wA7oLSgDDcEfxmvhc/Wy
dA5bRdXwnvivWEvKSEPxnHhtfJ5ejs5jq2kYpXV/w3kuc+qYM994ebqAraHn
8V74b1greoBG4LnxuvgCvQJdxNbSC/h78U1jrSlT7At4Hrwe/oP+FF3CXsfG
Y7f1PvQTVh17P9673oZG65v0ApQ59rp49/Et0kb5Nh+Nz5IPyxXiu/R38ur1
Y78y9qN8Sn461q+8Qr7Mc8ReyxPRPZ7DZde1l7/Ez/A75q+NPURPMN5X/0bf
G98JfyLeDU8Za8X4z6bVkD/Aj8c7j++AX9TbymPkzXLB2GdibVKW2GP5HCwN
bYrf5WPw2fIR+an4LvztfHoDeaGxZ2iQvlJ/kP4y3kGfIN+NfYXWYS9iH2KH
9XaUNdYrnh9/BV+kP0tXsPX0Upxf+BHsdcoW7wB/BH8VX6xXpKvYBhpD6dz7
WF7AnNfMWWK8El3DNlJNvHfs51h7yk7j8IJ4Q3ypXpmuY5vo5fgm4zvHOlAO
Go8/ijfCl+nP0Q2sI/YV9o/ejzZjtbBPsD/1jjRW36I/Gs9K/0CfK6elsfr3
+tFYH/Sl6x/TG8vLjS2UT8tV5MHyKvkh2iknpr/Nf4NPxM7yf2Md8+t6f3mK
vC/2RV4yvs0452LNeGZbXFtb7oOf4MfMX8Evxf3wN+I58a36Ff5YnB2xVule
1z8UZ4s8Dz/H0/HN/C4fZ2yO/If8DE3wW4/rTeQVxqrGXqKv1h+mm8Y76ZNi
TzQ2gLZidbC+sZ71+A/Ow3E+YPNjD6fx+lfmFcKa6iv1anQL20Z18U/j/rDO
lJMm4oXxZvgq/Xm6jW2nSZTevU3mRcxpbs5q4y/QHWwH1cP74SexNylX7N94
UbwFvkavTnexnVQf74+fwrpQ7viO8WJ4S3ytXoP+wTpjk+N7p4HYLrEBNiDO
Dv2tWIv6Nv1xyhPnnb4g9v5YP/HOXVMca6X/pL8Y+7C+Rs9J/xp/U/9aTkQ/
yzf4Z+Z9G+eL/GTsufJ9tNv8V/jAuGd+Js4Hfjn+Fu+qf8m361d5Ib4n1ggl
8yzzGv9Y/gE/zzPwLfyf+H3jE4zP1f+M84c/y3/naelbv12Ct45/p3mL4vfl
l+Rh8lo5V6wZ87ro38iJaZDx7/QDcqlYt8Zf1T+L78TY2zRB36EXpnxx7uk/
yhnpq7jeNU9gbfR1ek1KiHeATcGS0GB9D/waNii+A/0dyk9T8ZJ4W3y9/jIl
or34tPg/unufzp80p505G4zVosS0D59BpYy9HmcNVpuS0H68IT44nqf+Lj1C
M/HSePvYx/U6lJS6xnPEktIQ/YB5jbAh+gW9GxWIMxBbiD1AE+NMM68M1iG+
a70uDdd/0nPTPfEc9e8i09C4Z/1XuXTsNa5vrA+VLxpbJf8ld49vVt4pX+NF
+N5YK1TQWF++KP5tPBPfGvtavFfPa5LxebFX6bd5xThbYu+JtWp8tt8sK3eM
/Tf2XfMX87NxLvF6+gj+c5xZPA/fxZPEeo13x6di98Y7j/2VD8Onyb/JZeK7
8BtN9GHyJWM9Yk/Rd+lFY5+P809fLGemybHHu6Zc7KlxP3p9ShbvDpuGJaPh
+kHzmmLD9ct6T3os9lK8PN4J36Y3oOR0CJ9LFYx1NrYde4VS0O94M3xE3Kve
ix6PcwpbgmWhr/X5+nG5Eh2R01Nqz3Ke6/8HKAznkA==
             "]]}, 
           {Hue[0.67, 0.6, 0.6], Opacity[0.2], LineBox[{123, 122}], 
            LineBox[{124, 118}], LineBox[{125, 119}], LineBox[{126, 120}], 
            LineBox[{127, 121}]}}, {{}, {}, {}, {}}}],
        AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
        Axes->True,
        AxesOrigin->{0, 0},
        ImageSize->Large,
        Method->{"AxesInFront" -> True},
        PlotRange->{{-1, 2}, {-1., 1.}},
        PlotRangeClipping->True,
        PlotRangePadding->{
          Scaled[0.02], 
          Scaled[0.02]}], {307.2, -189.86004134396768`}, 
       ImageScaled[{0.5, 0.5}], {576, 355.9875775199394}], InsetBox[
       GraphicsBox[GraphicsComplexBox[CompressedData["
1:eJyFvHk0ld0bPk5UhgyJDEVKkZmkFLo1UVIqhTKkiAZpViRKFDKVKVKZGg1J
qEybSGbHPM+c+ZwHxzx+n89vfd9jve/3j59/rGs9z773vfe9931d11oeGy9c
P3lxGQcHhyw3B8f/fv+x3dizuIghjv/vZxi27zTa/FqaycYGaHVPggidjdXj
Pr49qURl4/D4D36RR8hsHHnSmGx4gMjG7ta/TN6dG2TjWbFqeYeT/Ww8ih1W
zj/Wy8ZRBzdf9ujo/AejJ3wLjhZlrWys/djFxXumkY0bdL5VNEEdG59+576Z
+1IFG4dqFJbOtf9m4wccml7HLLLYeF3wF+E1YhFsnDbIGc97PRH+yceUf+VP
6tQvNo5Wi9bze1nCxuKSsYaUiio27jZ42ODhUs/GzsViM9u3NbNxIdFBW9So
fSm+pbRT4tpuNnYr4dzkS+n9ByNVVYKUyXA/Gy/oNQhebRxk421vNIOk+4hs
PNwp36c7SGbjquLjGhklVDbmn23izaums7FTW0i3dCaTjT8cuVFy99AwO5/K
k6W28kdG2NgrNXvCW2+UjR3SG80U97HYuHVFUNqDHWNsvLpaeIxLfpyNPXR/
LzQpTrDx3XmBlafWT7JxnNOzxnVyU+x8QvdWBUpumWZjwevJ+/AtZeOCAz/z
s6Vm2Xj+2rkd5oJzbMy5sj5aeX4J7zh067cxxwIbz3SmkMVGl7D911BscXGR
jeeMMx9XCy7djwlv/s+hx/vYuECk89yDvG72+RHYuppMqWtn42VJVvvDYr+w
8V7dM5oc5Y/Z621Y2F+ys/UbG/tt2FvTodbJxnmx3lFmwz1L709dekum97Hz
20XdNkYvZLDxWZ2f330SMDbWMX29uqZ8qZ7315OXiSUu7X9ARgXjx7ul/X/V
+DldKmlp/9VKZeh8bkv7cWJ6Z8dMSg97PeO9s9iW8/fZ+P6guUz+8qV8e3k2
Hz6hvJQPh6XzzHLbpfmUVB4NzlZ2scd7almmHu6LWjpfCw6GUzeX7gNVS16o
c9XSesQEFPsu9y3FOzpxy+SNyFI/sXz6OdBa9Tk7/tnXka2aO5biiR9fdlmm
eyk/Qo8bKbRwKR7PigDp3O1L65VSvjaUed6c/dzlvFZmQepSvDKopHxSWsqv
znKDFI1raT9lb3frpmos5dd0+Wv8MYml8ToHbIJPFC7loxYZl/2z7AJ7/p+J
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
xZDHiWIde9dyNK38ia/chome7u4QE2kqQnfODct5vyCjzu0EI4HT35Hjhk9r
fPW7EP3KgJS910dIuVnod1CrHgLvqty43p0LK0PPBzzXGQTy8zab8Og/UKaQ
n3OfRgMV4seTytXV4KAkxW9BwEDjxPFWFrEeXtDPH8zLYkLzR68+QmYzrK38
Qks3pcDo2Ot1K4raYaJ401/+pz0Q+mIdp61SHyw8KT/6mLcabQ05Pl2rMgDz
IU2rY9P6ETfvO1vOtUPAy3ofok+iIqWD6RaPN5KgU7HsGac/rkclVyUby1JA
8p5HY6AOhjKvPL7asJwG2+12vlp4SkXNO64d8ONjAP8pm+NCoX0oYFVuS+Wl
YSD2+TdNe5TAJtuSkROXR+BcnODToJZe6Lx29vdOm1EYXZ1iNP+WAttyld99
t2OButjI3oRVGLzz0v/hfGoM/EuMpRxzcX0+46jtaTgO7+svdPWupkPu90q0
5dAEbOHpZjrOD0D3stDnVvunoGp6o9UDpxxkoOBXrLZ/GiS8zpEIN7tRCa9A
xvkdM0C+qiYnd52MiIrVKUq7ZiFazHR6yJeJZIqq+zVU5gAuyjipMzC0VYjo
GSI9D5ev9HD7z+D6K2aXgo/MAsg8VD+94/kQMrLwV2xYswhbq78b56Y1I72q
5dOomY42UPbfvhrbD81Xa7Nv9FHRrdPfmzS5aSDISRKWXiSj1rJQ71R7DHYM
O5dwryShqoHsO6JXMSj5KaRgKzaEhjYHiYgMUeGLXZWRr2k7Oia189u18V6U
cSrpSIZTM2rnff9UpI+CprQk/Jrf1yNy8V5KKZ2JtgfXMftvVKMbA0XoNsKQ
lBTRv+frH/Tl3n5nnzka+lUSnFTjnouujdVxfZkdQKNF2x879H4HIf+8joDF
LtgjdH7r3pwieON5OeK6Kxm2cnb0l2SVw/quAIs3HkwwCLpaJEkjQOXg+Nqc
bgxcX8bSassagd9MdqLajw6Pdil4GaBWkE2q1X1JHgTqH++HRar9wKl/sXVj
UDsSFj95u0dmEPL31j7espWEZHbVvDm7ngifLSevVNczEM/Ql8fCcmTIcRZ8
y4vrh90C8fW+wlScF3i5115ioFMrDlha8tFhfUZdsNstIpIWJm7eTB2G9G8i
YiTPZvB4nqfP0T8CM2bb1nCHDsGx65Rhvt5ROG86k5vFoIMz8VlVZzsL4hcl
h7JwvZB7YbFNo2oMQMy5/MpNJohmoN1OZePw3G5n6Nx9Mizk33v7JHcaIkTP
XzfYOIhi74Rd7/g5A8KR1zTGBOjoaYHs5ZmMWRB3OvJooBRDcQLPwl8nzoGr
YW+11SIT/VbfsWbDu3nwzFN9eCsH968GsyplMYvwkfuwg1VlMYphUUp9rGjo
dzyme/UIBbIMnNZWuVLQ+xl+49avTBjj8klp9SOh9ROmpoQuDEwmWAJ+wUOo
7qunsrE9HVbsLPNXsGpBCdVr4xaXkZHw05XfHoc3IJ9fPER1fiYq8+avrHKt
RdTS8pNK+H5WZp06vzHsL1LtLbY8fZSB/AzPxqV8/AvUpJOee84y4PQjdOVr
XS3Y2u07mor3z8abE319LQ2QtoVTtggxQCR+x4Jq9BAMWR9azXhMR1IRqfRD
CSRY0UtqaMX7n3dY855LryigV1wmY3uTiSKY8Wfi344CjJLG31+mAYHQpl32
hgWb5DpDtiVioHrzbdmx0DEQv/L2mZQOBm7ma37eejYOHN6afWOOVNAAQujb
ezOw7mj4xlN2VLRjbCJAxHUWuobWT588jPsHpy+6RKc5qIz3C1Z5haG7GwQP
W9jOQ4Cd0UHthzQkMpj5wdqJirot1FXOP6LDpSJHfpdnZBQWFW7TivsB187T
nRq+RCTbJKHw+RMTevu2nlP+UYcGi2yPiAfi9YyOEpm+UonWcafe+KCJobJc
qy1dxZWwpu30vXhTDE6dvVdtxagDwsxPUcI1DFTqLuo/e0eETWqpjq7NTDS1
/dPa1kQyfG/b8NgRv4/DT686JvpRodes0ntMho54hjX87mxkwcmdtdsPKjCB
b07bfkR8DHQyVdPdZjAwPmVHE+EZhz9NdSVclxnA88X8mMTMDHz9XfYn+zYD
NfsZG/Vjs7Al/KmqF17f3u/2jOM9c2Ap8Upy+WYmWqudmbavexGm9VT9Mj2+
IJO822FtfRg6pLSM5pkaBVk9rHe0OQYyv5Ig8C6+FUyl+Tukx2iIeC7CW6WJ
CIahRl2Oq6johcxep323GJDUGRe8UZmMin/7RvjMYrB9/wuXuS1E9PiGzBk/
Mn4+Xp2NqdwziEKPm6qVp5MgZkD0h+K2fvQ6HxgPUDvOA5ySxjGdKPIHpbiK
1YiYq++Kuz9vRS+bFhySLgyhtJRtSS0FjWikoy+QEUlHBjOKIRKLBOTcplnW
2IqhS1Nv07SwcrT3frlocBQTPc866rLS8jdyWzHGc2INBaXEPBpQNc9Eg9ke
Gz0SulH1x1GbHffeQ8tRKQ6NLwRwKZQUTaXlAO/4tP6FxAEwsNl1VHDtHzhh
c6h1nw8NEhbjTfhMquFnNMVr8QcGK8uJp39+qQenBaZiPZkJ8VkVDO/bzeDi
/UdUpZICbdcebRXwaYfaM0f9X1/qBe7k4BcjvH2AZea1JjLKkZKtMF+w4ABM
IMG1cyL9iFPu144d44MQdvVX9+O7VKQ2cuOWKScJuNqxcU0H/Dw/kDTcvwzX
mRl172vOYchAnFK9D+cBjWtzn00mqWj41UaFTXQ6fGkMrvNQ60cSKWI1cZa4
HxalpO86UwSulge36p0dAf07x3bt1u6FtCA/6y6TUdifPVxTt5ECldqP3FxO
sGBbo70pTycT9PYPbbtzcAwyn6oPBdZhMDWQK7p3xzjIT+6ffXuTDrGThj3z
OhMweM926lfoIEAWf7qu1hSkDnxr3imZiS5tV9q6efs0tKxdzmsg14Uu61m7
i8jPAPdpVlcbmYRO/tiXNaw4C6rajTzHjZkoOCoycL/0HAReO2uOJjEkym8d
aCMwD+cPtueFHGMg75GmO05CC+DXpyUgtxa/l1Lr/MeWLcIqAWGktasV5cqd
eXh9ko5ErzUe7mX1wV+B5pzxRSrinY5eFvCaClPCRvU80hR0v+rSYy59DOSz
bhW4KZDQmVWEH8YhOC4ri/ukNYR4rshfO21Mw/U9M+pHaDva6H4m4qJhLzI6
qvo6JKkZPZCLO1rrQkGePKdOPu6rR2cOOxx5lsNEZ/h7L9qMVqN0+/Q115ox
tKKoaPHr1lJ0iXzjyGtzOirJuX3616M85K+XOPs9ZhBdsMvbdKwzAzo4HTyO
hXfC10yLmR6DIrAzs6c1TZPgUf3u+j3bymF2CFtrrcuEmehLe/zxc9oVHfjd
g4nBMT6ty+GBjYC9LtD36qTDEaNbz0cftkLdikmSuvcQ2PaMC5wW6Ae/O/cm
zSXa0Briap83HIMgl2IudDYR91Fm5Lshs0NAiTSr+e7LQKteXI3tXkaGgbov
tJlFXM+5pF3zHKXAipOepx+mM1BvRnLOXwoNavbsV/BcRkJfvhqsm24bBoiu
0irkaAKCr/4dav0ILKxurniwbAhkQ8Sfp9eOwtbtovP+YXRYfr7zQ1QlC+6n
alYEDGFgKf/xtE7+GHyXt5E2+8wE1deiUko/x6HWrWzh8QwZ5CsludxSpkEl
6EfOeOAA2vuxf2fgpxkYDxLk3viZhkaPRN4sTJyFYYECYZk0DAkPmu5JC5+D
AI1nDR3KGPqqnCLLCJ6HnDHqriuaVHSKKyiQ4r8IvsTh12ZCf9HziOEKXnca
OmHiztjWSIa3x/+2/AinIJmOU/Hu95kwWOb/4ehnEtK7/uLAEAODtOWpz+pT
hlADR5S34i86vFY/0cb9qgUJ6KqXDnuTUOTZ/Q9UCA3o4e6PGUllDMRYlNxn
NFWLmkz9v8/j+/nTWqNlhL8MCWVItYVH4fspnhMiv/kv7FG1yg9fzoCK6F8O
wcdrwU1w/TUbvH8mUwLPfXjdAAL73sW6cDFBMPd484X7Q2DlL3lgxSY6ktnr
slLcmwRbhMRdG9vw+zI+0GbnToG0H8nB1z8zkaMggWUYPAob9qZyXp+nwqUj
asJPglkwxt+npeqDQcV2wwPmj8dgIrfVweQcBi/hUpT2vXE41vvkvHwrFZpu
bjhj6jQDEd+IEWpUCkp47BzW6jgL02bkuXEZDNXo3x6aspyDldRIrfrvGLqw
zsd8y7F5sNp84YT2AA1xPc390udLRSuq0p5vV6DDybrSqjPvySjkD9NauwAD
x3ir5vfviUjGVaY3qZcJjtkOis2jdcjtvDkr+AqG/qz94H+bXolSN0Hxc2sM
yQbliloYVMK2/Q4vbm3CQMjpjnFlSh3ol2AJD19gsJXmJZbnSYSjlx5Gj8Qy
0VzvJc0PT8jA+cBokyF+H73J9zljr1CBeIP0SPQeHbULndsktZoF1/3mBlb1
MiDBNUA/hWcMkPjay4a4viGK8zhJTY/BnVWbexW/MSC18/3acsoM9CoYgs5G
Btq3ttD0U+8sfPtcGuM3gaHjASpR9oQ5kNwQvbhox0TY5EFBh+pF8KJqvE9t
/45u3Xh2NoRAQQ2N6+3uzDOg5GREzE4qCVGM9pzoWMBg/cN1Em8fEnDfu47H
C4+XXZVqaXKsBiwOXr+RPoDBmbZfZ9XlGiDHel3kHU8myEdjet/3kqBP+dTC
4CdcD/9cEDq5hwI7HXlSBQQwFGPQUjJ1nQVXosWLe3D9tCwvQvei/Rhc/kSJ
nYjDwD3WIsnh0CzUGjV+1slnojQq9y4Z3TlwGT3ubt6Noc0jT001+8iIU8lS
Yf1TDAyVnSpCiETEN3lPv38vBrfOdeYrX6lHDt6mV/ukMCS0uvjeJawKKe/R
4rqfiCGC+gOW8a4K6GpfTiX9ZILvI5cDX5TrQE7VW2SyHINNGzL/bNEnwgp/
ryiRdUzEvYvquG8/GV4YJUtIjeN+2TTX/OLwKNzkI/rq7GdA41Wt0Y1UFlAD
cvQd8Psh887CVrFjDBZ/hJg6ajNBSjPZbvvvWbAsGenQ6cCQxs4Cql/GHDTb
W2Zn1DBRlcbK072WFORLXd0kMsAEbvDMsL9EQiYK1ttSyzBIXD5vdnK8BlXH
R1cZ4/Pf+H5B55IiAVgVKHoSr89aCr3O/TcJ4t3qCH14fXaa+1oJpLLAT+bN
qdJ8DEJTJ0yM3o0B1SLu2zfcn1Y4PvY28Z2Fq7tDrpy4jiFmaN+LBtc58HHt
O3X4PoY8v60w9r5MRsHLA/s18H54VoAR/uhBHeI236x68TOG3Nf7v/akVCBz
JxuxJk48H+qstr1RFTAXhE79uIdB9FH343TVetCkCbdoHcRA/ceRiycLifDN
7032HB+GxvxIs7wlZHDXlzN6idfj5uM+vx0KY5BsXSGtPoLBldnGPesXZ8Er
iW/VAt6f9G5tMt2ILcLMLa76FV4xyC/I+Bd9GI+zP8OVI+0Z3HkufWG/ABMp
so77hA+0wCEXQRs7Ljqq7XyhFP2CCLtfTeZbr6Oip9FeXydNGLAeJfJb65LR
xdO23d6TGAxVXEveqE1EXdcPLuvgZYLhjP9tbdNB1OEvHxY/ToKKuWGm4b5+
pHdE1pLm2gEFa9bsHcjpRBQOS6l2zUakE7wLkT+3opbgVFv5dUNoNPI4b2pn
IyrSODRg6UxHAdEMlXsb6hBX5FazgzUY6q4MpLxWrkCX9xx525XBRIKsp1Le
0b8Rb3KYVtZJCgqvttQsaM5EFTaWUZpmPWiPofvihttJsIGfeepgeS10XxQm
HrmVAxayQZ2lFgNAP0g5cKSxBJLNCflTx3B9sOpduRt/NTzsoUSMf8ZglDsj
PCawHkxv6OqVcWDwVG+Y1XGyGRa0PE1tVlLB5MtoWujFdtBbe8zseU4vFOws
O5M73Qsby3MV5GzLUMrBGyLXFvthQ5ikr25JH+LQKE0gDA4Cn8Sahyt1qUjD
qM5rxwgRbK7/dWSZYkhBJS4MWGSYyRnpar6JoaeM9V4zjVSYqBA936JKQwvl
DyQwXBecczbh++3Rj3pm9x1+fnwYTssUDkQGIohr8t3/7SSuB+8ySm+X9kDk
m3eK6QdGgfF+nVx2Hxkkbn8hVh5mgQp3zF+p37j/2PJreFJ/DJhcn0W4OzDw
sXT02aQ2Dv3W7rur39EhMJobu6w5AcLRjhFmbYNwI/jwb2XlKbAyjRFtHU5H
c7sftL9VmYZfN+t87rl3orymJ91U6RnIvXVE/EASCfF4PvxltmkWXuZddGYq
MVHpsgd9VWJzQM/Ivnd1FkN8vOJhB5bPg7ulu1OLKwN1rk9a17ZyAbji48mu
Z4koaHZAx3dmARwVR/yH5lqRe603/F3JQCseGv988rYPCm3b9HSEaIjyrqG7
5iIVGBKTGQvKFMRX9aRNcisGb6Pu6mbuJKE18yYBvu8waDF934ULbPRY+9d4
0AMabJ9YRMe/taOjTh3ulR096GX5yL6F381I72yGouV2CioavfnDfLEeZV0/
8rHjHRPRDzvFS2nVoPoZr5SVvXg/C/+6W+JiKVqJ9xxNbzoq1yampnHlI8Uv
wgdnyYMoRv0Ra9/ZDDispj4x2dkBl1aa2atzF8G1Qs/6QzkkUMmllj8YLoM8
uj70SzDBUpY0ZxBAgLMWSgIPxzDYbbjw0dWlEVJ7dDZ3czNAoybqxRGbVvim
2VGQWT0EEs7qzTLzfcCz2+jKDetW/PzfDPQYGYBtC+8D/54jIim78T5F2hBc
TRDXtrJhIEFS5ec/oyT4ycO9OhzvDxEbtHPdByig+QoFqjUwkLx/z1WvNhrc
+rgotfEwCd1cvBY5UDcM6y+Kel41aISZZZ4h5ypH4PldMis+ZxB436lZPvk7
CuIOFgd+OeB64O0K0fFiFpS7BHMadeH6m+fBmrysMXir/sMip5gJOULInz99
HDZvcxMt30WBnLorWaykaSByrTpRu3cAhRvwxTrEzYB9Vg9t1V0a+iRSd1cu
dhZ8b4vYicThPtZ0e9jOoDng/7grMMAAQx8UnRQan86DWOr+mTNXqaho8LSe
++NFwPBld30tQz5ElomJPw212yucM4oiQ5jlvZ+piRR0dv76iIEVE6yTA+X8
fpHQ/jVqsbz4ftsG+ZdM5g4hTi2Dodh+OhCTxR7fzm5BrV4k59S9JNR24Hwv
J7MBNf91ONzznoEM3hH2eK8noJfr9L544/uppiEjcvZQGYrmmx1Ry2WgQI4r
z+z7S8E3ht/GrY0Ovh+y++aFakHtAy3MDO+fkVss3/o9bIDInK3n8uSYsKrM
Zt+80xBI/Rx9YD1MQ7JRNaILN0nAsHxZe6cW73/vryjYXKUAX8VWbkoxE5nK
kAoln46CU/8Rnm9/qJDpZ/mw9ykLyFm++zlvY/BqrdSydrcx2KW0hdf0JgYb
MkVWil8fhwn39/3yQjTYym+Ur3BuBlabjcw9T6Ugy0Mfo3TPzUKw3nzXFh7c
73y22O19Yg5+bGpEqwoxZCkJNqsM50FZuPpsiCgdzTUXqGyOoCJLw1yzTdM0
MGxzTTXNJKMHa+rqyr5h0P3E1qw3i4gC+n9wVc8w4XOcd3CycD0CuT69HZZ4
vNOqfzRUq9DOnXPFcjdwf3L36qrwhQrgIGstsngxcGaM8jwJrAN30yBZt3j8
PE0FPjZ3IcLvw2LvT3oy0cKO8j1Bt8mw1VBZtK0HQybRi8deWVFhxy8/+Yx4
Ovq9wRWj87Bg18WiufgcBjC/Z37h5RyD2LR8C1y/Q+Z0x+a3I2OQkvjrW14D
Azhcq93j+2bgs22GkM4EHU11zpjxt83C+hvnsuxGMOQ3Lkynl83Bgw1Njyce
MpF1m2DBWMkiOL4ZyE5Q+IGc7u/U9e2hoLXeV7cpdjJAT/uV+K0ZEvrodWiK
js93cX1P1twbAuqSduObwnn4ZtuXplyBGuDXqvyR2I7BATHf6NXLG+D7+UzN
tzFM2IqZGsdokkAO+yX1IhpDXJd9bY6pU0BxwjX0lByGiA85t5lfYsF4cdWk
iRwGhDeXp8lWY/DZzVDvRxoGGvYvP/01mAVB2xIdiQQmIp6mBH3UmoMwqRnW
ESKGJKd3aCgMk9Ft1vZg57sYFAhcMaqYIKKovtLbUhYYZB2e2cTpV498jk9r
neHGUIKp8fctGtUoQ+M9XSwD738SyrRnk+XQbe8mceE1E/pXMJZd4K+D9TOH
b001YiCrUqRZqEKEPd92mT6fxPt2iPEdRS0yxFVqhH2bxtDFc/VyOuRRiNjg
ISsgyQDZzzbnvPpZsHB4oTAWvx/0R8rrUxvGgH+S9JJmxgTC5JBDVM4ssKaL
z8fWYehSQgKIJM+BtqzG4nMSExXq/NBudsLvt8ymizPlTPDY+Fj97X0SKuAb
O9XbgMGOAz4hQjtq0fKDhss78fmrd/VNbOAlwOsw8lYWXh8JONpzPoMEJ19q
9Xng9fYJ+1p25T0Lznq8HeTDz7NtSAVfZdQYxHBYxdNxv/JINe/p14ezsMIN
WXXjfkZ+7g/R+vocfDLZYf/bD0O3f2Ur3b9PRvV2VyQE8X74ZpJv5nR0HXq9
2rj64GsMCVgJt+gqVaLIQV7CWVxvr29IVo1bXgU5Kw6MmTpgMNEwJZgkUA9f
rT2ubDiLgVqJZR39KxEsbxyknRlhooluI96R72TYrmSbLYXXo6CAfyJswxhM
RYqsdpjA9/+30H6vyVlQ102IPYr3p89mtIVvxEW44bUw6dediFRm3qwmSZGR
+P3RF3txPTx51nHkVzcB0QPevNvUjyHSaFJtTGA11LbV1lWUYKDyWvjipdUk
iHo0TN1xD0Mu51ffHTYZg20Z58qX/cXAXCVjZ87mOXh95sUrDhZ+XnmjRkQE
KahwW+CbnuO4366/vhfESSj51+27tQ8xKK2yVIr7Vo3qJILGQysx9GYN1auu
ggD3fz19q0vCgE+XP2RShAz79nSKb/qf35bL2LW7gQVHj8s0f6VjoOdrdc0m
eRZuONlGCeZiyJn4VHFNNAmVcgXkeRBx/V30ckXAj1qk4VcUpo2PFw7KI8m8
qIXO7gBe+f/5M5rAjPpLEmitMKSN4+tdL8iduCWSBXJrq+r1w/H+XB8cet1u
Dsr7r5189gFDNuVr6faRZFRZ5s0ZivsduSrDEo6mOlRt81ax/QGG7iTxS0t5
V8JCy9/MlF0YZPSOP19TXQfTLziEDz7CYCaAZzMKI0OxSvimu/h6zXfZEY4J
j8EZbofm6/MYBJr6HjlIngWxFV01L2fwfnbjpfR8GwkdGX5Z7TOHQX2XhTvY
EFDwlkC9Yvz5LErv6AyugfGrsu0eNAw27w9RrzpBgsejrtFz2Rhy9ZIdDN83
B7yWj/eYNmFo6wzmO3qkDv6qKTpm4/5m2YD/GSszMuTMW1vvx/D+psbrWzLC
Ap57p3etwvfHAVcVdeWzcMud/urnAIYCrR9oK1qS0KqTcGZnHgbCf+9KRGTW
oK8vBppd8fEiqoNu6YcJsKb0w+ccPF/RsMCSsHoSSAx3Oa/E9R5Vwor5NZMF
8RL21xzw/fP/bH458CwZJZT+uWuA13OtXK16sk0dCnf/O3IHz3/zgR/r2tTG
oCZZbnkHFe/X22N2/1oxB+mVkXdD8XoSQs+8C51chOycaxwZXgFIfkLbxHUK
Q6+c7608lnYPTp3ftv+6GBPZbYp+us2nBUrWCr/l5Kcj3ZxOmyfXibA91jSt
ZRMV6dq3X2ftYoClxhZjt/1kNGk9c4hnHO+Hgp2HM/WISGx0W6WsFBPskjfa
XbEYRAaKgXHp4mS4wNsTcNq4Hwk+87uoV98BX1LWNalXdqLTRfy/XhIakG3V
ujWyv1pRbJlLkOzkIBIN7MmNojWivBNreb6b05Ha5doHH9TrUESHjYxvGe7v
s7hWEg5XoBUoYpdsIRPVvki8ATm/kbPCV/PltyiIh3TAcoV4FtL2Ma0QT+5B
rmJ7CKIjiaA6axOhz1ULkT/5TV9r54Do4dj4n5oDsG93UeHl7yVw1cykhaxF
g5yX0n6atCpcr90xc0vAgJwgnvn8YT2kp+um2+D+dnpx2T2/fc1gcImvdPUW
KjwtU7510rwd9wUbtx8Z6IX1C4P6cSO94H2RtHt55F/kvCsusnOyHwa/TBvG
xfYhr+yq1jedg2AfeVzTQZqKNG89XqFEIYJVqHSJ7UH8/PjY5+TTyLA7o/zZ
HXe8H7VmWzRXUUE73T0j8xAN+fRvfXG6iQ6tyeUiHxP70e/EtqePTIYh12j/
NfXpfNghKl9HOzYC3UZ6QXx3eiBgi3JotMEovFxWNmxURIaCF/Bm5iAL5M/f
OZCXyYQRscTaXbvHQNJD0tWyB/fvL3X11iiNg9RUl/m9bDr4XBmYeKc6AX+o
qaZW84PA8+BSpZzCFJA1362t/pmGDAsStTq3TsPdUNnCrC2d6GJClHCL5AyU
JQhKv31MQvZ9Mbq+MrOwI9PEpVWKiS7oMJ6vFpkDNRmfJ+1zuH7yu7NWh3Me
HEtPxz4PYCD/bfzYau4FaBggqVp4ENEB57LQoxML8F3MQt7Stg2dfR8lyxJi
oK+W79Vf3O4DvZUdD9vW0tALxH/8lTEVyOtNE920KIg+pqloII1BO8+kWx2Q
kJhndITSRwzSw9Z42BkPoSHtFZq1YTSQDeE59aaoHbVv724kePegHysbI7Xr
m1EUD1GibC0F9ZM4ruwVbECucjH75F4ykTZFCdzMatD6G1KHrAcxtNNT3tLk
SSmKuG0k8i6KjkxubzireDAfRTuPSNYIDaEd4v1W+pIZkOGfXNX3qANK0gni
LUOFsNsmTkkrhgTeX38fjKktA/GyN3HqK5nw1F6+c707ARS7bHq5cX7XGLT/
63SuEUwajwemSTAg8cUX0SmTVmgU9j8txxoC120mOVzjfdAxSVgnu9CC36t4
YTplAE47pKzP1CeiaOKs+GT/EGTcTfmSd4iBhEU8NH5RSVA0w1NMXsDQzL2p
vqkOCqw1/rRCfpCBDt9xO2BVR4PrOuaPJZ1J6NRH7sbW6mEIPRAtO9bTAKF7
ZaRj/o6Ay8dHaTciB2FBPqfAuXgU0nq7lw2Y0GEq73WFXCELJO8eSf3VioHA
tMPo/Lcx0FfLMgsgMIHDOHzvXPI45EnWv151hgLcp8MENeOn4eFNrYm5dQNI
X0Cm5njsDIy+FVGIPktDXK7MyVOvZqF2c51nwisMDfp80Pfwn4MU42bDh8YY
iv9U8uWv9zwYqVEIjGdUdP/07vB9Dxfh1mdNj3yvcsQRMh7ECKUh+STtFM/7
ZAi2rv20NZmCBLgf1O41YcKr9YIX3hfhPry8eWMCrgd21E1eCCgeQvFVz/sn
JujAT51s/PKnBUkJtv3OlyWhmV3DL+lzDeiJ9uRG6XAGGnTJCPqmQkCeN7dN
VuL7SZGMUA92LEPlPqp8MVUM1D+2l8u7qBR03yw0zPymQ7+KdlwWVgN01i+9
ZtxPBRbn57u5NEBQ+z2fR1pMCDzmcL/i3BCoeBV1S7XQ0Mbfnq9HLuN+9EZ2
eXU5hvYtqB7rsKeAfLWcXxGBiQ58uKXA5T0KwrIXLl75TIWzHxlaQk9YkN/8
UY/zCgZeK7n71rmOgYjtxidUNwwcmaSClVfHIX83n7SBEg3qWs5ia6xmoENu
trwlmIK+J5dIXrOahXynkfzTc0yU0F0+WHp0DjJW0kqK/2DI7FVs7+LeeRgP
2MZdr0JH970Kr/2JpaK5zadGcvpoYNBV86Yil4wio0cnlJMxkBrveTGfT0S9
nYKaV1fi/SVi9d7IDfXIXeTKsvfH8PqNDV8IOVqF1FdGF913w9CmK/v9Mroq
gP98jZXuPBNea2wj23rUge/+7JLFTxh88Az7IedIBDFz1dBAFyZaPO/259FV
MjT5hSgq4/cxfeT33bWnqDDb/BIlZtNR9kdO82ZuFmBHVB+5fWRAeP3h8zrz
LBiMk8f+5zdeU/9w9TLG4OzO88/eDzLg876+lKCuGfhkXPHgUC8dmRlINOs1
zYKpr0baeSbOt8pPIjX/4Hr66f1XQoFMJGLMEssvXIQ7uxL3FFb/RBc8QpQ5
SBS0OPSGuqmSAfc/SJqHLCOjratUxmfx+fjohdwqaQSUrqvwIpeBoZpziuG3
GdVw4UzZmfdNGOz+Tv25bKIegixDc499YoKiFEddkCIJanJk8m+8wPV80SGf
KgUKyNVufimihvNFbCTZx4EFP9K+BklJYPAz2KxVyRK/b9E+VI0sDJ6XflWa
1puF7H2m+zeGM5H3cysduvocqDQZjvZQMCQ6HyybMElGLhUWjDRnXH950nxJ
C0TE1zxgBOcxaN7j30SLrEclra8PfJtiIhpT4ITP8WrkXP6rj/4TQ/WruJw+
NJdDjc42b4VAJqw2VunXnyWAYLrLPk7cr73L+OsUtJkItSJrJc2GGGhlzszM
emUyLBDH/XxxvXOWZBOwcXAUzrDu1z/lYkDp31GxtG4WRCc66x0d/9/fW4jN
MmvHICmJtFh5gQnKVlyksuxZeKOmft++CkPcraJU849zoOxauSmCxUQ5ekLy
J65TUGyQpBdfPhN+vlzmkvuIhDTrSvI52vD7MGCk6mJei5T+1j5PxuefmjZI
mRyphQeKIZem8PpIXpm/ePoLCaQ/X8o5iddbKeOAV3Q8C1TsjE33fcHA8FEm
ZVX4GJhsO7n3vSoGHaFtPH1us+C3TueLrhmGfmvqvIi/OgdKPPk20aG4/s8X
XMfyIqNrq83DI/B+WECPTjH4VIfM9n2+RAjD9e1Mw50Y40qkqvR6VEEeQ7f+
PvlcMFgJSe2HAjfifmaLuA7Ta74OcuWcFDfgfifV+NzKnI9EsOvkUhceZKJJ
3qmQwWQyOLwb0iHj9XDoikv5vW4MTtSnVr+cwuDBFtU/6axZSLhwYHMA3p/s
SmrN3fsX4RWB4l+g+hFdurrhOLccGb0Ll07lx/V1rNIhAwqTgJKopYzELgwd
cJMLPulcDX6yWtxBBRiolhbSrHhJkJLf/bXjGoZOn5w123Z4DPimXqlfqcJg
9Pzm/gXZOfgcnnbIexxDC6uwviAxCmJK9RxZY4QBdf+Il/UGEhoUqJfMeorr
Y+f1ZQt11SjSN0dNAferVeaK51JzCHDt1HY9blyv8zvmitH4cP+WfPpeNq5n
bfcZDV+qZQGVvKC8l4JBFPk+FvxxFhq8/xT+ysTQJwueSxrxJOScut37DK6H
k+zMk8gttWi7TiTPb3z8tTW6H5pv1MLPTxODFFx/S68teCQXQAKLAy1zgd14
/VSiz5x6yYLsFX8nLAMx2MbDqZtpPQda6d9Lj6ViyLLapbP7DRlJjNmNcuN+
70BRkyttoA6102aNzG9jqOLVwCud85XwJeicgY4aBr1y2lexvDpws3kzwuOP
wWzWzy8Zz8nw7tA3m+X4eucsxp8+XDUGzJe31njhfoKUkVDtOjgL5qFu177h
Ot2vb421VD8JZevXfG7F63MvdVe5yzUC8uO871mOP7c0VI8Jd6mBC6PmmQW4
H9ziAtnoMAnmZfltJdJxv5H1Mrhtzxx0bV0lPN6Gnzd99Ys1unWQ3vD47UIx
BlyCu3uPHSHDqdQL78xHMaR29K0ui8GCpmpH1U58f1B1UPey0lm4mSRsEduD
obLquduGdiRE7loWEfMb94+Ou7JZjbgeuruwxR8fv/eG3JnAXQRIPJxlwomv
R6xA78izChJ0+CoHrp/GUOjO4aTudBZoWn4R+YXP75OadmblBTJ6f36VeAcZ
Ax0J2/4I5zpUoi3KJ4TnX3HBpH6l8hhQBepGtzIxEHr1I4+6bA6OsgI4aXg9
n3LumbRkLYLT96tKz3vCUO/RTdV7tMjoYAG/aco0BkPl/N1GQnWoNHGZblYD
fp+reXb6Sc5B7o7SvB94PglfErnyRGpQ3iuZqAsdGFLs+ih9MYYA8o9aZ5NG
cP2St06ufoYEL3I07mD4fCleN21K/7LguI/gr8A+DGR38w9d+UZC3sJxMxvw
91/XMrGTqwhokxJ3OBl/f6usjpyhRi08Tex+/wjPZ4OzTDCfOwnaCmovVDVi
aJ5f8mf0AzK0yevY78TnPxSxYaydewzUIoOb/uD96I1bV11b5yzov4+ykhjD
EEfJ2rZToyS0+dHJokD8eaHJvGN1EAEZTkHPAAvv52Yq4txqNTAd9UriJK7n
jWXvDVzYOQfJdqTbt3H/vtwhhqGtSwbfdtOioEkMuQeUfTpOZMGd0DfXkvD8
7oaX9V8smAV01lYzuBlD9KTCkXSxWjTpi4pz8fffTsSLH5AkQE2VVfAbfH5x
0TeWLjkkCNM5b2CB53c/y3b3/A0yuhGh0rsX3x+JOFe4KDcGp37u92KwMPhj
O1p4dHYWWk7Swsvx/Rn2W99QLkJGedUjBvJ4vJwJCLq7dQ46ax2O7B7GEK+w
FQ/3OjJYrf9Wo4/3L5Hl0k/4W1jAq9xW2IxhsHpT7SXlqFr0ufOauSX+PGPF
HkWnb7WgVF/QshqPly5VKSkrOgafOU0yJfDzrEl3Kl9Dn4UM6/wcFdx/CC8K
9/TUkVC/EA31zGCgJuiqLHyUgOyOWOk748/f7tomveVrDaxLu9hKxc8f58+2
eicrMtTeOGTRS8PwcXdqIsZZsEG7w3YMP+9/FTLcd4TXoAkVPtIaOq5XKUkx
jWcIwOtW9l1uFgORS536ce0kCMmVcUnA4we/X7i/2oyMZmscJu3w9VjWefx8
xjcHnE+mLjHx9UjJ3jUqm10Enw6hGd5H7ui8kAlMz//zvSX+c8NcoO6hOPwD
vXRPU3sWe9g4QdDYTHoRY+Of1WZp9ouTbPzv/4/AwfHv78P/3+f//h6Tg+Pf
32NycPz7e1D2c/jPczb+9/ee7Phs/O/vTTk4/v295/+b77+/N+Xg+D/M8Equ

         "], {{
           {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
            GraphicsGroupBox[{
              PolygonBox[{{50, 1055, 1056, 87, 97, 42, 66, 43, 44, 45, 46, 47,
                48, 49, 67}}], 
              PolygonBox[{{104, 1047, 1048, 114, 93, 106, 68, 83, 53, 73, 10, 
               54, 11, 12, 13, 14, 15, 16, 55, 17, 79, 69, 99, 91, 110}}], 
              PolygonBox[{{95, 1051, 1052, 108, 98, 113, 89, 103, 80, 94, 75, 
               85, 26, 60, 27, 28, 29, 30, 31, 32, 61, 33, 71, 62, 90, 81, 
               102}}]}]}, 
           {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
            GraphicsGroupBox[{
              PolygonBox[{{1, 1045, 1046, 101, 109, 78, 88, 9, 52, 8, 7, 6, 5,
                4, 3, 2, 51}}], 
              PolygonBox[{{115, 1049, 1050, 59, 70, 25, 58, 24, 23, 22, 21, 
               20, 19, 57, 18, 74, 56, 96, 84}}], 
              PolygonBox[{{112, 1053, 1054, 116, 105, 111, 92, 100, 77, 82, 
               65, 72, 41, 64, 40, 39, 38, 37, 36, 35, 63, 34, 86, 76, 117, 
               107}}]}]}, 
           {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
            GraphicsGroupBox[{PolygonBox[CompressedData["
1:eJwV0DtPU2EAxvGDdNBoWkUmKyiLfgDjjbKByoCKfACQGpFJJ25l4TJx1ZCA
yuhIQSBhUi4ylYmpWk3KQEhKEQkDAe0kvw7/PM/zf897knOq4m+aXp8JgqAE
E4iEgiCMIf1KaRA0OEw6vI0c9wW1fAef5poRwTAf5R/zs/Yd7HIvuffcid2H
r1wd18l9t1twESP8Vf4JP2ffRZ5r4z5wf+1+LHMPuC7uh/0ck3bKvoFLdsKe
1c8jpRfkJD+jZ/UYsnoYo95XIZ9y2/Kz55Zkzr5X/C59WT+UUbkpA4T8oz31
lf6Rz8t/nl+XR/Z/OWB/kmn7WN6SGXkOZ91fcf+h3s3vyEzx/8gDu1Wf0jf0
myize+05/QKm7KS9pddgzLsq7UZ93tl9/ObauWmuYA9ilXvE9XA/7TguY5y/
xj/jF+xq7HNrqOcT/C/uBcrxlr/ON/GLdgx/uG94h1M1f06g
               "]], PolygonBox[CompressedData["
1:eJwV0LtPUwEYhvEjKoMOtLPS4iatujlDAoJOYHVSQeOIvfwHiAICA24ObaXt
4OxtMPFSS8KibTUkJiZurZfEwEBCrFUC4q/Dk/d9n++cNKcnbmYS6a4gCA7g
AcKHgiCErH7yYBBccXzpOIRf3DuM8Xf4BjeFY8jx/fxV/pU9jBb3HuP8Xb7J
3cJx5PkYf41/bZ/Dby7JFbg9ewFV7iI3y321k8jaNTuGXnvafqr3IGs/thv6
AB56P25P6G/cXug/9RF9Wa/oEazrXWh7PiWL3Ib857k12bIX9Uf6Z70tz8ov
8iiO+M9q3k3oc/wP+c3zZbnV+R6Z6vxPsm5vy7j8JA+j2/sR99v6M35ThmRV
7sqc2xO9qQ9ixW+dsif1stso7turdhR/3NN2Sd93W0Kdu8TNc9/tNKKY4Z5z
YeTtgudOc9ftt/Z5/OU+4DJ/r/N9XAZ9KPJn+Bt8xb6AHe4jSvgPxE9UgA==

               "]], PolygonBox[CompressedData["
1:eJwt0klLlXEYhvG3c44ehQKLTLfWwibIVanpRj+Blhk0KK4qp4WVpVuHlcPx
A2gF5VSmLUpXLko0y9BFmpoG2irKAYJAJPq90OLifq77+b+8wzlZVfWldZEg
CA5gCGM4GguCIxg0n48GwS0Hph0oQQSL/89esLttN6MrRRRL+mv6Dv1Pfh/Z
GNbn6u/o3/NLiKFB91QXQyf/4tx1XSf/xRtxEi2617p09PHnzuXpqvksv4wE
f8uPI4nf5c/CGV28ny+bc7Hs+hu8y7xlN2neNT8w95rnzb/lOflZxnHKrlW+
CZ9NHpMf5V8Z8b0e2Y/xTb4ni+S6TMNB+xfumW+u0W/ID86Pyx98X5bxHvmO
78oTckFGkWx3T/brkjFl/iO79QPmFXMeVtzjJu82b9s9RB9f4Dk4zdv4uDkD
j/mIay7qasP34VcQD3873YAujgRfda5Cl+A7vAln8FJfoA//SHO8HCn4qh9F
oV293SfdVaRiTV+p7wnflTfjLNp1E7pMPOGv+HdzMb6ZD+OQb/kP2JJZ5w==

               "]]}]}, 
           {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
            GraphicsGroupBox[{PolygonBox[CompressedData["
1:eJwl0rsvX3EcxvGjGCqpdqEIA21ddiOKjaoBva2CuiT1B7gOamFx/yWYrEXi
2qEkRd0WiUTStC6LRDrUPYYyeJ10eOfzPO/POSfnfHPSq5srPj0IgiAK/Xgc
EwRPEJE3cIViy6/44MKs6CAY4VL0Bhyhky/n1/lLFHGLeM9n8sNcsl6PQ3Tw
r/kffLd+h3Guibvg0uRl9OqFdgt4p7/Qh+wL5CNM6hG7W3lLjjen0SYn8THm
LnK4bUTkj/yp/E0+kI/Ndr3MXPPsh749Tv6JXP7G3DMnzM/hIdlf6yv6rf7H
HNMbzXPrWPsoeQep/Lm5ZPaYL11/Is/L8/Jb+bk86L58+RBfwvO1+ydvyo/M
KbTKT/ns8Fsxotfp+2jTX+mrntMV3otRroE7C89Ln8Mb7hk3wCXqtfiNVr6U
X+FPw3fhZlHFZ0T//y8S9Br8Qgtfwn/n/yKPm0Eln873cfdkwU/o
               "]], PolygonBox[CompressedData["
1:eJwl0TtPU2EAxvFTSmQhIaAfgJtOiKIIs6sCEhPxslFvm70gHwAYEFojO5Sk
hVZHEyRsxpbLYrReMBoTFwel6EBiYkKUy++E4Z/n+T/ve9qctiUWv/qgJgiC
CGbRWBsETXimfwp3B4PYwH0XL0SD4Kn9FB/FL2Tst+yb9sc8yheRih598BWs
456t21Y0z/MTfBkTtpO8U68gyx/ybaT5Tf7RM736FxR5xlmNvoAkP3Deopcx
wwecV/UVfU2/q5/XC+41yG+4aNuV3+VzmXUv4t33+Gt+XP6WL+S4bHde5/xY
+K44bf8j38o5OeJ8X+7wl7LKf8hpfkN+8N318it6bJ9R0NPu/dXX9IjMI6Hv
u9+sl/CE97u3ijv8HF90Pseb+BLGbG28Q3+DWZ7iW5ji1/l7z0yHfzbPIW7b
o322Mm7bumwLtlaexE88sg/Z39n/47KthJj9rD0f/v48Eb4zJu3X7BX7P1yy
vcKw/Yw9ZzsEbWZUew==
               "]], PolygonBox[CompressedData["
1:eJwV0DtMU2EYxvGjOCDYDiIqbCY6KlKdHBCNcpHNTdBBcOZqoiaCAl5wtYXJ
QcO1daMCFhYX2YjSJi4kUIXGAcKAkjRh0N8Z/nmf5/9+38k550x71+3Ow0EQ
HMI7PEfFkSCIYkTOoIDLDqTQ4nBVSRC85j5jC5f4JG7ZnbZ7xUX1e8jhIX+d
X+Cf6fsY4x5wm1xMn0Ezd4p7ySX0Mv0jnnAR/Zy8jIR+V9+RF+Ws3Cdfk+fd
LTV/IMbl8EEecGZP/iL/lX+bo3qH+cudEt/7T1/Rq81dc8l8Y9Y6f2AW9LQ5
refNJv2k+cL9cvcj8hqu8MUwm0kz7nwxfHf5qJnCY/kYf1b+irjepm/LGXlV
7pXr5TnPr5WzeK/32/1BQm/Xf9pXhf8CI/pFuyk06pX6sP1bvTR8HzziyvVW
fEcPd5X75NzT8D8hzt3n8lyNPokG7gQ3xJXpd/AN3Xwdn+Y3cIGbwE2+gh/k
ZrGO8/w4btgdt/sP3E9SPg==
               "]]}]}, {}, {}, {}, {}, {}, {}}, {{}, {}, 
           {Hue[0.67, 0.6, 0.6], Thickness[0.01], 
            LineBox[{1, 51, 2, 3, 4, 5, 6, 7, 8, 52, 9, 88, 78, 109, 101}], 
            LineBox[{114, 93, 106, 68, 83, 53, 73, 10, 54, 11, 12, 13, 14, 15,
              16, 55, 17, 79, 69, 99, 91, 110, 104}], 
            LineBox[{115, 84, 96, 56, 74, 18, 57, 19, 20, 21, 22, 23, 24, 58, 
             25, 70, 59}], 
            LineBox[{108, 98, 113, 89, 103, 80, 94, 75, 85, 26, 60, 27, 28, 
             29, 30, 31, 32, 61, 33, 71, 62, 90, 81, 102, 95}], 
            LineBox[{112, 107, 117, 76, 86, 34, 63, 35, 36, 37, 38, 39, 40, 
             64, 41, 72, 65, 82, 77, 100, 92, 111, 105, 116}], 
            LineBox[{87, 97, 42, 66, 43, 44, 45, 46, 47, 48, 49, 67, 50}]}, 
           {Hue[0.9060679774997897, 0.6, 0.6], Thickness[0.001], 
            LineBox[CompressedData["
1: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
             "]]}, 
           {Hue[0.67, 0.6, 0.6], Opacity[0.2], LineBox[{123, 122}], 
            LineBox[{124, 118}], LineBox[{125, 119}], LineBox[{126, 120}], 
            LineBox[{127, 121}]}}, {{}, {}, {}, {}}}],
        AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
        Axes->True,
        AxesOrigin->{0, 0},
        ImageSize->Large,
        Method->{"AxesInFront" -> True},
        PlotLabel->FormBox["\"Elijo la azul\"", TraditionalForm],
        PlotRange->{{-1, 2}, {-1., 1.}},
        PlotRangeClipping->True,
        PlotRangePadding->{
          Scaled[0.02], 
          Scaled[0.02]}], {921.5999999999999, -189.86004134396768`}, 
       ImageScaled[{0.5, 0.5}], {576, 355.9875775199394}]}, {InsetBox[
       GraphicsBox[GraphicsComplexBox[CompressedData["
1:eJyFvHk0llEXPkxUhgyJDEVKkZmkFNqaKCmVQhlSRINoVCRKFDKVKVKZGg1J
qEyHSGaPeZ555ue58ZjH736/78N6398fP/9Y17rvs88+Z5+zr+tay23zJefT
l1ewsbFJc7Kx/ef3X+vN3QsLGGL7f3+G0M7dBlvfSDKXsB5a2x0vRF/CqrGf
3p1WoC7hsLiPvhHHyEs44rQhWf8QcQm7Wf42en9hYAnPiFTJ2p3uW8Ij2FHF
vBM9Szjy8Nar7u0dixie8szbm5W2LGHNJ05OXtMNS7he63t5I9Qu4bPv3bZy
XilfwiFqBSWzbX+W8EM2dc8TZplLeEPQV8F1IuFLOHWAPY7bOQEW8zHmXf2L
Ovl7CUepROn4vipewqLiMfqU8sol3KX3qN7dqW4JOxaJTO/c0bSEC4h2msIG
bcvxzSUdEtZ3LWHXYvYtPpSeRQzKygQJo6G+JTyvU89/vWFgCe94qx4o2Utc
wkMdsr3aA+QlXFl0Ui29mLqEeWcauXOr6EvYoTW4SzKDuYQ/HrtZfO/I0FI+
FadLrGWPDS9hz5SscS+dkSVsl9ZgIn+AtYRbVgWmPtw1uoTXVgmOcsiOLWF3
7T/zjfLjS/jeHN/qMxsnlnCsw/OGDTKTS/mE7K8MEN82tYT5nZMO4Fu6hPMP
/crLkphZwnM3Luwy5Z9dwuyr66IU55bxriO3/xiyzS/h6Y5kssjIMrb9FoIt
LCws4VnDjCdV/Mv3Y9yL90vIyd4lnC/UceFhbtfS+eHbvpZMqW1bwisSLQ6G
xnxdwvu1z6mzlT1ZWm/9/MHi3S3fl7Dvpv3V7SodSzg3xivSZKh7+f3JK+/I
9N6l/PZQd4zSCxhL+LzWrx/e8dgS1jJ+s7a6bLmeDzaSV4gkLO+/f3o54+f7
5f1/3fAlTSJxef9VSqToPK7L+3Fqanf7dHL30nrGemawbRcfLOEHA6ZSeSuX
8+3h2nr0lOJyPmzmjtMrrZfnU1B6PDBT0bk03kPDPOVob+Ty+Zq305+8tXwf
qBqyAh1rltcjwiffe7V3Od7x8dtGb4WW+4n5sy8BlsovluKffxPRor5rOZ7o
yRVXpbqW8yN0u5JCCpbjca3yl8zZubxeCcUbgxkXTZeeO13UyMhPWY5XChWU
zwrL+dWab5KgcSzvp/SdLu0UteX8Gq9+izshtjxe65BV0KmC5XxUImKzfpVe
Wpr/VwKbddPwcn7jI/zZEpTl/LorHwmInFmOZ32isEJ+cjleYs+q6l3hd5fG
zxG+mX0TWs5PqFZ7lRX38vhV6z9uK+y7uRTfviVsUyxlef747/t2Nq1eXs+q
pjNNnIzl+V6vkNHVk1uO1/C8ZJpgbrwUj9vZMWbN9HK8rS4J5TwVy+sZGXJv
ubJy6H/nW4onJvr6pDjv8vweEeEtn8JMl8bb+O16NDw28T/1WI539+1YfaPg
crz//74tjW/5//Jdel/1U8+g8OxyPKdXtXe2cP9vvZfx/y3e/56P/13f/97/
/63n/+7//+7v/+a7yPfESP3MRkLUvkW+z0k7vxC6tRkW+f6BhP8u7eNEWOR7
33W7t6bJMmCR793jFcJ1RjBY5PujCl2rtiowYZHvtynIbHqyhwyLfN9SOFVr
oNwBi3y/2SpddICYCot87+9s/kbMuR4t8j29RolFqxtAi3x/+oKlPUGPjhb5
/rqlXNLdPxha5PuHm1p0NlUx0SLfa1yILlz3koIW+f5Q6+cwM/YetMj3NZeJ
R3meFqBFvrcVW9NG1KmGRb73GT9B8OTth0W+d9q6ct0rMRos8v3nHfWxKdEY
LPJ91SOfo99EMVjk+8pcIaGnB6iwyPfHzfgODvL2wiLf39l2Mv5+7z9Y5PtV
ZX1BSVUlaJHvXyZXqXTd7UWLfJ8+U7zn0QIFLfL94UuZq933YmiR7wcHz1RW
eWFoke9XxnMaGdnS0CLfh4s7RV8q70OLfF8TF1eSLElAi3y/N53/tvvlXFjk
+wdtG80sN3fDIt8rVYoMRcWSYZHv458v5It9YsIi3z9wX8F2pR+DRb732mjv
2lJJh0W+9zCffrlz8yAs8j1D+jGvA7ERFvmeR/T26rfBSWiR76U7YqOzCO1o
ke9JfFLdOdYktMj3QS9SFDx5mGiR73M1JTo55zG0yPdcm0Nkxt4y0CLfp9/6
PLryHREt8n0v6aqyD2pFi3zvoRaYgd+H/EW+d0uwEXd68Q/2Pkxm3yTGQC3u
Ztm3jvTCr28d+W5SNJTbeRDJqlKhT/pT6OheCvLXPnleRggDEbcHv5gGJGSu
uvmIZyoGvs1PJFinBtGR6/N36pNosHdP0W/2c/2I8etsw8HAfljUEzu0Df6F
mxKW9INkX5Knj3w36jicRXXsbUIub8142abIiLMzeKOSZD3aNdJxXN6biTx8
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

         "], {{
           {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
            GraphicsGroupBox[{
              PolygonBox[{{101, 1045, 1046, 1, 51, 2, 3, 4, 5, 6, 7, 8, 52, 9,
                88, 78, 109}}], 
              PolygonBox[{{59, 1049, 1050, 115, 84, 96, 56, 74, 18, 57, 19, 
               20, 21, 22, 23, 24, 58, 25, 70}}], 
              PolygonBox[{{116, 1053, 1054, 112, 107, 117, 76, 86, 34, 63, 35,
                36, 37, 38, 39, 40, 64, 41, 72, 65, 82, 77, 100, 92, 111, 
               105}}]}]}, 
           {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
            GraphicsGroupBox[{
              PolygonBox[{{87, 1055, 1056, 50, 67, 49, 48, 47, 46, 45, 44, 43,
                66, 42, 97}}], 
              PolygonBox[{{114, 1047, 1048, 104, 110, 91, 99, 69, 79, 17, 55, 
               16, 15, 14, 13, 12, 11, 54, 10, 73, 53, 83, 68, 106, 93}}], 
              PolygonBox[{{108, 1051, 1052, 95, 102, 81, 90, 62, 71, 33, 61, 
               32, 31, 30, 29, 28, 27, 60, 26, 85, 75, 94, 80, 103, 89, 113, 
               98}}]}]}, 
           {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
            GraphicsGroupBox[{PolygonBox[CompressedData["
1:eJwV0DtPU2EAxvGDdNBoWkUmKyiLfgDjjbKByoCKfACQGpFJJ25l4TJx1ZCA
yuhIQSBhUi4ylYmpWk3KQEhKEQkDAe0kvw7/PM/zf897knOq4m+aXp8JgqAE
E4iEgiCMIf1KaRA0OEw6vI0c9wW1fAef5poRwTAf5R/zs/Yd7HIvuffcid2H
r1wd18l9t1twESP8Vf4JP2ffRZ5r4z5wf+1+LHMPuC7uh/0ck3bKvoFLdsKe
1c8jpRfkJD+jZ/UYsnoYo95XIZ9y2/Kz55Zkzr5X/C59WT+UUbkpA4T8oz31
lf6Rz8t/nl+XR/Z/OWB/kmn7WN6SGXkOZ91fcf+h3s3vyEzx/8gDu1Wf0jf0
myize+05/QKm7KS9pddgzLsq7UZ93tl9/ObauWmuYA9ilXvE9XA/7TguY5y/
xj/jF+xq7HNrqOcT/C/uBcrxlr/ON/GLdgx/uG94h1M1f06g
               "]], PolygonBox[CompressedData["
1:eJwV0LtPUwEYhvEjKoMOtLPS4iatujlDAoJOYHVSQeOIvfwHiAICA24ObaXt
4OxtMPFSS8KibTUkJiZurZfEwEBCrFUC4q/Dk/d9n++cNKcnbmYS6a4gCA7g
AcKHgiCErH7yYBBccXzpOIRf3DuM8Xf4BjeFY8jx/fxV/pU9jBb3HuP8Xb7J
3cJx5PkYf41/bZ/Dby7JFbg9ewFV7iI3y321k8jaNTuGXnvafqr3IGs/thv6
AB56P25P6G/cXug/9RF9Wa/oEazrXWh7PiWL3Ib857k12bIX9Uf6Z70tz8ov
8iiO+M9q3k3oc/wP+c3zZbnV+R6Z6vxPsm5vy7j8JA+j2/sR99v6M35ThmRV
7sqc2xO9qQ9ixW+dsif1stso7turdhR/3NN2Sd93W0Kdu8TNc9/tNKKY4Z5z
YeTtgudOc9ftt/Z5/OU+4DJ/r/N9XAZ9KPJn+Bt8xb6AHe4jSvgPxE9UgA==

               "]], PolygonBox[CompressedData["
1:eJwt0klLlXEYhvG3c44ehQKLTLfWwibIVanpRj+Blhk0KK4qp4WVpVuHlcPx
A2gF5VSmLUpXLko0y9BFmpoG2irKAYJAJPq90OLifq77+b+8wzlZVfWldZEg
CA5gCGM4GguCIxg0n48GwS0Hph0oQQSL/89esLttN6MrRRRL+mv6Dv1Pfh/Z
GNbn6u/o3/NLiKFB91QXQyf/4tx1XSf/xRtxEi2617p09PHnzuXpqvksv4wE
f8uPI4nf5c/CGV28ny+bc7Hs+hu8y7xlN2neNT8w95rnzb/lOflZxnHKrlW+
CZ9NHpMf5V8Z8b0e2Y/xTb4ni+S6TMNB+xfumW+u0W/ID86Pyx98X5bxHvmO
78oTckFGkWx3T/brkjFl/iO79QPmFXMeVtzjJu82b9s9RB9f4Dk4zdv4uDkD
j/mIay7qasP34VcQD3873YAujgRfda5Cl+A7vAln8FJfoA//SHO8HCn4qh9F
oV293SfdVaRiTV+p7wnflTfjLNp1E7pMPOGv+HdzMb6ZD+OQb/kP2JJZ5w==

               "]]}]}, 
           {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
            GraphicsGroupBox[{PolygonBox[CompressedData["
1:eJwl0rsvX3EcxvGjGCqpdqEIA21ddiOKjaoBva2CuiT1B7gOamFx/yWYrEXi
2qEkRd0WiUTStC6LRDrUPYYyeJ10eOfzPO/POSfnfHPSq5srPj0IgiAK/Xgc
EwRPEJE3cIViy6/44MKs6CAY4VL0Bhyhky/n1/lLFHGLeM9n8sNcsl6PQ3Tw
r/kffLd+h3Guibvg0uRl9OqFdgt4p7/Qh+wL5CNM6hG7W3lLjjen0SYn8THm
LnK4bUTkj/yp/E0+kI/Ndr3MXPPsh749Tv6JXP7G3DMnzM/hIdlf6yv6rf7H
HNMbzXPrWPsoeQep/Lm5ZPaYL11/Is/L8/Jb+bk86L58+RBfwvO1+ydvyo/M
KbTKT/ns8Fsxotfp+2jTX+mrntMV3otRroE7C89Ln8Mb7hk3wCXqtfiNVr6U
X+FPw3fhZlHFZ0T//y8S9Br8Qgtfwn/n/yKPm0Eln873cfdkwU/o
               "]], PolygonBox[CompressedData["
1:eJwl0TtPU2EAxvFTSmQhIaAfgJtOiKIIs6sCEhPxslFvm70gHwAYEFojO5Sk
hVZHEyRsxpbLYrReMBoTFwel6EBiYkKUy++E4Z/n+T/ve9qctiUWv/qgJgiC
CGbRWBsETXimfwp3B4PYwH0XL0SD4Kn9FB/FL2Tst+yb9sc8yheRih598BWs
456t21Y0z/MTfBkTtpO8U68gyx/ybaT5Tf7RM736FxR5xlmNvoAkP3Deopcx
wwecV/UVfU2/q5/XC+41yG+4aNuV3+VzmXUv4t33+Gt+XP6WL+S4bHde5/xY
+K44bf8j38o5OeJ8X+7wl7LKf8hpfkN+8N318it6bJ9R0NPu/dXX9IjMI6Hv
u9+sl/CE97u3ijv8HF90Pseb+BLGbG28Q3+DWZ7iW5ji1/l7z0yHfzbPIW7b
o322Mm7bumwLtlaexE88sg/Z39n/47KthJj9rD0f/v48Eb4zJu3X7BX7P1yy
vcKw/Yw9ZzsEbWZUew==
               "]], PolygonBox[CompressedData["
1:eJwV0DtMU2EYxvGjOCDYDiIqbCY6KlKdHBCNcpHNTdBBcOZqoiaCAl5wtYXJ
QcO1daMCFhYX2YjSJi4kUIXGAcKAkjRh0N8Z/nmf5/9+38k550x71+3Ow0EQ
HMI7PEfFkSCIYkTOoIDLDqTQ4nBVSRC85j5jC5f4JG7ZnbZ7xUX1e8jhIX+d
X+Cf6fsY4x5wm1xMn0Ezd4p7ySX0Mv0jnnAR/Zy8jIR+V9+RF+Ws3Cdfk+fd
LTV/IMbl8EEecGZP/iL/lX+bo3qH+cudEt/7T1/Rq81dc8l8Y9Y6f2AW9LQ5
refNJv2k+cL9cvcj8hqu8MUwm0kz7nwxfHf5qJnCY/kYf1b+irjepm/LGXlV
7pXr5TnPr5WzeK/32/1BQm/Xf9pXhf8CI/pFuyk06pX6sP1bvTR8HzziyvVW
fEcPd5X75NzT8D8hzt3n8lyNPokG7gQ3xJXpd/AN3Xwdn+Y3cIGbwE2+gh/k
ZrGO8/w4btgdt/sP3E9SPg==
               "]]}]}, {}, {}, {}, {}, {}, {}}, {{}, {}, 
           {Hue[0.67, 0.6, 0.6], Thickness[0.01], 
            LineBox[{1, 51, 2, 3, 4, 5, 6, 7, 8, 52, 9, 88, 78, 109, 101}], 
            LineBox[{114, 93, 106, 68, 83, 53, 73, 10, 54, 11, 12, 13, 14, 15,
              16, 55, 17, 79, 69, 99, 91, 110, 104}], 
            LineBox[{115, 84, 96, 56, 74, 18, 57, 19, 20, 21, 22, 23, 24, 58, 
             25, 70, 59}], 
            LineBox[{108, 98, 113, 89, 103, 80, 94, 75, 85, 26, 60, 27, 28, 
             29, 30, 31, 32, 61, 33, 71, 62, 90, 81, 102, 95}], 
            LineBox[{112, 107, 117, 76, 86, 34, 63, 35, 36, 37, 38, 39, 40, 
             64, 41, 72, 65, 82, 77, 100, 92, 111, 105, 116}], 
            LineBox[{87, 97, 42, 66, 43, 44, 45, 46, 47, 48, 49, 67, 50}]}, 
           {Hue[0.9060679774997897, 0.6, 0.6], Thickness[0.001], 
            LineBox[CompressedData["
1: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
             "]]}, 
           {Hue[0.67, 0.6, 0.6], Opacity[0.2], LineBox[{123, 122}], 
            LineBox[{124, 118}], LineBox[{125, 119}], LineBox[{126, 120}], 
            LineBox[{127, 121}]}}, {{}, {}, {}, {}}}],
        AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
        Axes->True,
        AxesOrigin->{0, 0},
        ImageSize->Large,
        Method->{"AxesInFront" -> True},
        PlotLabel->FormBox["\"La invierto en tiempo\"", TraditionalForm],
        PlotRange->{{-1, 2}, {-1., 1.}},
        PlotRangeClipping->True,
        PlotRangePadding->{
          Scaled[0.02], 
          Scaled[0.02]}], {307.2, -569.5801240319031}, 
       ImageScaled[{0.5, 0.5}], {576, 355.9875775199394}], InsetBox[
       GraphicsBox[GraphicsComplexBox[CompressedData["
1:eJxlvHc81W/8/09URkayi0iRTVIKPbUoKb1TKCNlNURTkRJRyCpUpLKaRhIq
60oke+89zz7nhWPP3+vz+34dn/f7659uj9t5net6jut6XvfniyvZ824nHFew
sbFt42Rj+59//9jK9iwuYojt//8ZRtt3Gm1+JcVgaQO0tidBiMbS6nEf3pxQ
oixpiIx/H/D8CImln58wJhkeILC0p/VPk7dnB1l6VqRK3uFEP0uPYoeV84/1
svSLg5svenV0svRDngUni9JWltb2cXX1nWlk2dOg87W8CepY+tRbz82cF8pZ
OlzjV8lc+2+Wvsum6X3MIoul14d+FlwnEsXSaYPs8dxuibCkTXlX/6BM/WTp
aLVovYBnxUsaxCRiDcnllSzdbXCvwcu1nqVdikRmtm9rZulfBAdtYaN2lja1
lHJOFO1maY9i9k3+5F6WVlWtlTQZ7mfpBb0G/suNgyy97bVmiFQfgWXfcKd8
n+4giaUri45rZBRTWJp3tok7r4rG0s5tYd1SmQyWfn/kavGtQ8MsXXGixFb+
yAhLe6dmT/jqjbK0Q3qjmeI+Jsue1lUhaXd3jLH02irBMQ75cZb20v290KQ4
wdK35vlWn9wwydJxzo8b18tNsXT43spgiS3TLM3vlrwPDylLFxz4kZ8tOcuy
Z/7K2R3m/HMszb66Plp5flnvOHT9tzHbAkvPdKaQREaXtf2XcGxxcZGl54wz
far4l/fH7rsp7BvF6Sz940tngac0lbU++2U+RIztJrM039a1JHJdO0t3Hsym
uPQ1szRnV9gGFamG5fW8sL94Z+tX1vwyZ45V3v/7i6VbE2MKf6SVsvwXzaqL
tOofYGnxKyuOFbcPsZ5fq6/yPaWfyNJbHhR8bixazudo2sEt5oiVT3jToeFz
Im85n6atuc6ur5fjT2jTZNN/yYo/sm3j9XwUuRx/tRJpGo/Hcvy8dk5Wh75k
xQdpbG3f2t/YwvK/tOefrWNF+cvrs+lS2guLZft11BZCaPeW7fNMcpVls1jO
/5jC7zSnpOV6FGD/LGWS3sSaz7r4hh9H6u9l/1fG0IdtlvdLsnpIHmJb9veE
wHi3R9v/8u8uZ8vLpmX7Obnf2rKLLtvXeeXM7502y/uhmJsv49yOZfsyTiYd
yXBezvcegXNb9+YUsp6PYZJL/KyWxxeK37GgGr08fhQj/nT8m2X/NaA2/M3t
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
         "], {{
           {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
            GraphicsGroupBox[{
              PolygonBox[{{118, 1061, 1062, 1, 51, 2, 52, 3, 83, 71, 98, 89, 
               112, 104, 124}}], 
              PolygonBox[{{50, 1073, 1074, 122, 114, 128, 92, 105, 68, 82, 45,
                69, 46, 47, 48, 49, 70}}], 
              PolygonBox[{{123, 1065, 1066, 111, 127, 103, 117, 78, 93, 12, 
               57, 13, 14, 15, 16, 17, 18, 58, 19, 73, 59, 88, 79, 109, 
               100}}], 
              PolygonBox[{{126, 1069, 1070, 119, 107, 125, 95, 113, 84, 101, 
               74, 90, 62, 80, 29, 63, 30, 31, 32, 33, 34, 35, 64, 36, 96, 85,
                120, 110}}]}]}, 
           {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
            GraphicsGroupBox[{
              PolygonBox[{{115, 1067, 1068, 131, 28, 61, 27, 26, 25, 24, 23, 
               22, 21, 60, 20, 106, 94, 129}}], 
              PolygonBox[{{130, 1063, 1064, 121, 87, 97, 56, 72, 11, 55, 10, 
               9, 8, 7, 6, 5, 54, 4, 77, 53}}], 
              PolygonBox[{{102, 1071, 1072, 99, 108, 76, 86, 44, 67, 43, 42, 
               41, 40, 39, 38, 66, 37, 81, 65, 91, 75, 116}}]}]}, 
           {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
            GraphicsGroupBox[{PolygonBox[CompressedData["
1:eJwV0D1PU2EAhuGDBbETDg4YSGuFyQo4yQ8gKlomFGTwi/6AFjCif0DFumid
UEGWFnV0tK0fiZPWr6lMTNVCUgZCUgtK8GK48zzP/Z73JOfEkunR1IEgCFqQ
RbQ1CCKY10+EguCKw4LDM2hwn3GRv8tXuRSieMrH+at80T6LP9wtbpk7iEfc
F+4Sd8/+ZadxDM/4k/w1vmSfQ5Ob5V5y7XjMlbkx7r79255Czq7YpxGzM3ZR
70JFDyPHv5V1LoG6HsFz7+uT17lN+c5zn2TDHt7/Lr2s78m4XJWHccQ/2nb3
tv6Kb8pD8qcMocN51v03epVvs4dkzT6KTvur++P6HL8la/v/R+7a03peX9EH
cdx+aJf0buTtgr2hj2DBu/rtG/p7Z+exw93hXnNhPOG+cZe5B/aaPYMeLPID
/CT/wb6Av9x3TPAZfp27iV684E/xSf6jncA/7geW8B81yk/I
               "]], PolygonBox[CompressedData["
1:eJwV0btPUwEUgPFLoRYJYmIiAwy2s9o6CggbswRUZELBScEyK4//QBApyAB7
Wx4dnBUdTHjUmrAgFGJiQsLWKiQEB/3d4cs533fuTdM2MZTufRkJgqAGGSTq
giCOrP1ubRA8d9x07EMd9vRB/a1e4a9wEzm9TX+hb/EHiOKH/kSf1av8NW4h
r7frI/o2f4hLGNfWtCtY4Puee6q947/DO7L8gLfjNn/DN+w3kOUfecV+Hyve
7+Cj9h23r/Zz+yP7kr1kT+Kn/Rpi+oS5rl2YTeauGcV7tw/msRbzG3WbJ7wV
LfzAZw3Z5/Qz84/ni+a/8Pu4T4S/Ey/zCO8wf/HraOZJ92n7Z/2vGTf3zUbk
3D6ZVa0Hqz7rHg//vKJbP5b5d55CPZ/kBftVLPKyd4a1DD8N70hhRvuiJZDn
a57r1NL8G3+MyzjUn+nz4ffjU7iDdb1LH9NLfAANONIL+A/ehk7f
               "]], PolygonBox[CompressedData["
1:eJwV0jlPVVEUQOH7hITEGAqmhwkmYACtsUCQBCtlkAZ/AZOagECpjIUooq1A
xfAoLUBIZHQACsTKQgiiaKAQAUUTsSKIfrdY2Xutc27emFXdVNl4IgiCCJ5i
AdnxQXAWM/YrcUFwx4U1F6qQhG19Fled3XX2QatGMr7p9fqAfsQfIB9zeone
oq/zGqTgnvZcS8Eg33GvQRvkf3k3LuKJtqTlYIy/cK9Ua+UfeS1i/D3PQyrv
4pPhjiE+xXftJdj1/G0+ZD929s4ewUP7qLmpx/sOis2vPIoCZ73mm/C9mbnm
hpmIJHefOV+wH+gneaX5k2cig7/0mmX2Nv23+cn9ZfOQn3Jex0f4Co/wC+YW
T0aas/vmlJaGVXsChvVpc08rxZ7XaAy7/Z+zHozxLX4ZhbyPL9vPYZy/8ky5
1h5+Hn4D0fC306a1KGL8u3tNWiz8w+CRdgmv6TW9Q/vMbyIdP/R5VDjrdPZF
u4XT2Neb9ZHws+KxVoR+7S0/jwm+yP/Yr+OXPQtnfDf/AfihW5A=
               "]]}]}, 
           {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
            GraphicsGroupBox[{PolygonBox[CompressedData["
1:eJwl0LsvXnEcx/HDIwYMlTCQ1GVoXVID2mI3um96MbSqLCwu1f4JrhEsLO5P
oiarkrSUQZvQi7JIJBJxXSRiQF8nhne+n8/7+zsn5/yy37TVtcYGQRCDIWTG
BUEWovIOIhZ12ECLgyWRIJjj8/VuXGCQb+D/8rF6LdbRzD/nZ/k8/QPOMcC/
5v/wo3qSvoBPXIxeIP/EuF6jf8d7/Zk+45kq+QJf9KhdormLDG4FfXIun2Ie
oIzbQ1Tu4m/lTflMvjT79Vfmb+9O8+/p8hHK+Xj90FzUR5x/oMfJ20jkr83P
5sfI/SWm2ifL+3gSXqz+wxzTq+2v5DV5TW6Sn8rTjlXK51gK79cuwfyHh9wy
euUcvlTexZzeqZ+iT3+p//Ke4fBZfR7d3F14X9wq3nHF3BT3WO/ACXr5F+E/
8bfht3Df0MgX8ZPcI70dx+jh6/kt/gYV3Fe85Qv5Ce4/v0tNFA==
               "]], PolygonBox[CompressedData["
1:eJwVz7tPU2EYgPFPakgIF1tJcCEhoH+Axcskglx0lhEFDQl4GTSiwigU/APE
QWgxugsmbWllNEHjZmhRFgP1GoyJCwNaZeDX4cn7Ps/3nZNzWodv99+qCiEc
QAqtB0Now4r9B2IOrmIDEy72RUJ4pZ/mD/EfC/pN/bv+lDfyZSS0KL+CjxjX
erW8ey/5Mf4Wj7VT/Ky9hCU+w/8hxW/wb565YP+JPF9wdtiexRQ/xOP2Ip7z
IV62v7N/sN+399hz3tNi/sZFrca/7piv+ZJ7MV5v/4Sj+p75xpw1Tzo/4ryp
8q/o0CN8y1zk084beLC/R5nvmknn182vjprNXzivbSNnT7lXXflOxLQMJu0N
+nF7Ac/4IF/HPd7Nl71vkbfxVTzSTvAz9k284An+F/P8Gv/imSSP8jQeaPX8
Moq4q53Tsu618yn8wZw+qn/W6/glFDCmd+kZPc4nK/+MJ/qIXtJr+QDWcEfv
1NP6PnK+UzY=
               "]], PolygonBox[CompressedData["
1:eJwV0L1Pk1EYhvEXWhMSBgeXCtIEi2CZYUSgODEINn4gbm6ISFD+AEUSJQEE
FS2JEy3MGj+wuFlF0cUFNiLSxKWJFoQ4SIy/d7jy3Pf1nNO8PfVXhtPXK4Mg
qMBTzCARDYI4MvIa9nHagRVcdjgZCYIn3CfsoYvPo9/upN1jLq4PoYhxPs1/
5O/rh/QljHK/uRT3Bpe4Jm6Oy+k1+ltMcHV6q7yBnH5NP5A/y9vyHfmsvOpu
zPyBFFfEc3namUrzK6LcH3PRvGnuunPE/z0sb6KZ/2d+MefNTner7ff1gr6s
l80+vdF85H6tfZ1cQjdfpZfMvJ51vsrcwFFuBffkY3yLvI6sPqj/ldfk7/KY
3Ct/8Pud8jae6VN2kfAdcEPfsU+Gb4GM3mH/Ghf1E/pD+wU9Fn4P7nK1+lVs
4TbXw713bjJ8p/B7MMKVuXbuFS5wDdwDrkYfwDfc4s/wBf4XTnEvcZ5P8LPc
O/xEG/8C5+yO2/0HcUFTBw==
               "]]}]}, {}, {}, {}, {}, {}, {}}, {{}, {}, 
           {Hue[0.67, 0.6, 0.6], Thickness[0.01], 
            LineBox[{1, 51, 2, 52, 3, 83, 71, 98, 89, 112, 104, 124, 118}], 
            LineBox[{130, 53, 77, 4, 54, 5, 6, 7, 8, 9, 10, 55, 11, 72, 56, 
             97, 87, 121}], 
            LineBox[{111, 127, 103, 117, 78, 93, 12, 57, 13, 14, 15, 16, 17, 
             18, 58, 19, 73, 59, 88, 79, 109, 100, 123}], 
            LineBox[{115, 129, 94, 106, 20, 60, 21, 22, 23, 24, 25, 26, 27, 
             61, 28, 131}], 
            LineBox[{119, 107, 125, 95, 113, 84, 101, 74, 90, 62, 80, 29, 63, 
             30, 31, 32, 33, 34, 35, 64, 36, 96, 85, 120, 110, 126}], 
            LineBox[{102, 116, 75, 91, 65, 81, 37, 66, 38, 39, 40, 41, 42, 43,
              67, 44, 86, 76, 108, 99}], 
            LineBox[{122, 114, 128, 92, 105, 68, 82, 45, 69, 46, 47, 48, 49, 
             70, 50}]}, 
           {Hue[0.9060679774997897, 0.6, 0.6], Thickness[0.001], 
            LineBox[CompressedData["
1:eJwl1nf8T+Ubx/GPmVVZZWWFMiqyZWVUCEUS2YSyZaXSUlmV7IiMKJIVysye
ZSWjbFHKzF7xe16P3x+vx3W9X/d9zud7zrnPfb55W3et3yVJIpEYkSyR+FS9
X22QNJGYT1bEGW41hiGfseeNLeAr4Sy3BnX5d/hD3CvIjuF8fr4hv1CujHNc
d+5LLik+4tZyz3DvyoflDsiBAdxiLiumyCPMK8C9IH8vP47P5M1yIfxr/FV5
qj4ZPjY+Vz6qr4J1xp+V39MfMbZJf0PfUf+lfpe+JO6TB8pL9NmwW58q/mZ+
sXqSS5U8kailnpRzIoc80vkf0Dfiz6k/mL9GvSSnNV5FHiv/JN9SC6sH1LuR
yfh5x/fQT+OvqMnV7WpSfOLYeeofXFX8qc+K9Y6pp/bnjpqzWX9T30k/Vb9b
Xwo55UHyUn12TJVHOfZBrrG8SK6KC1xP7isuBYZyG7j63PvyH3Jn5MJoviD/
Ir9YroaL3EaMQSFjTYwt4avjErcJnyGX6x2rFjanqTlLjT+By9xmPMd/wB/j
YnHmxji+CN+MXyY/iStcL+5rLiU+5X7iGnAfysflrsiDz/mH+Ob8cvkpXOV6
c9O5OzCM+5l7nhsQ91nuhmnyHrk08sqD5WX6HNijTx3PjV+inuKexil9Lox3
vofVFrFG1R9jzauX5RpxXfqf9bfVIupBNT0yu0fXHNtHP4O/GutQ3aEmi3Vj
fLjjv9Mfi+clV1P/krPF+pC3OL6hfiB/Qf0r7o/6n9xd/5V+r74M7peHyMvj
HcBX8lL5tL42JjjXI3JL/QpjNXGde437hkuNEdxW7gVukHxCfhX58AVflG/F
r5Rr4Qa3DY34wfzfXA/kx0S+GN+aXyU/jZvcdkxCbtc3WX3UnDbmrDZeG/9x
O9CYH8L/w/VEAUzhi/Mv8WvkOrjF/YIX+Y/ineZ64YHYF/gSfFt+rVwXt7m+
3EwuDUZyO7km3Mfx3OXe+Fr+TS6LB+WP4tnHu4i9+jSxbvll6hmuTryXzlNS
bhf7lbF1+iv6Z2L96rfoE677odhr5Qy4R04Yf13/LX9NTav+EntIrCXjo4zP
1x+P90SuHs9Gzh5rRf7VKZrGPsNfjGce74F6S+6jn67/XV8u9plYmyjIf6yu
4HLht/jdeJf45epZri6mOXcpub1+vbFnMV7eKj+MJPIb8ix9OoyWdzmmGTdU
PiO/hkKxXvnS/Mv8BrkekmI33zy+X/xZuS8KxzPgy/Cv8Bvl+kiGPfx05HHt
M9Sy5nQwZ5Ox55Ace/kW/LDYz+P+ogi+4cvxHfnNcgOkwG98S354vOdxTXgI
M/nH+E78T/LzSIk3udncnRgj/25eK26EfD7GMUPeJz8W90r+RF6pz40Z8o/y
uVgf+Nbx5eXO+p+Nrddf1TfUT9Bv0z+Cw/qMuIPvp87hrqt3qTvVFPjM2AL1
z9gX3aMn4t2M71ysGXmf32qtH8lfUi+Yv0W9HddjvF/cJ3m/nFQuH9+OWKu4
V37E+FD9Kv6Gmkf9XU0Xe4mxFeq/3LOY5bcqyF30W4y9EHuJvF0uilTyW/Jc
/d0YK+93TBtuVKznGEdRfMqtjj0cM+XZ5lXkuspb5UZIjQP8S/zouD75bRTD
HL4S343fJjdGGhzk5yKva5unVjanuznbjb2ItDjEt+XH8Jfld/Bo7N/84/yr
sbfLTZAOh/l28Sz4K/K7KB7vMV+F7xHvuNwUd8bfyM3j0mOcfMS89tzY+HbI
78ValA/IFVBCHiavib0/1k88c8dU5XrGWpCbxT4s75CL4a74u+Xv9Bnwqz4l
PucXxveFezL2XP19OOp8L6vj4prVa/F9UBOx3tyr/vK3+oPGk8kV1WOxRpBF
Lml8uH4tf1PNp+5T74y9z/gs4yv15+P7I9dTT8u5sdDPVFN7xd9p3ob4fX1z
/ST9L/pHY83EvZXn6zNivPy9fEL/VKxb53klrjHeE2PvY5Z8SK6EUkn+/7/z
On1+zI7jHVOd6y3vklsgfTwDbgGXCRPkY+Z14MbHeyB/gNL4gX+C78Pvllsi
A47zi+J/dNe6WH3SnNfM2WOsFTLiT34JnjLWN741XGtkwl98R35C3E/5Q5TB
Ur4G/3rs43IbZEb/uI9cZnwhnzCvE/eF/J88AGUxklvPFcAceZl5Nbk34r2W
X8JkeadcHPfEfZS/jx4T45rlv/U1Yq9xfGd5ov6WsW36JBgY76x6mE/uHlRW
j8daQTljo9QN8bepD6j7Y53FfmfuXOOrYq/i08j149sSe0+sVXm536ylfzP2
39h3zd+oXo/vkvG28hT51/hmySXUI3KmWK/x7NQfuHvjmcf+ikn8IvUfrma8
F36jS3j9bWODYk+Rj8iPxz4vj5Y36h/EvNjjHfM01y+uR26HLPHsuEVcFkyW
T5rXlZssJzCYKx97qVibf4s7ILdHVpziV6KOsbeNHeReRjac5rvxU+JaMYSr
gDHcJrkgvpNXyxf1z+GsPi9yujerHP8/j4zhAA==
             "]]}, 
           {Hue[0.67, 0.6, 0.6], Opacity[0.2], LineBox[{137, 136}], 
            LineBox[{139, 138}], LineBox[{140, 132}], LineBox[{141, 133}], 
            LineBox[{142, 134}], LineBox[{143, 135}]}}, {{}, {}, {}, {}}}],
        AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
        Axes->True,
        AxesOrigin->{0, 0},
        ImageSize->Large,
        Method->{"AxesInFront" -> True},
        PlotLabel->FormBox["\"La voy desplazando\"", TraditionalForm],
        PlotRange->{{-1, 2}, {-1., 1.}},
        PlotRangeClipping->True,
        PlotRangePadding->{
          Scaled[0.02], 
          Scaled[0.02]}], {921.5999999999999, -569.5801240319031}, 
       ImageScaled[{0.5, 0.5}], {576, 355.9875775199394}]}}, 
    StyleBox[{{}, {
       LineBox[{{0, -379.72008268793536`}, {614.4, -379.72008268793536`}}], 
       LineBox[{{614.4, -379.72008268793536`}, {
        1228.8, -379.72008268793536`}}]}},
     Antialiasing->False]},
   ContentSelectable->True,
   ImageSize->Large,
   PlotRangePadding->{6, 5}]]], "Input",
 CellChangeTimes->{3.4817861119058204`*^9}],

Cell[TextData[{
 "Finalmente, voy desplazando, multiplicando e integrando ",
 StyleBox["s\[OAcute]lo en un per\[IAcute]odo ",
  FontWeight->"Bold"],
 "para obtener cada valor de la se\[NTilde]al resultante, como se muestra en \
el ejemplo."
}], "Text",
 CellChangeTimes->{{3.4804301213422313`*^9, 3.480430141325374*^9}}]
}, Closed]],

Cell[CellGroupData[{

Cell["Ejemplo", "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.},
 CellChangeTimes->{{3.479142032719008*^9, 3.4791420455777435`*^9}, 
   3.4802835672718863`*^9, {3.4802843011028595`*^9, 3.4802843027389526`*^9}, 
   3.4804301685069284`*^9, {3.480435337269565*^9, 3.480435357372715*^9}}],

Cell[BoxData[
 TagBox[
  DynamicModuleBox[{Typeset`var$$ = 1}, 
   InterpretationBox[
    TagBox[
     PanelBox[GridBox[{
        {
         ItemBox[GridBox[{
            {GridBox[{
               {
                TagBox[
                 TooltipBox[
                  ButtonBox[
                   StyleBox["\<\"\[FirstPage]\"\>",
                    StripOnInput->False,
                    FontSize->18],
                   Appearance->"Palette",
                   ButtonFunction:>If[Typeset`var$$ =!= 1, Typeset`var$$ = 1],
                   Enabled->Automatic,
                   Evaluator->Automatic,
                   ImageSize->Small,
                   Method->"Preemptive"],
                  "\"First Slide\"",
                  LabelStyle->"TextStyling"],
                 Annotation[#, "First Slide", "Tooltip"]& ], 
                TagBox[
                 TooltipBox[
                  ButtonBox[
                   StyleBox["\<\"\[LeftPointer]\"\>",
                    StripOnInput->False,
                    FontSize->18],
                   Appearance->"Palette",
                   ButtonFunction:>If[Typeset`var$$ > 1, 
                    PreDecrement[Typeset`var$$]],
                   Enabled->Automatic,
                   Evaluator->Automatic,
                   ImageSize->Small,
                   Method->"Preemptive"],
                  "\"Previous Slide\"",
                  LabelStyle->"TextStyling"],
                 Annotation[#, "Previous Slide", "Tooltip"]& ], 
                TagBox[
                 TooltipBox[
                  ButtonBox[
                   StyleBox["\<\"\[RightPointer]\"\>",
                    StripOnInput->False,
                    FontSize->18],
                   Appearance->"Palette",
                   ButtonFunction:>If[Typeset`var$$ < 4, 
                    PreIncrement[Typeset`var$$]],
                   Enabled->Automatic,
                   Evaluator->Automatic,
                   ImageSize->Small,
                   Method->"Preemptive"],
                  "\"Next Slide\"",
                  LabelStyle->"TextStyling"],
                 Annotation[#, "Next Slide", "Tooltip"]& ], 
                TagBox[
                 TooltipBox[
                  ButtonBox[
                   StyleBox["\<\"\[LastPage]\"\>",
                    StripOnInput->False,
                    FontSize->18],
                   Appearance->"Palette",
                   ButtonFunction:>If[Typeset`var$$ =!= 4, Typeset`var$$ = 4],
                   Enabled->Automatic,
                   Evaluator->Automatic,
                   ImageSize->Small,
                   Method->"Preemptive"],
                  "\"Last Slide\"",
                  LabelStyle->"TextStyling"],
                 Annotation[#, "Last Slide", "Tooltip"]& ]}
              },
              AutoDelete->False,
              
              GridBoxItemSize->{
               "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
              GridBoxSpacings->{"Columns" -> {
                  Offset[0.27999999999999997`], {
                   Offset[0.]}, 
                  Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, 
                "Rows" -> {
                  Offset[0.2], {
                   Offset[0.4]}, 
                  Offset[0.2]}, "RowsIndexed" -> {}}]}
           },
           AutoDelete->False,
           
           GridBoxAlignment->{
            "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, 
             "Rows" -> {{Center}}, "RowsIndexed" -> {}},
           
           GridBoxItemSize->{
            "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
          Alignment->Left,
          StripOnInput->False]},
        {
         ItemBox[
          StyleBox[Cell[BoxData[
            PaneSelectorBox[{1->
             GraphicsBox[GraphicsComplexBox[CompressedData["
1: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
fq/zv9f/PwAiU0A=
               "], {{
                 {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
                  GraphicsGroupBox[{
                    PolygonBox[{{82, 658, 659, 1, 51, 2, 3, 4, 5, 6, 7, 8, 52,
                     9, 74, 68, 87}}], 
                    PolygonBox[{{91, 662, 663, 86, 80, 89, 75, 83, 69, 78, 66,
                     72, 26, 57, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 
                    38, 39, 40, 58, 41, 64, 59, 70, 67, 81, 76, 88, 84}}]}]}, 
                 {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
                  GraphicsGroupBox[{
                    PolygonBox[{{73, 664, 665, 50, 61, 49, 48, 47, 46, 45, 44,
                     43, 60, 42, 79}}], 
                    PolygonBox[{{90, 660, 661, 56, 63, 25, 55, 24, 23, 22, 21,
                     20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 54, 10, 65, 53, 
                    71, 62, 85, 77}}]}]}, 
                 {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[
                  None], GraphicsGroupBox[{PolygonBox[CompressedData["
1:eJwl0D8zwnEcB/BfxTNgxDWnDDwAm9g0ZKo7if7cYXFn6BrctREG4RnIFlp5
AI4mW1OUpclkU6/O8Lr35/3+/qZfNHeYOggHQRAiTV25JDfZ5KmHYxmT23Io
a/LT+4b80KvySO7LX9nytux+dmcouH/kDFvunjzhyndz+p17jT99U++6K7zp
q/qru0yUHVvYduZe5Et/YMX2omeZpWGbtzXdSUb6O3ki9rotTl9/5JoF+71t
PfT/Qzpilyn7uZ5goD9xwx7T3i7sS3zrbW4pUKREmTH/qyv2
                    "]], PolygonBox[CompressedData["
1:eJwt0E1Mz3EAx/G/Tp7zkGyeNheFuPeEDnRjRZJDbZ6atSlrbbXoL5X+/w45
K5EK1S0iJ8X/X450oeThkIMORiqazXj9tg7vvT+fz/f73X777TxTnn8pIRQK
LcNz3FRaUStfwVXUIdF2y6V0/Fi624UU+4AtD8vx1hbGOnubnoFZfRjdSLU/
suVjBd7ZrmG9vV3PxE99BOm2mH4WW9Bj2217LB/HSkzY6rHBflvPwpz+Ahm2
uH4OW3Hftsc2KJ/AqsD6J67DpPPD+mu5HLtQrH/lCK4736h3yNmY14/qE3I1
XuqZ+qh8HhflOd6GInma67mBK/kvP/Bmr/xEruGC4C1/5yZezQX8mcMc5gr+
wy383vsj/Eav5Qou4wVu5hQu4Zng+znKVfyPG7xNku/IB4L/LH/jBfsxeTL4
JsT0LH1MvoDtOK1/4UY8dJ6mP5VPYg2mbLm2cfkyUoO7tk22u/JB/NLjyLa9
0kuxA722fbYhuRBr8cHWhGR7p34Iv/VR9GG//ZntFBLx0XYDm+339Bws6mPo
RzMiiKIF/wEIf2LT
                    "]]}]}, 
                 {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[
                  None], GraphicsGroupBox[{PolygonBox[CompressedData["
1:eJwV0Lsug3EcBuCPK3BYqiQYdXG4ABKn1CYdJLSDSAiJECQGMUhEIg6twx2g
FqfZYdeysRmowWIySUolnv/w5P2979c26dc6MZ+aq46iqIpJcso+h+6d8IBl
tnxgXX7KcZmQm/JbzsoluSqf5ZB899Vf94J7TZYYcdfLL6bcGXlHl/vK5zfc
H6T1FjlDkR790fMV9wvD+p8+6D6lST/Q29yLPJG0lWx14fe4pdN2aWt2T1Og
2/ZgqzCg52kM70B/o1Yf44YO+4WtGP4b/bYT4vY9/ZUafZRr2u3ntgI/9NmO
abDn9DPuKdNrPyLmWVbfDe+fbf4BpBs27A==
                    "]], PolygonBox[CompressedData["
1:eJwl0jlMFHEAhfFlUQ6vUqXjtBaQo1WpxINgQ6FRCIUR2AXkjhpjgSEEogii
eNKCKI2CKBFoPVAOabSxEATExFhAQoi/icWX7733n8nOTDalLFocCYdCoRiM
oUPpRIvcjCY0oh/j+I18F9/FHtc16E/wBmvIs/dit7N6fR7xehGGccD+2PYa
v5Bru4Nd9jo9Q47gIwpsc7Y4+RSeI8P2yJYkl2EK+eH/z94oL+CEvqrnyD3Y
qV/Sb8iLOKuncxU+4Kg+63xDjspX+BtOy9t5DeXySW7iZ5zOD93Tzpt6LV/n
a/ydS3g/t/IfvsCl3MKTnMev3N/G68E7B9+Sr/IXPs4rzleD95QPcTd2yLX2
LblObuUfOCOn8V9clCv5PY7IM66/LH9Fsb4t+EYYQpr+wPk++TwmkGsbtdXL
8yjUl/Vs+TYS9Ro9Va7AOxy2fbbFBs+Op0i13bftlc/hLXJsI7afyNK7kGCr
1j8hHPweBpFi77O9xBIybbcQb4/q08H/Vj+GASTb79leYBEHbTcRZ4/oVahE
Bf4BjqJc8g==
                    "]]}]}, {}, {}, {}, {}, {}, {}}, {{}, {}, 
                 {Hue[0.67, 0.6, 0.6], 
                  LineBox[{1, 51, 2, 3, 4, 5, 6, 7, 8, 52, 9, 74, 68, 87, 
                   82}], LineBox[{90, 77, 85, 62, 71, 53, 65, 10, 54, 11, 12, 
                   13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 55, 25, 63,
                    56}], LineBox[{86, 80, 89, 75, 83, 69, 78, 66, 72, 26, 57,
                    27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 
                   58, 41, 64, 59, 70, 67, 81, 76, 88, 84, 91}], 
                  LineBox[{73, 79, 42, 60, 43, 44, 45, 46, 47, 48, 49, 61, 
                   50}]}, 
                 {Hue[0.9060679774997897, 0.6, 0.6], LineBox[CompressedData["
1:eJwt1WW0FmUAReFLSad0tyLdHdJICYoYSEk3CEinoIQSgqR0h3RId3cjLSlg
0A0+71r+2Gufc2bmxjcz92Zo3L52u0gRERG5IkdENOZIPMzwDWfnRnyHv+U/
HP+AT+i9uTO35Se81LH88kb5SzSX73Fi1JWvcH+McV4afa5cCa/1Wvo5uScO
6GX0fXIrZMBXtsi24XIOXNWXoYBtk14fSTDWltY2T66MN/pBNEEU+w+2nLim
L8fPSGefb6sSPgQcoqaIav9Rz4Xr+gqMQzNEc2yEPTdu6CsxHs3RAi3RCj84
rzW3QVu0w1u2ka7Lg5v6KkxAevsC2weIhMO29ohuH6XnxS19NSYig32hrSoi
44itA2LYR+v58Ke+BgVtm/UGSIpJtoy2RXI1RMFR2/u2/XJrZERHW0zbT3J+
3Nar6iflLlirF9K3yA2RDJNtmWyL5eqIitr6ee6FY46X1Q/IbcI9lh9yJtST
b/BgdJZfcyfnx5LHyAXQWL7Ld+zV5FNyH+7K7fgpD+HfHC/MW/Ue3Ihb8P3w
9Tk5fxqeae7HA8L34pc8jH9xfWb+Ve/GNbgJ/83R8JF8IbwHaC8/4+OuKScf
DO8FMod3Qb/J3+Frx2PrY+WCuKtX10+H9w3r9CL6tvB7IgWm2LLYlsg18RZO
2MrbDoXfGVnC52WLY/tZLoS/9PWYiqz2pbYPER0nbV0Q1z5OL4y/9Q2Yhq6I
59h4exH8o2/EdHyDbuiOHvjReT25F3qjD+LbJriuKP7VN2EG3rEvs9VCDJyy
9UUC+0S9GO7pmzET79qXh+cHMXHa1g8J7ZP04rivb0FR2/bwtwIpMcuWzbYi
3CvEwhlbfySyT9ZL4IG+FcVsO8I9RirMtr1nWyl/jNjB+sXwvOGs4xX0w+H+
Iyvq67f4ewxw/O3wHMkl8VCvoZ8JzxO26cX1nXJTtJQfcGp8Jl/l/jwwPDf8
iue4Jru8Su7OdcK1/A8P4jhchy9xX+7LHfg5D+XfXV+Rj+g9uUN41/lReD75
HW7Af4afn4eE95zf8EDXJpanyKXC5yz/xY/sNeWz4WfCdr2EvktuhjT4XL/G
32Ku4zn01fIniItztkq2o3JHvBvOtSWxTZVL47G+AyVtu/XmSIt5tpy2NXJd
xMN52yAktU/Ty+CJvhPz//9ftza8/4iPC7bBSGafrr+Pp/ouLMB3+B5DMBQj
wv9IHh7+xod3AMltM1xXFs/03VgYzkUKx2bay+G5vgeLkDv8nQr3Gwlw0TYS
Ke2z9PJ4oe/FYuSxrwufJxLikm0UUtln6xXwUt+HUrY9egukw6+2vLb18hdI
hMu2yrZjcidkw2hbatscuSJe6R+GZ0fugf16aX1veGaRPnw9/Xp4BrHE8Xz6
BrleeAbkf/ntcL/ly9wv3Gf5BV9xfhX5uNyLv+Y2/Di8R/weN+Tb4RnkodyV
IzA8/G8S/wNuvBi6
                   "]]}, 
                 {Hue[0.67, 0.6, 0.6], Opacity[0.2], LineBox[{95, 94}], 
                  LineBox[{96, 92}], LineBox[{97, 93}]}}, {{}, {}, {}, {}}}],
              AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
              Axes->True,
              AxesOrigin->{0, 0},
              ImageSize->Large,
              Method->{"AxesInFront" -> True},
              PlotRange->{{-0.25, 1.25}, {-1.1, 1.1}},
              PlotRangeClipping->True,
              PlotRangePadding->{
                Scaled[0.02], Automatic}], 2->
             GraphicsBox[GraphicsComplexBox[CompressedData["
1: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
fq/zv9f/PwAiU0A=
               "], {{
                 {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
                  GraphicsGroupBox[{
                    PolygonBox[{{82, 658, 659, 1, 51, 2, 3, 4, 5, 6, 7, 8, 52,
                     9, 74, 68, 87}}], 
                    PolygonBox[{{91, 662, 663, 86, 80, 89, 75, 83, 69, 78, 66,
                     72, 26, 57, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 
                    38, 39, 40, 58, 41, 64, 59, 70, 67, 81, 76, 88, 84}}]}]}, 
                 {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
                  GraphicsGroupBox[{
                    PolygonBox[{{73, 664, 665, 50, 61, 49, 48, 47, 46, 45, 44,
                     43, 60, 42, 79}}], 
                    PolygonBox[{{90, 660, 661, 56, 63, 25, 55, 24, 23, 22, 21,
                     20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 54, 10, 65, 53, 
                    71, 62, 85, 77}}]}]}, 
                 {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[
                  None], GraphicsGroupBox[{PolygonBox[CompressedData["
1:eJwl0D8zwnEcB/BfxTNgxDWnDDwAm9g0ZKo7if7cYXFn6BrctREG4RnIFlp5
AI4mW1OUpclkU6/O8Lr35/3+/qZfNHeYOggHQRAiTV25JDfZ5KmHYxmT23Io
a/LT+4b80KvySO7LX9nytux+dmcouH/kDFvunjzhyndz+p17jT99U++6K7zp
q/qru0yUHVvYduZe5Et/YMX2omeZpWGbtzXdSUb6O3ki9rotTl9/5JoF+71t
PfT/Qzpilyn7uZ5goD9xwx7T3i7sS3zrbW4pUKREmTH/qyv2
                    "]], PolygonBox[CompressedData["
1:eJwt0E1Mz3EAx/G/Tp7zkGyeNheFuPeEDnRjRZJDbZ6atSlrbbXoL5X+/w45
K5EK1S0iJ8X/X450oeThkIMORiqazXj9tg7vvT+fz/f73X777TxTnn8pIRQK
LcNz3FRaUStfwVXUIdF2y6V0/Fi624UU+4AtD8vx1hbGOnubnoFZfRjdSLU/
suVjBd7ZrmG9vV3PxE99BOm2mH4WW9Bj2217LB/HSkzY6rHBflvPwpz+Ahm2
uH4OW3Hftsc2KJ/AqsD6J67DpPPD+mu5HLtQrH/lCK4736h3yNmY14/qE3I1
XuqZ+qh8HhflOd6GInma67mBK/kvP/Bmr/xEruGC4C1/5yZezQX8mcMc5gr+
wy383vsj/Eav5Qou4wVu5hQu4Zng+znKVfyPG7xNku/IB4L/LH/jBfsxeTL4
JsT0LH1MvoDtOK1/4UY8dJ6mP5VPYg2mbLm2cfkyUoO7tk22u/JB/NLjyLa9
0kuxA722fbYhuRBr8cHWhGR7p34Iv/VR9GG//ZntFBLx0XYDm+339Bws6mPo
RzMiiKIF/wEIf2LT
                    "]]}]}, 
                 {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[
                  None], GraphicsGroupBox[{PolygonBox[CompressedData["
1:eJwV0Lsug3EcBuCPK3BYqiQYdXG4ABKn1CYdJLSDSAiJECQGMUhEIg6twx2g
FqfZYdeysRmowWIySUolnv/w5P2979c26dc6MZ+aq46iqIpJcso+h+6d8IBl
tnxgXX7KcZmQm/JbzsoluSqf5ZB899Vf94J7TZYYcdfLL6bcGXlHl/vK5zfc
H6T1FjlDkR790fMV9wvD+p8+6D6lST/Q29yLPJG0lWx14fe4pdN2aWt2T1Og
2/ZgqzCg52kM70B/o1Yf44YO+4WtGP4b/bYT4vY9/ZUafZRr2u3ntgI/9NmO
abDn9DPuKdNrPyLmWVbfDe+fbf4BpBs27A==
                    "]], PolygonBox[CompressedData["
1:eJwl0jlMFHEAhfFlUQ6vUqXjtBaQo1WpxINgQ6FRCIUR2AXkjhpjgSEEogii
eNKCKI2CKBFoPVAOabSxEATExFhAQoi/icWX7733n8nOTDalLFocCYdCoRiM
oUPpRIvcjCY0oh/j+I18F9/FHtc16E/wBmvIs/dit7N6fR7xehGGccD+2PYa
v5Bru4Nd9jo9Q47gIwpsc7Y4+RSeI8P2yJYkl2EK+eH/z94oL+CEvqrnyD3Y
qV/Sb8iLOKuncxU+4Kg+63xDjspX+BtOy9t5DeXySW7iZ5zOD93Tzpt6LV/n
a/ydS3g/t/IfvsCl3MKTnMev3N/G68E7B9+Sr/IXPs4rzleD95QPcTd2yLX2
LblObuUfOCOn8V9clCv5PY7IM66/LH9Fsb4t+EYYQpr+wPk++TwmkGsbtdXL
8yjUl/Vs+TYS9Ro9Va7AOxy2fbbFBs+Op0i13bftlc/hLXJsI7afyNK7kGCr
1j8hHPweBpFi77O9xBIybbcQb4/q08H/Vj+GASTb79leYBEHbTcRZ4/oVahE
Bf4BjqJc8g==
                    "]]}]}, {}, {}, {}, {}, {}, {}}, {{}, {}, 
                 {Hue[0.67, 0.6, 0.6], Thickness[0.01], 
                  LineBox[{1, 51, 2, 3, 4, 5, 6, 7, 8, 52, 9, 74, 68, 87, 
                   82}], LineBox[{90, 77, 85, 62, 71, 53, 65, 10, 54, 11, 12, 
                   13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 55, 25, 63,
                    56}], LineBox[{86, 80, 89, 75, 83, 69, 78, 66, 72, 26, 57,
                    27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 
                   58, 41, 64, 59, 70, 67, 81, 76, 88, 84, 91}], 
                  LineBox[{73, 79, 42, 60, 43, 44, 45, 46, 47, 48, 49, 61, 
                   50}]}, 
                 {Hue[0.9060679774997897, 0.6, 0.6], Thickness[0.001], 
                  LineBox[CompressedData["
1:eJwt1WW0FmUAReFLSad0tyLdHdJICYoYSEk3CEinoIQSgqR0h3RId3cjLSlg
0A0+71r+2Gufc2bmxjcz92Zo3L52u0gRERG5IkdENOZIPMzwDWfnRnyHv+U/
HP+AT+i9uTO35Se81LH88kb5SzSX73Fi1JWvcH+McV4afa5cCa/1Wvo5uScO
6GX0fXIrZMBXtsi24XIOXNWXoYBtk14fSTDWltY2T66MN/pBNEEU+w+2nLim
L8fPSGefb6sSPgQcoqaIav9Rz4Xr+gqMQzNEc2yEPTdu6CsxHs3RAi3RCj84
rzW3QVu0w1u2ka7Lg5v6KkxAevsC2weIhMO29ohuH6XnxS19NSYig32hrSoi
44itA2LYR+v58Ke+BgVtm/UGSIpJtoy2RXI1RMFR2/u2/XJrZERHW0zbT3J+
3Nar6iflLlirF9K3yA2RDJNtmWyL5eqIitr6ee6FY46X1Q/IbcI9lh9yJtST
b/BgdJZfcyfnx5LHyAXQWL7Ld+zV5FNyH+7K7fgpD+HfHC/MW/Ue3Ihb8P3w
9Tk5fxqeae7HA8L34pc8jH9xfWb+Ve/GNbgJ/83R8JF8IbwHaC8/4+OuKScf
DO8FMod3Qb/J3+Frx2PrY+WCuKtX10+H9w3r9CL6tvB7IgWm2LLYlsg18RZO
2MrbDoXfGVnC52WLY/tZLoS/9PWYiqz2pbYPER0nbV0Q1z5OL4y/9Q2Yhq6I
59h4exH8o2/EdHyDbuiOHvjReT25F3qjD+LbJriuKP7VN2EG3rEvs9VCDJyy
9UUC+0S9GO7pmzET79qXh+cHMXHa1g8J7ZP04rivb0FR2/bwtwIpMcuWzbYi
3CvEwhlbfySyT9ZL4IG+FcVsO8I9RirMtr1nWyl/jNjB+sXwvOGs4xX0w+H+
Iyvq67f4ewxw/O3wHMkl8VCvoZ8JzxO26cX1nXJTtJQfcGp8Jl/l/jwwPDf8
iue4Jru8Su7OdcK1/A8P4jhchy9xX+7LHfg5D+XfXV+Rj+g9uUN41/lReD75
HW7Af4afn4eE95zf8EDXJpanyKXC5yz/xY/sNeWz4WfCdr2EvktuhjT4XL/G
32Ku4zn01fIniItztkq2o3JHvBvOtSWxTZVL47G+AyVtu/XmSIt5tpy2NXJd
xMN52yAktU/Ty+CJvhPz//9ftza8/4iPC7bBSGafrr+Pp/ouLMB3+B5DMBQj
wv9IHh7+xod3AMltM1xXFs/03VgYzkUKx2bay+G5vgeLkDv8nQr3Gwlw0TYS
Ke2z9PJ4oe/FYuSxrwufJxLikm0UUtln6xXwUt+HUrY9egukw6+2vLb18hdI
hMu2yrZjcidkw2hbatscuSJe6R+GZ0fugf16aX1veGaRPnw9/Xp4BrHE8Xz6
BrleeAbkf/ntcL/ly9wv3Gf5BV9xfhX5uNyLv+Y2/Di8R/weN+Tb4RnkodyV
IzA8/G8S/wNuvBi6
                   "]]}, 
                 {Hue[0.67, 0.6, 0.6], Opacity[0.2], LineBox[{95, 94}], 
                  LineBox[{96, 92}], LineBox[{97, 93}]}}, {{}, {}, {}, {}}}],
              AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
              Axes->True,
              AxesOrigin->{0, 0},
              ImageSize->Large,
              Method->{"AxesInFront" -> True},
              PlotLabel->FormBox["\"Elijo la azul\"", TraditionalForm],
              PlotRange->{{-0.25, 1.25}, {-1.1, 1.1}},
              PlotRangeClipping->True,
              PlotRangePadding->{
                Scaled[0.02], Automatic}], 3->
             GraphicsBox[GraphicsComplexBox[CompressedData["
1:eJxlmnk8Vd/3/5WSkGhQGVJCkQplSFiSJIk0SCISQioZSpJMoWQqVKZESRkz
VMaNZJ7HVGS6o3vvwVUiw/e8f4/PvX7vz+f+UY/X4+yz9157r7Wea3mcrdbX
T9ou5eDgeI7/88//D0u1yxYWWhDH//uNweVrYXrKBxrZ2tt7W9lhqVq2NtMy
0nh9uoqttx06LrjraTlb6+vLvBQRLGTr3hsExbve79n6Y7a98tYnyWxt//dO
u362K1uHdfR9EJV8Dv/RaH33Cpvk/gy2Tp2T2PaX5wNbO4YlOJ72KWXrCzmV
9LmGSrauIL2I931czdZUtNdK7l09W28/+6s5K6uZrY02C8SOKbex9bVBjrNi
0MHW745Jr06W7GLro1xvjIsUe9jaJanMQVOll60/DfLcFd70na2tXXOFH27r
Y2uZjLA8Y96fbK0xxBFZ6TbA0vBUyH6VtMcgW/skOgQpOQ6xdVzzs+ow52G2
vnPtyZiYywhbUy7u2HjOmsDWD+aoy/rtiGz9iXYE4zcjsXX6Mecqdz0yW7ee
rL4gfYzC1gGZH377qVPZ2iGn85SM9ihb93GFZt1RprG1UJPAJKc0na19D1TO
d8kw2NpzbtWK06IYW7fnHaKGCo6xz6Nui131o8eLOvjjmZeDPONsbSXx48L5
0EW98GGPyM4VE2ztw0lpjPZe1MKS+y9KcTDZ+s41k0me24v6/dnaqYWFRf0n
2p4zTqyZ7Z+Sez5F8KyMZuv8Ts2l+qoB7PEMy2JL00+v2Lo6fAvp6ob+Rf80
rGiQ+bN4345e+4zcfi/et7coeen6lMXzCc+tp398sXg+htTTpqtOLp6H0KXV
N++XLO6XI2uJ4tEKG7bWdNkZ3u+3uN4yU6eZ5RcW55tMnP++JSmS/XzvPcVt
s6qL+xFeJTPoMLg4vlXvt4tBwkm2/VnHj9E2iiyO7/x5mxRRvjh+nxYyjLe/
vRgPOZvMfposjrfPWB36a8miPfGh+7EEE3v2/LT8nhPb+RbHl6ZwXOgeX5xf
fu2q8cMEXfb7zsSyIB7ZxfG+5J70sysX539IFvPPWrb43OlrlHgSZXG+7qDq
mVZTYK9/3Ddyc9LaxfH8153i+WYWxzdO6GTFepqx528zFRce5fz/5t+xW/6l
oi57PrsHynfHfy2+X9w8Q3HkHvjv9dnz7XkzQFg3+z/7Yz//7/P77/X/29/+
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

               "], {{
                 {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
                  GraphicsGroupBox[{
                    PolygonBox[{{50, 664, 665, 73, 79, 42, 60, 43, 44, 45, 46,
                     47, 48, 49, 61}}], 
                    PolygonBox[{{56, 660, 661, 90, 77, 85, 62, 71, 53, 65, 10,
                     54, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 
                    24, 55, 25, 63}}]}]}, 
                 {Hue[0.67, 0.6, 0.6], Opacity[0.2], EdgeForm[None], 
                  GraphicsGroupBox[{
                    PolygonBox[{{1, 658, 659, 82, 87, 68, 74, 9, 52, 8, 7, 6, 
                    5, 4, 3, 2, 51}}], 
                    PolygonBox[{{86, 662, 663, 91, 84, 88, 76, 81, 67, 70, 59,
                     64, 41, 58, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 
                    29, 28, 27, 57, 26, 72, 66, 78, 69, 83, 75, 89, 80}}]}]}, 
                 {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[
                  None], GraphicsGroupBox[{PolygonBox[CompressedData["
1:eJwl0D8zwnEcB/BfxTNgxDWnDDwAm9g0ZKo7if7cYXFn6BrctREG4RnIFlp5
AI4mW1OUpclkU6/O8Lr35/3+/qZfNHeYOggHQRAiTV25JDfZ5KmHYxmT23Io
a/LT+4b80KvySO7LX9nytux+dmcouH/kDFvunjzhyndz+p17jT99U++6K7zp
q/qru0yUHVvYduZe5Et/YMX2omeZpWGbtzXdSUb6O3ki9rotTl9/5JoF+71t
PfT/Qzpilyn7uZ5goD9xwx7T3i7sS3zrbW4pUKREmTH/qyv2
                    "]], PolygonBox[CompressedData["
1:eJwt0E1Mz3EAx/G/Tp7zkGyeNheFuPeEDnRjRZJDbZ6atSlrbbXoL5X+/w45
K5EK1S0iJ8X/X450oeThkIMORiqazXj9tg7vvT+fz/f73X777TxTnn8pIRQK
LcNz3FRaUStfwVXUIdF2y6V0/Fi624UU+4AtD8vx1hbGOnubnoFZfRjdSLU/
suVjBd7ZrmG9vV3PxE99BOm2mH4WW9Bj2217LB/HSkzY6rHBflvPwpz+Ahm2
uH4OW3Hftsc2KJ/AqsD6J67DpPPD+mu5HLtQrH/lCK4736h3yNmY14/qE3I1
XuqZ+qh8HhflOd6GInma67mBK/kvP/Bmr/xEruGC4C1/5yZezQX8mcMc5gr+
wy383vsj/Eav5Qou4wVu5hQu4Zng+znKVfyPG7xNku/IB4L/LH/jBfsxeTL4
JsT0LH1MvoDtOK1/4UY8dJ6mP5VPYg2mbLm2cfkyUoO7tk22u/JB/NLjyLa9
0kuxA722fbYhuRBr8cHWhGR7p34Iv/VR9GG//ZntFBLx0XYDm+339Bws6mPo
RzMiiKIF/wEIf2LT
                    "]]}]}, 
                 {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0.2], EdgeForm[
                  None], GraphicsGroupBox[{PolygonBox[CompressedData["
1:eJwV0Lsug3EcBuCPK3BYqiQYdXG4ABKn1CYdJLSDSAiJECQGMUhEIg6twx2g
FqfZYdeysRmowWIySUolnv/w5P2979c26dc6MZ+aq46iqIpJcso+h+6d8IBl
tnxgXX7KcZmQm/JbzsoluSqf5ZB899Vf94J7TZYYcdfLL6bcGXlHl/vK5zfc
H6T1FjlDkR790fMV9wvD+p8+6D6lST/Q29yLPJG0lWx14fe4pdN2aWt2T1Og
2/ZgqzCg52kM70B/o1Yf44YO+4WtGP4b/bYT4vY9/ZUafZRr2u3ntgI/9NmO
abDn9DPuKdNrPyLmWVbfDe+fbf4BpBs27A==
                    "]], PolygonBox[CompressedData["
1:eJwl0jlMFHEAhfFlUQ6vUqXjtBaQo1WpxINgQ6FRCIUR2AXkjhpjgSEEogii
eNKCKI2CKBFoPVAOabSxEATExFhAQoi/icWX7733n8nOTDalLFocCYdCoRiM
oUPpRIvcjCY0oh/j+I18F9/FHtc16E/wBmvIs/dit7N6fR7xehGGccD+2PYa
v5Bru4Nd9jo9Q47gIwpsc7Y4+RSeI8P2yJYkl2EK+eH/z94oL+CEvqrnyD3Y
qV/Sb8iLOKuncxU+4Kg+63xDjspX+BtOy9t5DeXySW7iZ5zOD93Tzpt6LV/n
a/ydS3g/t/IfvsCl3MKTnMev3N/G68E7B9+Sr/IXPs4rzleD95QPcTd2yLX2
LblObuUfOCOn8V9clCv5PY7IM66/LH9Fsb4t+EYYQpr+wPk++TwmkGsbtdXL
8yjUl/Vs+TYS9Ro9Va7AOxy2fbbFBs+Op0i13bftlc/hLXJsI7afyNK7kGCr
1j8hHPweBpFi77O9xBIybbcQb4/q08H/Vj+GASTb79leYBEHbTcRZ4/oVahE
Bf4BjqJc8g==
                    "]]}]}, {}, {}, {}, {}, {}, {}}, {{}, {}, 
                 {Hue[0.67, 0.6, 0.6], Thickness[0.01], 
                  LineBox[{1, 51, 2, 3, 4, 5, 6, 7, 8, 52, 9, 74, 68, 87, 
                   82}], LineBox[{90, 77, 85, 62, 71, 53, 65, 10, 54, 11, 12, 
                   13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 55, 25, 63,
                    56}], LineBox[{86, 80, 89, 75, 83, 69, 78, 66, 72, 26, 57,
                    27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 
                   58, 41, 64, 59, 70, 67, 81, 76, 88, 84, 91}], 
                  LineBox[{73, 79, 42, 60, 43, 44, 45, 46, 47, 48, 49, 61, 
                   50}]}, 
                 {Hue[0.9060679774997897, 0.6, 0.6], Thickness[0.001], 
                  LineBox[CompressedData["
1:eJwt1WW0FmUAReFLSad0tyLdHdJICYoYSEk3CEinoIQSgqR0h3RId3cjLSlg
0A0+71r+2Gufc2bmxjcz92Zo3L52u0gRERG5IkdENOZIPMzwDWfnRnyHv+U/
HP+AT+i9uTO35Se81LH88kb5SzSX73Fi1JWvcH+McV4afa5cCa/1Wvo5uScO
6GX0fXIrZMBXtsi24XIOXNWXoYBtk14fSTDWltY2T66MN/pBNEEU+w+2nLim
L8fPSGefb6sSPgQcoqaIav9Rz4Xr+gqMQzNEc2yEPTdu6CsxHs3RAi3RCj84
rzW3QVu0w1u2ka7Lg5v6KkxAevsC2weIhMO29ohuH6XnxS19NSYig32hrSoi
44itA2LYR+v58Ke+BgVtm/UGSIpJtoy2RXI1RMFR2/u2/XJrZERHW0zbT3J+
3Nar6iflLlirF9K3yA2RDJNtmWyL5eqIitr6ee6FY46X1Q/IbcI9lh9yJtST
b/BgdJZfcyfnx5LHyAXQWL7Ld+zV5FNyH+7K7fgpD+HfHC/MW/Ue3Ihb8P3w
9Tk5fxqeae7HA8L34pc8jH9xfWb+Ve/GNbgJ/83R8JF8IbwHaC8/4+OuKScf
DO8FMod3Qb/J3+Frx2PrY+WCuKtX10+H9w3r9CL6tvB7IgWm2LLYlsg18RZO
2MrbDoXfGVnC52WLY/tZLoS/9PWYiqz2pbYPER0nbV0Q1z5OL4y/9Q2Yhq6I
59h4exH8o2/EdHyDbuiOHvjReT25F3qjD+LbJriuKP7VN2EG3rEvs9VCDJyy
9UUC+0S9GO7pmzET79qXh+cHMXHa1g8J7ZP04rivb0FR2/bwtwIpMcuWzbYi
3CvEwhlbfySyT9ZL4IG+FcVsO8I9RirMtr1nWyl/jNjB+sXwvOGs4xX0w+H+
Iyvq67f4ewxw/O3wHMkl8VCvoZ8JzxO26cX1nXJTtJQfcGp8Jl/l/jwwPDf8
iue4Jru8Su7OdcK1/A8P4jhchy9xX+7LHfg5D+XfXV+Rj+g9uUN41/lReD75
HW7Af4afn4eE95zf8EDXJpanyKXC5yz/xY/sNeWz4WfCdr2EvktuhjT4XL/G
32Ku4zn01fIniItztkq2o3JHvBvOtSWxTZVL47G+AyVtu/XmSIt5tpy2NXJd
xMN52yAktU/Ty+CJvhPz//9ftza8/4iPC7bBSGafrr+Pp/ouLMB3+B5DMBQj
wv9IHh7+xod3AMltM1xXFs/03VgYzkUKx2bay+G5vgeLkDv8nQr3Gwlw0TYS
Ke2z9PJ4oe/FYuSxrwufJxLikm0UUtln6xXwUt+HUrY9egukw6+2vLb18hdI
hMu2yrZjcidkw2hbatscuSJe6R+GZ0fugf16aX1veGaRPnw9/Xp4BrHE8Xz6
BrleeAbkf/ntcL/ly9wv3Gf5BV9xfhX5uNyLv+Y2/Di8R/weN+Tb4RnkodyV
IzA8/G8S/wNuvBi6
                   "]]}, 
                 {Hue[0.67, 0.6, 0.6], Opacity[0.2], LineBox[{95, 94}], 
                  LineBox[{96, 92}], LineBox[{97, 93}]}}, {{}, {}, {}, {}}}],
              AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
              Axes->True,
              AxesOrigin->{0, 0},
              ImageSize->Large,
              Method->{"AxesInFront" -> True},
              PlotLabel->FormBox["\"La invierto en tiempo\"", TraditionalForm],
              PlotRange->{{-0.25, 1.25}, {-1.1, 1.1}},
              PlotRangeClipping->True,
              PlotRangePadding->{
                Scaled[0.02], Automatic}], 4->
             TagBox[
              StyleBox[
               
               DynamicModuleBox[{$CellContext`p$$ = 0, Typeset`show$$ = True, 
                Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
                Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
                "\"untitled\"", Typeset`specs$$ = {{{
                   Hold[$CellContext`p$$], 0}, -0.25, 1.25}}, 
                Typeset`size$$ = {749., {237., 245.}}, Typeset`update$$ = 0, 
                Typeset`initDone$$, Typeset`skipInitDone$$ = 
                False, $CellContext`p$62222$$ = 0}, 
                
                DynamicBox[Manipulate`ManipulateBoxes[
                 1, StandardForm, "Variables" :> {$CellContext`p$$ = 0}, 
                  "ControllerVariables" :> {
                    Hold[$CellContext`p$$, $CellContext`p$62222$$, 0]}, 
                  "OtherVariables" :> {
                   Typeset`show$$, Typeset`bookmarkList$$, 
                    Typeset`bookmarkMode$$, Typeset`animator$$, 
                    Typeset`animvar$$, Typeset`name$$, Typeset`specs$$, 
                    Typeset`size$$, Typeset`update$$, Typeset`initDone$$, 
                    Typeset`skipInitDone$$}, "Body" :> Plot[{
                    $CellContext`X[$CellContext`p$$ - $CellContext`t$54806], 
                    $CellContext`Y[$CellContext`t$54806], \
$CellContext`X[$CellContext`p$$ - $CellContext`t$54806] \
$CellContext`Y[$CellContext`t$54806], 
                    $CellContext`IntConved$54806[$CellContext`t$54806], \
$CellContext`X[$CellContext`p$$ - $CellContext`t$54806] \
$CellContext`Y[$CellContext`t$54806] UnitStep[$CellContext`t$54806] 
                    UnitStep[
                    1 - $CellContext`t$54806]}, {$CellContext`t$54806, -0.25, 
                    1.25}, PlotRange -> {-1.1, 1.1}, PerformanceGoal -> 
                    "Quality", PlotStyle -> {
                    Thickness[0.01], 
                    Thickness[Medium], 
                    Thickness[0.01], Dashed, 
                    Opacity[0]}, Filling -> {5 -> Axis}, 
                    PlotRange -> {-0.1, 1.1}, PlotLabel -> 
                    "Desplazo, multiplico e integro en un per\[IAcute]odo", 
                    Epilog -> {
                    PointSize[0.02], 
                    Point[{$CellContext`p$$, 
                    $CellContext`IntConved$54806[$CellContext`p$$]}]}, 
                    ImageSize -> Large], 
                  "Specifications" :> {{{$CellContext`p$$, 0}, -0.25, 1.25, 
                    Appearance -> "Labeled"}}, "Options" :> {}, 
                  "DefaultOptions" :> {}],
                 ImageSizeCache->{809., {296., 303.}},
                 SingleEvaluation->True],
                Deinitialization:>None,
                DynamicModuleValues:>{},
                Initialization:>({$CellContext`X[
                    Pattern[$CellContext`t, 
                    Blank[]]] := SquareWave[$CellContext`t], 
                   Attributes[$CellContext`t$54806] = {
                    Temporary}, $CellContext`Y[
                    Pattern[$CellContext`t, 
                    Blank[]]] := Sin[(2 Pi) $CellContext`t], 
                   Attributes[$CellContext`IntConved$54806] = {
                    Temporary}, $CellContext`IntConved$54806 = 
                   InterpolatingFunction[{{-0.25, 1.25}}, {
                    3, 3, 0, {101}, {4}, 0, 0, 0, 0}, CompressedData["
1:eJw1kjlMAlEURdGSmtrEDltpxVtiKdRUJthKYWHUwgJqLCzUSgONiSGaaIKJ
5ruvoLjiLjvosKPWMu9fXzL5mfz73rv3zPSOjHl83RaLpavz+Cz/lVS2qCsz
abtUfd7Q/o89rgatqbDfea48sZ6g4T5Vo1LHakqEh2q2o+pIVcTv7Ch3lRz+
HbW4YNaWOpTrTVVxmwPWlV3mrqpp6Y+oJdEtqBl5D/Achz7nUJa+ZcyLbAV6
zxom5H4Dw+IrBj13GzrHLvS+PTyEzYYDaJtHkHjRE847Q8AwhRfQvhOQMd4r
7klC57iGznlD/S0mZf8d++6huTywPwXN6xFD5jrXEwaE4zP6HWa90O8rxH3P
GzT3d4jM+sEcaWjOafxKQ5r7MhAbRoZ7s5A1mSz35yBjUjn6yCMulYfEdxXI
owAZ5yxCYyxC7DlK5FSizzJ5lOn3k1w+6fuLfL7o3yAngzkq5FVhjgpzVPmd
qsxRQ1qENeao8/vVof/HBnUN+mkwd4O+muxrQv9WTXJo0meLPFoQWaiFhHBp
0XebfNqQccE2ObWZ4xt/KauW0w==
                    "], {
                    Developer`PackedArrayForm, {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 
                    10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 
                    24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 
                    38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 
                    52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 
                    66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 
                    80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 
                    94, 95, 96, 97, 98, 99, 100, 101}, CompressedData["
1:eJxFk21I01EUxpetFpmxtEjaWBokamiDSiqlGymhI5fIPzU3kmrWh5omkUXJ
XEaQFSZmhisjdQTFGKOEtNFOhhsNm87N123pXv4OiaZblI45XB92Rvfb5d57
znOe53dTL9SWVq9jMBjVjP/rF7VhQK1SQ7hIHxlv1sHXpVb+itYAQZOiVBQx
QWMB2ydotMD3i3qhc3wCWDc25dqC05D4hzO1g7ZD5bmNhwNPZmFSVHk0644T
8sx1/YsPXNA9r02ZrnFDvWYray7TAx0ln/ZVaD1Q2iA+ucqjQSWwLs1TNHzM
0yi7xDSwWxR2dg4Nitz0rOcuD3AOWR/7qzywyBhtz3/vBuFC18Iumwva9WV9
52eccC11T7dOMgdpl3QZklEHuDNzjG3BGXiWtJ2l806CVxhpmnttBYNUyLmc
bYaK2YkEKtsI/iNT23oMgyCvFXfulPYBf/1KE/N2OzjWCstqbiqJYHjsi1o2
QLJld5ft+UMkyd95mlIMk+41fdzms2PEktL7QvZ5nLQ8Wn5q+T1FTMfre7UB
G3n7UpN+5cMPwtsvMY8kO0n4VHMddcBFfip3y4fS3CTU4LX+9bsJNyMQ5rZ6
SNG7V+XmOJokhMpPxBfS5P43o5RfRZMtuBfgOQ/vr+J7H9ZjFEfrx/qpsL8Z
9XSgPhvqfYP69+I8B3E+Ec4bwvnvxUX9uI7+eNGvEvRvEP2k0d+H6Lcd/Y/l
cRXzacO8ijE/H+aZjPnG8k7E/PuRhxgfFPIS4+cW8qREvo4hbzbkT4w8cpHP
eOTVivzKkWfmSJRvB/LOFET5LzgT/Q+x//EPLHbBLw==
                    "]}, {Automatic}], 
                   Attributes[PlotRange] = {ReadProtected}}; 
                 Typeset`initDone$$ = True),
                SynchronousInitialization->True,
                UnsavedVariables:>{Typeset`initDone$$},
                UntrackedVariables:>{Typeset`size$$}], "Manipulate",
               Deployed->True,
               StripOnInput->False],
              Manipulate`InterpretManipulate[1]]}, Dynamic[Typeset`var$$],
             Alignment->Automatic,
             ImageSize->All]],
            Background->GrayLevel[1]],
           Deployed->False,
           StripOnInput->False],
          Background->GrayLevel[1],
          Frame->True,
          FrameStyle->GrayLevel[0.8235294117647058],
          StripOnInput->False]}
       },
       AutoDelete->False,
       GridBoxAlignment->{"Columns" -> {{Left}}},
       GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
      BaselinePosition->Automatic,
      DefaultBaseStyle->"SlideView",
      FrameMargins->6,
      ImageMargins->Automatic],
     Deploy,
     DefaultBaseStyle->{Deployed -> True}],
    SlideView[{
      Graphics[
       GraphicsComplex[CompressedData["
1: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
fq/zv9f/PwAiU0A=
        "], {{{
           EdgeForm[], 
           Directive[{
             Opacity[0.2], 
             Hue[0.67, 0.6, 0.6]}], 
           GraphicsGroup[{
             
             Polygon[{{82, 658, 659, 1, 51, 2, 3, 4, 5, 6, 7, 8, 52, 9, 74, 
              68, 87}}], 
             
             Polygon[{{91, 662, 663, 86, 80, 89, 75, 83, 69, 78, 66, 72, 26, 
              57, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 58, 
              41, 64, 59, 70, 67, 81, 76, 88, 84}}]}]}, {
           EdgeForm[], 
           Directive[{
             Opacity[0.2], 
             Hue[0.67, 0.6, 0.6]}], 
           GraphicsGroup[{
             
             Polygon[{{73, 664, 665, 50, 61, 49, 48, 47, 46, 45, 44, 43, 60, 
              42, 79}}], 
             
             Polygon[{{90, 660, 661, 56, 63, 25, 55, 24, 23, 22, 21, 20, 19, 
              18, 17, 16, 15, 14, 13, 12, 11, 54, 10, 65, 53, 71, 62, 85, 
              77}}]}]}, {
           EdgeForm[], 
           Directive[{
             Opacity[0.2], 
             Hue[0.9060679774997897, 0.6, 0.6]}], 
           GraphicsGroup[{
             Polygon[CompressedData["
1:eJwl0D8zwnEcB/BfxTNgxDWnDDwAm9g0ZKo7if7cYXFn6BrctREG4RnIFlp5
AI4mW1OUpclkU6/O8Lr35/3+/qZfNHeYOggHQRAiTV25JDfZ5KmHYxmT23Io
a/LT+4b80KvySO7LX9nytux+dmcouH/kDFvunjzhyndz+p17jT99U++6K7zp
q/qru0yUHVvYduZe5Et/YMX2omeZpWGbtzXdSUb6O3ki9rotTl9/5JoF+71t
PfT/Qzpilyn7uZ5goD9xwx7T3i7sS3zrbW4pUKREmTH/qyv2
              "]], 
             Polygon[CompressedData["
1:eJwt0E1Mz3EAx/G/Tp7zkGyeNheFuPeEDnRjRZJDbZ6atSlrbbXoL5X+/w45
K5EK1S0iJ8X/X450oeThkIMORiqazXj9tg7vvT+fz/f73X777TxTnn8pIRQK
LcNz3FRaUStfwVXUIdF2y6V0/Fi624UU+4AtD8vx1hbGOnubnoFZfRjdSLU/
suVjBd7ZrmG9vV3PxE99BOm2mH4WW9Bj2217LB/HSkzY6rHBflvPwpz+Ahm2
uH4OW3Hftsc2KJ/AqsD6J67DpPPD+mu5HLtQrH/lCK4736h3yNmY14/qE3I1
XuqZ+qh8HhflOd6GInma67mBK/kvP/Bmr/xEruGC4C1/5yZezQX8mcMc5gr+
wy383vsj/Eav5Qou4wVu5hQu4Zng+znKVfyPG7xNku/IB4L/LH/jBfsxeTL4
JsT0LH1MvoDtOK1/4UY8dJ6mP5VPYg2mbLm2cfkyUoO7tk22u/JB/NLjyLa9
0kuxA722fbYhuRBr8cHWhGR7p34Iv/VR9GG//ZntFBLx0XYDm+339Bws6mPo
RzMiiKIF/wEIf2LT
              "]]}]}, {
           EdgeForm[], 
           Directive[{
             Opacity[0.2], 
             Hue[0.9060679774997897, 0.6, 0.6]}], 
           GraphicsGroup[{
             Polygon[CompressedData["
1:eJwV0Lsug3EcBuCPK3BYqiQYdXG4ABKn1CYdJLSDSAiJECQGMUhEIg6twx2g
FqfZYdeysRmowWIySUolnv/w5P2979c26dc6MZ+aq46iqIpJcso+h+6d8IBl
tnxgXX7KcZmQm/JbzsoluSqf5ZB899Vf94J7TZYYcdfLL6bcGXlHl/vK5zfc
H6T1FjlDkR790fMV9wvD+p8+6D6lST/Q29yLPJG0lWx14fe4pdN2aWt2T1Og
2/ZgqzCg52kM70B/o1Yf44YO+4WtGP4b/bYT4vY9/ZUafZRr2u3ntgI/9NmO
abDn9DPuKdNrPyLmWVbfDe+fbf4BpBs27A==
              "]], 
             Polygon[CompressedData["
1:eJwl0jlMFHEAhfFlUQ6vUqXjtBaQo1WpxINgQ6FRCIUR2AXkjhpjgSEEogii
eNKCKI2CKBFoPVAOabSxEATExFhAQoi/icWX7733n8nOTDalLFocCYdCoRiM
oUPpRIvcjCY0oh/j+I18F9/FHtc16E/wBmvIs/dit7N6fR7xehGGccD+2PYa
v5Bru4Nd9jo9Q47gIwpsc7Y4+RSeI8P2yJYkl2EK+eH/z94oL+CEvqrnyD3Y
qV/Sb8iLOKuncxU+4Kg+63xDjspX+BtOy9t5DeXySW7iZ5zOD93Tzpt6LV/n
a/ydS3g/t/IfvsCl3MKTnMev3N/G68E7B9+Sr/IXPs4rzleD95QPcTd2yLX2
LblObuUfOCOn8V9clCv5PY7IM66/LH9Fsb4t+EYYQpr+wPk++TwmkGsbtdXL
8yjUl/Vs+TYS9Ro9Va7AOxy2fbbFBs+Op0i13bftlc/hLXJsI7afyNK7kGCr
1j8hHPweBpFi77O9xBIybbcQb4/q08H/Vj+GASTb79leYBEHbTcRZ4/oVahE
Bf4BjqJc8g==
              "]]}]}, {}, {}, {}, {}, {}, {}}, {{}, {}, {
           Hue[0.67, 0.6, 0.6], 
           Line[{1, 51, 2, 3, 4, 5, 6, 7, 8, 52, 9, 74, 68, 87, 82}], 
           
           Line[{90, 77, 85, 62, 71, 53, 65, 10, 54, 11, 12, 13, 14, 15, 16, 
            17, 18, 19, 20, 21, 22, 23, 24, 55, 25, 63, 56}], 
           
           Line[{86, 80, 89, 75, 83, 69, 78, 66, 72, 26, 57, 27, 28, 29, 30, 
            31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 58, 41, 64, 59, 70, 67, 
            81, 76, 88, 84, 91}], 
           Line[{73, 79, 42, 60, 43, 44, 45, 46, 47, 48, 49, 61, 50}]}, {
           Hue[0.9060679774997897, 0.6, 0.6], 
           Line[CompressedData["
1:eJwt1WW0FmUAReFLSad0tyLdHdJICYoYSEk3CEinoIQSgqR0h3RId3cjLSlg
0A0+71r+2Gufc2bmxjcz92Zo3L52u0gRERG5IkdENOZIPMzwDWfnRnyHv+U/
HP+AT+i9uTO35Se81LH88kb5SzSX73Fi1JWvcH+McV4afa5cCa/1Wvo5uScO
6GX0fXIrZMBXtsi24XIOXNWXoYBtk14fSTDWltY2T66MN/pBNEEU+w+2nLim
L8fPSGefb6sSPgQcoqaIav9Rz4Xr+gqMQzNEc2yEPTdu6CsxHs3RAi3RCj84
rzW3QVu0w1u2ka7Lg5v6KkxAevsC2weIhMO29ohuH6XnxS19NSYig32hrSoi
44itA2LYR+v58Ke+BgVtm/UGSIpJtoy2RXI1RMFR2/u2/XJrZERHW0zbT3J+
3Nar6iflLlirF9K3yA2RDJNtmWyL5eqIitr6ee6FY46X1Q/IbcI9lh9yJtST
b/BgdJZfcyfnx5LHyAXQWL7Ld+zV5FNyH+7K7fgpD+HfHC/MW/Ue3Ihb8P3w
9Tk5fxqeae7HA8L34pc8jH9xfWb+Ve/GNbgJ/83R8JF8IbwHaC8/4+OuKScf
DO8FMod3Qb/J3+Frx2PrY+WCuKtX10+H9w3r9CL6tvB7IgWm2LLYlsg18RZO
2MrbDoXfGVnC52WLY/tZLoS/9PWYiqz2pbYPER0nbV0Q1z5OL4y/9Q2Yhq6I
59h4exH8o2/EdHyDbuiOHvjReT25F3qjD+LbJriuKP7VN2EG3rEvs9VCDJyy
9UUC+0S9GO7pmzET79qXh+cHMXHa1g8J7ZP04rivb0FR2/bwtwIpMcuWzbYi
3CvEwhlbfySyT9ZL4IG+FcVsO8I9RirMtr1nWyl/jNjB+sXwvOGs4xX0w+H+
Iyvq67f4ewxw/O3wHMkl8VCvoZ8JzxO26cX1nXJTtJQfcGp8Jl/l/jwwPDf8
iue4Jru8Su7OdcK1/A8P4jhchy9xX+7LHfg5D+XfXV+Rj+g9uUN41/lReD75
HW7Af4afn4eE95zf8EDXJpanyKXC5yz/xY/sNeWz4WfCdr2EvktuhjT4XL/G
32Ku4zn01fIniItztkq2o3JHvBvOtSWxTZVL47G+AyVtu/XmSIt5tpy2NXJd
xMN52yAktU/Ty+CJvhPz//9ftza8/4iPC7bBSGafrr+Pp/ouLMB3+B5DMBQj
wv9IHh7+xod3AMltM1xXFs/03VgYzkUKx2bay+G5vgeLkDv8nQr3Gwlw0TYS
Ke2z9PJ4oe/FYuSxrwufJxLikm0UUtln6xXwUt+HUrY9egukw6+2vLb18hdI
hMu2yrZjcidkw2hbatscuSJe6R+GZ0fugf16aX1veGaRPnw9/Xp4BrHE8Xz6
BrleeAbkf/ntcL/ly9wv3Gf5BV9xfhX5uNyLv+Y2/Di8R/weN+Tb4RnkodyV
IzA8/G8S/wNuvBi6
            "]]}, {
           Directive[{
             Opacity[0.2], 
             Hue[0.67, 0.6, 0.6]}], 
           Line[{95, 94}], 
           Line[{96, 92}], 
           Line[{97, 93}]}}, {{}, {}, {}, {}}}], {
       AspectRatio -> GoldenRatio^(-1), Axes -> True, AxesOrigin -> {0, 0}, 
        ImageSize -> Large, Method -> {"AxesInFront" -> True}, 
        PlotRange -> {{-0.25, 1.25}, {-1.1, 1.1}}, PlotRangeClipping -> True, 
        PlotRangePadding -> {
          Scaled[0.02], Automatic}}], 
      Graphics[
       GraphicsComplex[CompressedData["
1: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
fq/zv9f/PwAiU0A=
        "], {{{
           EdgeForm[], 
           Directive[{
             Opacity[0.2], 
             Hue[0.67, 0.6, 0.6]}], 
           GraphicsGroup[{
             
             Polygon[{{82, 658, 659, 1, 51, 2, 3, 4, 5, 6, 7, 8, 52, 9, 74, 
              68, 87}}], 
             
             Polygon[{{91, 662, 663, 86, 80, 89, 75, 83, 69, 78, 66, 72, 26, 
              57, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 58, 
              41, 64, 59, 70, 67, 81, 76, 88, 84}}]}]}, {
           EdgeForm[], 
           Directive[{
             Opacity[0.2], 
             Hue[0.67, 0.6, 0.6]}], 
           GraphicsGroup[{
             
             Polygon[{{73, 664, 665, 50, 61, 49, 48, 47, 46, 45, 44, 43, 60, 
              42, 79}}], 
             
             Polygon[{{90, 660, 661, 56, 63, 25, 55, 24, 23, 22, 21, 20, 19, 
              18, 17, 16, 15, 14, 13, 12, 11, 54, 10, 65, 53, 71, 62, 85, 
              77}}]}]}, {
           EdgeForm[], 
           Directive[{
             Opacity[0.2], 
             Hue[0.9060679774997897, 0.6, 0.6]}], 
           GraphicsGroup[{
             Polygon[CompressedData["
1:eJwl0D8zwnEcB/BfxTNgxDWnDDwAm9g0ZKo7if7cYXFn6BrctREG4RnIFlp5
AI4mW1OUpclkU6/O8Lr35/3+/qZfNHeYOggHQRAiTV25JDfZ5KmHYxmT23Io
a/LT+4b80KvySO7LX9nytux+dmcouH/kDFvunjzhyndz+p17jT99U++6K7zp
q/qru0yUHVvYduZe5Et/YMX2omeZpWGbtzXdSUb6O3ki9rotTl9/5JoF+71t
PfT/Qzpilyn7uZ5goD9xwx7T3i7sS3zrbW4pUKREmTH/qyv2
              "]], 
             Polygon[CompressedData["
1:eJwt0E1Mz3EAx/G/Tp7zkGyeNheFuPeEDnRjRZJDbZ6atSlrbbXoL5X+/w45
K5EK1S0iJ8X/X450oeThkIMORiqazXj9tg7vvT+fz/f73X777TxTnn8pIRQK
LcNz3FRaUStfwVXUIdF2y6V0/Fi624UU+4AtD8vx1hbGOnubnoFZfRjdSLU/
suVjBd7ZrmG9vV3PxE99BOm2mH4WW9Bj2217LB/HSkzY6rHBflvPwpz+Ahm2
uH4OW3Hftsc2KJ/AqsD6J67DpPPD+mu5HLtQrH/lCK4736h3yNmY14/qE3I1
XuqZ+qh8HhflOd6GInma67mBK/kvP/Bmr/xEruGC4C1/5yZezQX8mcMc5gr+
wy383vsj/Eav5Qou4wVu5hQu4Zng+znKVfyPG7xNku/IB4L/LH/jBfsxeTL4
JsT0LH1MvoDtOK1/4UY8dJ6mP5VPYg2mbLm2cfkyUoO7tk22u/JB/NLjyLa9
0kuxA722fbYhuRBr8cHWhGR7p34Iv/VR9GG//ZntFBLx0XYDm+339Bws6mPo
RzMiiKIF/wEIf2LT
              "]]}]}, {
           EdgeForm[], 
           Directive[{
             Opacity[0.2], 
             Hue[0.9060679774997897, 0.6, 0.6]}], 
           GraphicsGroup[{
             Polygon[CompressedData["
1:eJwV0Lsug3EcBuCPK3BYqiQYdXG4ABKn1CYdJLSDSAiJECQGMUhEIg6twx2g
FqfZYdeysRmowWIySUolnv/w5P2979c26dc6MZ+aq46iqIpJcso+h+6d8IBl
tnxgXX7KcZmQm/JbzsoluSqf5ZB899Vf94J7TZYYcdfLL6bcGXlHl/vK5zfc
H6T1FjlDkR790fMV9wvD+p8+6D6lST/Q29yLPJG0lWx14fe4pdN2aWt2T1Og
2/ZgqzCg52kM70B/o1Yf44YO+4WtGP4b/bYT4vY9/ZUafZRr2u3ntgI/9NmO
abDn9DPuKdNrPyLmWVbfDe+fbf4BpBs27A==
              "]], 
             Polygon[CompressedData["
1:eJwl0jlMFHEAhfFlUQ6vUqXjtBaQo1WpxINgQ6FRCIUR2AXkjhpjgSEEogii
eNKCKI2CKBFoPVAOabSxEATExFhAQoi/icWX7733n8nOTDalLFocCYdCoRiM
oUPpRIvcjCY0oh/j+I18F9/FHtc16E/wBmvIs/dit7N6fR7xehGGccD+2PYa
v5Bru4Nd9jo9Q47gIwpsc7Y4+RSeI8P2yJYkl2EK+eH/z94oL+CEvqrnyD3Y
qV/Sb8iLOKuncxU+4Kg+63xDjspX+BtOy9t5DeXySW7iZ5zOD93Tzpt6LV/n
a/ydS3g/t/IfvsCl3MKTnMev3N/G68E7B9+Sr/IXPs4rzleD95QPcTd2yLX2
LblObuUfOCOn8V9clCv5PY7IM66/LH9Fsb4t+EYYQpr+wPk++TwmkGsbtdXL
8yjUl/Vs+TYS9Ro9Va7AOxy2fbbFBs+Op0i13bftlc/hLXJsI7afyNK7kGCr
1j8hHPweBpFi77O9xBIybbcQb4/q08H/Vj+GASTb79leYBEHbTcRZ4/oVahE
Bf4BjqJc8g==
              "]]}]}, {}, {}, {}, {}, {}, {}}, {{}, {}, {
           Hue[0.67, 0.6, 0.6], 
           Thickness[0.01], 
           Line[{1, 51, 2, 3, 4, 5, 6, 7, 8, 52, 9, 74, 68, 87, 82}], 
           
           Line[{90, 77, 85, 62, 71, 53, 65, 10, 54, 11, 12, 13, 14, 15, 16, 
            17, 18, 19, 20, 21, 22, 23, 24, 55, 25, 63, 56}], 
           
           Line[{86, 80, 89, 75, 83, 69, 78, 66, 72, 26, 57, 27, 28, 29, 30, 
            31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 58, 41, 64, 59, 70, 67, 
            81, 76, 88, 84, 91}], 
           Line[{73, 79, 42, 60, 43, 44, 45, 46, 47, 48, 49, 61, 50}]}, {
           Hue[0.9060679774997897, 0.6, 0.6], 
           Thickness[0.001], 
           Line[CompressedData["
1:eJwt1WW0FmUAReFLSad0tyLdHdJICYoYSEk3CEinoIQSgqR0h3RId3cjLSlg
0A0+71r+2Gufc2bmxjcz92Zo3L52u0gRERG5IkdENOZIPMzwDWfnRnyHv+U/
HP+AT+i9uTO35Se81LH88kb5SzSX73Fi1JWvcH+McV4afa5cCa/1Wvo5uScO
6GX0fXIrZMBXtsi24XIOXNWXoYBtk14fSTDWltY2T66MN/pBNEEU+w+2nLim
L8fPSGefb6sSPgQcoqaIav9Rz4Xr+gqMQzNEc2yEPTdu6CsxHs3RAi3RCj84
rzW3QVu0w1u2ka7Lg5v6KkxAevsC2weIhMO29ohuH6XnxS19NSYig32hrSoi
44itA2LYR+v58Ke+BgVtm/UGSIpJtoy2RXI1RMFR2/u2/XJrZERHW0zbT3J+
3Nar6iflLlirF9K3yA2RDJNtmWyL5eqIitr6ee6FY46X1Q/IbcI9lh9yJtST
b/BgdJZfcyfnx5LHyAXQWL7Ld+zV5FNyH+7K7fgpD+HfHC/MW/Ue3Ihb8P3w
9Tk5fxqeae7HA8L34pc8jH9xfWb+Ve/GNbgJ/83R8JF8IbwHaC8/4+OuKScf
DO8FMod3Qb/J3+Frx2PrY+WCuKtX10+H9w3r9CL6tvB7IgWm2LLYlsg18RZO
2MrbDoXfGVnC52WLY/tZLoS/9PWYiqz2pbYPER0nbV0Q1z5OL4y/9Q2Yhq6I
59h4exH8o2/EdHyDbuiOHvjReT25F3qjD+LbJriuKP7VN2EG3rEvs9VCDJyy
9UUC+0S9GO7pmzET79qXh+cHMXHa1g8J7ZP04rivb0FR2/bwtwIpMcuWzbYi
3CvEwhlbfySyT9ZL4IG+FcVsO8I9RirMtr1nWyl/jNjB+sXwvOGs4xX0w+H+
Iyvq67f4ewxw/O3wHMkl8VCvoZ8JzxO26cX1nXJTtJQfcGp8Jl/l/jwwPDf8
iue4Jru8Su7OdcK1/A8P4jhchy9xX+7LHfg5D+XfXV+Rj+g9uUN41/lReD75
HW7Af4afn4eE95zf8EDXJpanyKXC5yz/xY/sNeWz4WfCdr2EvktuhjT4XL/G
32Ku4zn01fIniItztkq2o3JHvBvOtSWxTZVL47G+AyVtu/XmSIt5tpy2NXJd
xMN52yAktU/Ty+CJvhPz//9ftza8/4iPC7bBSGafrr+Pp/ouLMB3+B5DMBQj
wv9IHh7+xod3AMltM1xXFs/03VgYzkUKx2bay+G5vgeLkDv8nQr3Gwlw0TYS
Ke2z9PJ4oe/FYuSxrwufJxLikm0UUtln6xXwUt+HUrY9egukw6+2vLb18hdI
hMu2yrZjcidkw2hbatscuSJe6R+GZ0fugf16aX1veGaRPnw9/Xp4BrHE8Xz6
BrleeAbkf/ntcL/ly9wv3Gf5BV9xfhX5uNyLv+Y2/Di8R/weN+Tb4RnkodyV
IzA8/G8S/wNuvBi6
            "]]}, {
           Directive[{
             Opacity[0.2], 
             Hue[0.67, 0.6, 0.6]}], 
           Line[{95, 94}], 
           Line[{96, 92}], 
           Line[{97, 93}]}}, {{}, {}, {}, {}}}], {
       AspectRatio -> GoldenRatio^(-1), Axes -> True, AxesOrigin -> {0, 0}, 
        ImageSize -> Large, Method -> {"AxesInFront" -> True}, PlotLabel -> 
        "Elijo la azul", PlotRange -> {{-0.25, 1.25}, {-1.1, 1.1}}, 
        PlotRangeClipping -> True, PlotRangePadding -> {
          Scaled[0.02], Automatic}}], 
      Graphics[
       GraphicsComplex[CompressedData["
1:eJxlmnk8Vd/3/5WSkGhQGVJCkQplSFiSJIk0SCISQioZSpJMoWQqVKZESRkz
VMaNZJ7HVGS6o3vvwVUiw/e8f4/PvX7vz+f+UY/X4+yz9157r7Wea3mcrdbX
T9ou5eDgeI7/88//D0u1yxYWWhDH//uNweVrYXrKBxrZ2tt7W9lhqVq2NtMy
0nh9uoqttx06LrjraTlb6+vLvBQRLGTr3hsExbve79n6Y7a98tYnyWxt//dO
u362K1uHdfR9EJV8Dv/RaH33Cpvk/gy2Tp2T2PaX5wNbO4YlOJ72KWXrCzmV
9LmGSrauIL2I931czdZUtNdK7l09W28/+6s5K6uZrY02C8SOKbex9bVBjrNi
0MHW745Jr06W7GLro1xvjIsUe9jaJanMQVOll60/DfLcFd70na2tXXOFH27r
Y2uZjLA8Y96fbK0xxBFZ6TbA0vBUyH6VtMcgW/skOgQpOQ6xdVzzs+ow52G2
vnPtyZiYywhbUy7u2HjOmsDWD+aoy/rtiGz9iXYE4zcjsXX6Mecqdz0yW7ee
rL4gfYzC1gGZH377qVPZ2iGn85SM9ihb93GFZt1RprG1UJPAJKc0na19D1TO
d8kw2NpzbtWK06IYW7fnHaKGCo6xz6Nui131o8eLOvjjmZeDPONsbSXx48L5
0EW98GGPyM4VE2ztw0lpjPZe1MKS+y9KcTDZ+s41k0me24v6/dnaqYWFRf0n
2p4zTqyZ7Z+Sez5F8KyMZuv8Ts2l+qoB7PEMy2JL00+v2Lo6fAvp6ob+Rf80
rGiQ+bN4345e+4zcfi/et7coeen6lMXzCc+tp398sXg+htTTpqtOLp6H0KXV
N++XLO6XI2uJ4tEKG7bWdNkZ3u+3uN4yU6eZ5RcW55tMnP++JSmS/XzvPcVt
s6qL+xFeJTPoMLg4vlXvt4tBwkm2/VnHj9E2iiyO7/x5mxRRvjh+nxYyjLe/
vRgPOZvMfposjrfPWB36a8miPfGh+7EEE3v2/LT8nhPb+RbHl6ZwXOgeX5xf
fu2q8cMEXfb7zsSyIB7ZxfG+5J70sysX539IFvPPWrb43OlrlHgSZXG+7qDq
mVZTYK9/3Ddyc9LaxfH8153i+WYWxzdO6GTFepqx528zFRce5fz/5t+xW/6l
oi57PrsHynfHfy2+X9w8Q3HkHvjv9dnz7XkzQFg3+z/7Yz//7/P77/X/29/+
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

        "], {{{
           EdgeForm[], 
           Directive[{
             Opacity[0.2], 
             Hue[0.67, 0.6, 0.6]}], 
           GraphicsGroup[{
             
             Polygon[{{50, 664, 665, 73, 79, 42, 60, 43, 44, 45, 46, 47, 48, 
              49, 61}}], 
             
             Polygon[{{56, 660, 661, 90, 77, 85, 62, 71, 53, 65, 10, 54, 11, 
              12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 55, 25, 
              63}}]}]}, {
           EdgeForm[], 
           Directive[{
             Opacity[0.2], 
             Hue[0.67, 0.6, 0.6]}], 
           GraphicsGroup[{
             
             Polygon[{{1, 658, 659, 82, 87, 68, 74, 9, 52, 8, 7, 6, 5, 4, 3, 
              2, 51}}], 
             
             Polygon[{{86, 662, 663, 91, 84, 88, 76, 81, 67, 70, 59, 64, 41, 
              58, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 57, 
              26, 72, 66, 78, 69, 83, 75, 89, 80}}]}]}, {
           EdgeForm[], 
           Directive[{
             Opacity[0.2], 
             Hue[0.9060679774997897, 0.6, 0.6]}], 
           GraphicsGroup[{
             Polygon[CompressedData["
1:eJwl0D8zwnEcB/BfxTNgxDWnDDwAm9g0ZKo7if7cYXFn6BrctREG4RnIFlp5
AI4mW1OUpclkU6/O8Lr35/3+/qZfNHeYOggHQRAiTV25JDfZ5KmHYxmT23Io
a/LT+4b80KvySO7LX9nytux+dmcouH/kDFvunjzhyndz+p17jT99U++6K7zp
q/qru0yUHVvYduZe5Et/YMX2omeZpWGbtzXdSUb6O3ki9rotTl9/5JoF+71t
PfT/Qzpilyn7uZ5goD9xwx7T3i7sS3zrbW4pUKREmTH/qyv2
              "]], 
             Polygon[CompressedData["
1:eJwt0E1Mz3EAx/G/Tp7zkGyeNheFuPeEDnRjRZJDbZ6atSlrbbXoL5X+/w45
K5EK1S0iJ8X/X450oeThkIMORiqazXj9tg7vvT+fz/f73X777TxTnn8pIRQK
LcNz3FRaUStfwVXUIdF2y6V0/Fi624UU+4AtD8vx1hbGOnubnoFZfRjdSLU/
suVjBd7ZrmG9vV3PxE99BOm2mH4WW9Bj2217LB/HSkzY6rHBflvPwpz+Ahm2
uH4OW3Hftsc2KJ/AqsD6J67DpPPD+mu5HLtQrH/lCK4736h3yNmY14/qE3I1
XuqZ+qh8HhflOd6GInma67mBK/kvP/Bmr/xEruGC4C1/5yZezQX8mcMc5gr+
wy383vsj/Eav5Qou4wVu5hQu4Zng+znKVfyPG7xNku/IB4L/LH/jBfsxeTL4
JsT0LH1MvoDtOK1/4UY8dJ6mP5VPYg2mbLm2cfkyUoO7tk22u/JB/NLjyLa9
0kuxA722fbYhuRBr8cHWhGR7p34Iv/VR9GG//ZntFBLx0XYDm+339Bws6mPo
RzMiiKIF/wEIf2LT
              "]]}]}, {
           EdgeForm[], 
           Directive[{
             Opacity[0.2], 
             Hue[0.9060679774997897, 0.6, 0.6]}], 
           GraphicsGroup[{
             Polygon[CompressedData["
1:eJwV0Lsug3EcBuCPK3BYqiQYdXG4ABKn1CYdJLSDSAiJECQGMUhEIg6twx2g
FqfZYdeysRmowWIySUolnv/w5P2979c26dc6MZ+aq46iqIpJcso+h+6d8IBl
tnxgXX7KcZmQm/JbzsoluSqf5ZB899Vf94J7TZYYcdfLL6bcGXlHl/vK5zfc
H6T1FjlDkR790fMV9wvD+p8+6D6lST/Q29yLPJG0lWx14fe4pdN2aWt2T1Og
2/ZgqzCg52kM70B/o1Yf44YO+4WtGP4b/bYT4vY9/ZUafZRr2u3ntgI/9NmO
abDn9DPuKdNrPyLmWVbfDe+fbf4BpBs27A==
              "]], 
             Polygon[CompressedData["
1:eJwl0jlMFHEAhfFlUQ6vUqXjtBaQo1WpxINgQ6FRCIUR2AXkjhpjgSEEogii
eNKCKI2CKBFoPVAOabSxEATExFhAQoi/icWX7733n8nOTDalLFocCYdCoRiM
oUPpRIvcjCY0oh/j+I18F9/FHtc16E/wBmvIs/dit7N6fR7xehGGccD+2PYa
v5Bru4Nd9jo9Q47gIwpsc7Y4+RSeI8P2yJYkl2EK+eH/z94oL+CEvqrnyD3Y
qV/Sb8iLOKuncxU+4Kg+63xDjspX+BtOy9t5DeXySW7iZ5zOD93Tzpt6LV/n
a/ydS3g/t/IfvsCl3MKTnMev3N/G68E7B9+Sr/IXPs4rzleD95QPcTd2yLX2
LblObuUfOCOn8V9clCv5PY7IM66/LH9Fsb4t+EYYQpr+wPk++TwmkGsbtdXL
8yjUl/Vs+TYS9Ro9Va7AOxy2fbbFBs+Op0i13bftlc/hLXJsI7afyNK7kGCr
1j8hHPweBpFi77O9xBIybbcQb4/q08H/Vj+GASTb79leYBEHbTcRZ4/oVahE
Bf4BjqJc8g==
              "]]}]}, {}, {}, {}, {}, {}, {}}, {{}, {}, {
           Hue[0.67, 0.6, 0.6], 
           Thickness[0.01], 
           Line[{1, 51, 2, 3, 4, 5, 6, 7, 8, 52, 9, 74, 68, 87, 82}], 
           
           Line[{90, 77, 85, 62, 71, 53, 65, 10, 54, 11, 12, 13, 14, 15, 16, 
            17, 18, 19, 20, 21, 22, 23, 24, 55, 25, 63, 56}], 
           
           Line[{86, 80, 89, 75, 83, 69, 78, 66, 72, 26, 57, 27, 28, 29, 30, 
            31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 58, 41, 64, 59, 70, 67, 
            81, 76, 88, 84, 91}], 
           Line[{73, 79, 42, 60, 43, 44, 45, 46, 47, 48, 49, 61, 50}]}, {
           Hue[0.9060679774997897, 0.6, 0.6], 
           Thickness[0.001], 
           Line[CompressedData["
1:eJwt1WW0FmUAReFLSad0tyLdHdJICYoYSEk3CEinoIQSgqR0h3RId3cjLSlg
0A0+71r+2Gufc2bmxjcz92Zo3L52u0gRERG5IkdENOZIPMzwDWfnRnyHv+U/
HP+AT+i9uTO35Se81LH88kb5SzSX73Fi1JWvcH+McV4afa5cCa/1Wvo5uScO
6GX0fXIrZMBXtsi24XIOXNWXoYBtk14fSTDWltY2T66MN/pBNEEU+w+2nLim
L8fPSGefb6sSPgQcoqaIav9Rz4Xr+gqMQzNEc2yEPTdu6CsxHs3RAi3RCj84
rzW3QVu0w1u2ka7Lg5v6KkxAevsC2weIhMO29ohuH6XnxS19NSYig32hrSoi
44itA2LYR+v58Ke+BgVtm/UGSIpJtoy2RXI1RMFR2/u2/XJrZERHW0zbT3J+
3Nar6iflLlirF9K3yA2RDJNtmWyL5eqIitr6ee6FY46X1Q/IbcI9lh9yJtST
b/BgdJZfcyfnx5LHyAXQWL7Ld+zV5FNyH+7K7fgpD+HfHC/MW/Ue3Ihb8P3w
9Tk5fxqeae7HA8L34pc8jH9xfWb+Ve/GNbgJ/83R8JF8IbwHaC8/4+OuKScf
DO8FMod3Qb/J3+Frx2PrY+WCuKtX10+H9w3r9CL6tvB7IgWm2LLYlsg18RZO
2MrbDoXfGVnC52WLY/tZLoS/9PWYiqz2pbYPER0nbV0Q1z5OL4y/9Q2Yhq6I
59h4exH8o2/EdHyDbuiOHvjReT25F3qjD+LbJriuKP7VN2EG3rEvs9VCDJyy
9UUC+0S9GO7pmzET79qXh+cHMXHa1g8J7ZP04rivb0FR2/bwtwIpMcuWzbYi
3CvEwhlbfySyT9ZL4IG+FcVsO8I9RirMtr1nWyl/jNjB+sXwvOGs4xX0w+H+
Iyvq67f4ewxw/O3wHMkl8VCvoZ8JzxO26cX1nXJTtJQfcGp8Jl/l/jwwPDf8
iue4Jru8Su7OdcK1/A8P4jhchy9xX+7LHfg5D+XfXV+Rj+g9uUN41/lReD75
HW7Af4afn4eE95zf8EDXJpanyKXC5yz/xY/sNeWz4WfCdr2EvktuhjT4XL/G
32Ku4zn01fIniItztkq2o3JHvBvOtSWxTZVL47G+AyVtu/XmSIt5tpy2NXJd
xMN52yAktU/Ty+CJvhPz//9ftza8/4iPC7bBSGafrr+Pp/ouLMB3+B5DMBQj
wv9IHh7+xod3AMltM1xXFs/03VgYzkUKx2bay+G5vgeLkDv8nQr3Gwlw0TYS
Ke2z9PJ4oe/FYuSxrwufJxLikm0UUtln6xXwUt+HUrY9egukw6+2vLb18hdI
hMu2yrZjcidkw2hbatscuSJe6R+GZ0fugf16aX1veGaRPnw9/Xp4BrHE8Xz6
BrleeAbkf/ntcL/ly9wv3Gf5BV9xfhX5uNyLv+Y2/Di8R/weN+Tb4RnkodyV
IzA8/G8S/wNuvBi6
            "]]}, {
           Directive[{
             Opacity[0.2], 
             Hue[0.67, 0.6, 0.6]}], 
           Line[{95, 94}], 
           Line[{96, 92}], 
           Line[{97, 93}]}}, {{}, {}, {}, {}}}], {
       AspectRatio -> GoldenRatio^(-1), Axes -> True, AxesOrigin -> {0, 0}, 
        ImageSize -> Large, Method -> {"AxesInFront" -> True}, PlotLabel -> 
        "La invierto en tiempo", PlotRange -> {{-0.25, 1.25}, {-1.1, 1.1}}, 
        PlotRangeClipping -> True, PlotRangePadding -> {
          Scaled[0.02], Automatic}}], 
      Manipulate[
       Plot[{
         $CellContext`X[$CellContext`p - $CellContext`t$54806], 
         $CellContext`Y[$CellContext`t$54806], $CellContext`X[$CellContext`p - \
$CellContext`t$54806] $CellContext`Y[$CellContext`t$54806], 
         $CellContext`IntConved$54806[$CellContext`t$54806], \
$CellContext`X[$CellContext`p - $CellContext`t$54806] \
$CellContext`Y[$CellContext`t$54806] UnitStep[$CellContext`t$54806] 
         UnitStep[1 - $CellContext`t$54806]}, {$CellContext`t$54806, -0.25, 
         1.25}, PlotRange -> {-1.1, 1.1}, PerformanceGoal -> "Quality", 
        PlotStyle -> {
          Thickness[0.01], 
          Thickness[Medium], 
          Thickness[0.01], Dashed, 
          Opacity[0]}, Filling -> {5 -> Axis}, PlotRange -> {-0.1, 1.1}, 
        PlotLabel -> "Desplazo, multiplico e integro en un per\[IAcute]odo", 
        Epilog -> {
          PointSize[0.02], 
          Point[{$CellContext`p, 
            $CellContext`IntConved$54806[$CellContext`p]}]}, ImageSize -> 
        Large], {{$CellContext`p, 0}, -0.25, 1.25, Appearance -> "Labeled"}, 
       SaveDefinitions -> True]}]],
   DynamicModuleValues:>{}],
  Setting[#, {0}]& ]], "Input",
 CellChangeTimes->{3.481786625582201*^9}]
}, Closed]]
}, Closed]]
},
AutoGeneratedPackage->None,
CellGrouping->Manual,
WindowSize->{1024, 746},
WindowMargins->{{Automatic, 1016}, {-38, Automatic}},
DockedCells->FEPrivate`If[
  FEPrivate`SameQ[FEPrivate`$ProductIDName, "MathematicaPlayer"], 
  FEPrivate`Join[{
    Cell[
     BoxData[
      GraphicsBox[
       RasterBox[CompressedData["
1:eJztXXdYFNfaz3O/f+79vudek3vTLKBIEaQpTRC7BgtqLCTWGxNjYsFookE0
NoxRY6oFuyIiWJCO9N4WWHrZpSy7VKkiBo2iy+5+Z/fsHg4zO7NLUZJ4fs/I
Mztz5j3v+87u+zvnPe+Meuu3L1v/P6+99poJ+Gf+t9dek+8LBwiBIHvu/Byd
ManLXMoSE+ExkQoZX+8W641rHWPUaDZZav+BZOoa6ZRVkhkftXrdrC3lg60h
JuGh667nVjNkJjbd4ywfjhzbcP7iQFUiICAgIHiVkHfVO0dHL0tnDFd/XNGH
q/g3bgrz84VFRVmnznAMrGRjDCSjxz6xmCFx3iFZtl/ickC6ZK/U6YtnS7Y/
c/6s23Zpt8V73aaOz8wdn+pbto4yqI2NG2qDCAgICAj+HIBTHn5GRrGhMV9H
r0hXr1hnbKGuQaGlQ6G9U5TJTJ7ZFJneaNnoMd0GZl1rjos3X+7efEn8uafk
k1OSlUfFi78RO30htl/5fOK8p2ZTmnXHNxlbVWVzh9osAgICAoI/ByANVVVU
5DpMKRs1pnS0fumYcTwDywIjh6IJixMcVrWNt5HTkL5Bt/7YR9OXi9yv1+7y
urfLu/1rryfbLnR/7iledUQ8b7vYcUXn+Ol1uhZ1EycLCwuH2iwCAgICgj8B
0AIQ2C9Yv0E4ckyNvmmh8YSs2U6chUvTlq9JcFnDc5pR9t4M/rw5/IULeDMd
M9Z9lrTVLWXLDs7Wr3O3uhVt3sn79Ev+2k2lLmvy5r+fY2JXZjO9qrh4qC0j
ICAgIPijQ4RB/vGAR72OUaHlpIqzhxsCL9QHXq4N9q4L8mryP9d051xT4IWm
oEtNARca75yvC79eG+Fbd9e3/q5vQ4TvvfDrjaE+94KuNgRfFvmdips8jZ+W
wd51VXl5bkCgIENDMwICAgKCvyoA9VSroOShbw7UjbXJ/+KzxqCrLSHhTZFJ
dbEZnRFRv4eGPQqP7IyK64yN74yL7wwP74iOackrbCkobs0taOXmt3FyHyRx
QPv6oIi68IhSz3NRK9bnht2tEgjwHiv4/JykpOgTJyI/3cBdubru7Pnq0tIh
sp7g1YUgNFTg4zPUWhAQvLpA0x9IQDUKyJlIKCxfuqbOYm7RQbfG8KC2pLzG
tIKWhHTeuXPtsUlPsoseZxU+zsp/xC14lMF9lJjSmc7pKK1oLxO2lQjasoub
knKqYzKqIlOrEzOrwuJDxtpfe2fMRSs7/wWLvZe5/DR/wS7HyTuNx/365lvh
7wxvWLuuLi1tqD1B8CoCcBDvtdfAxtfRAfsvqJcMMs0n+OsiIiLC1dX12LFj
PB6vfxJwGgIEVKuAqKKi6OB3FaZzBDPW5Xnsro2+W59e0JKc2ZGUGjppcqrD
NN4V7/a84of5JR25RR25hR0cLjjVEZ/Qnpp2PzWtOT6pNjqxKiy2PCymMjaJ
Fxrx7bsjdg1745dhbx/4xz+//Pv/nvjXsKi33m4Zrts9fkLzZa/B9QkBQZ9Q
sXFj+cqVciYaNqwqOXnQ5efl5Z09e3bQxRIQ/EEARlmBgYF79uzx8tI2mPMz
OKnXrqVcv56flFReVARmPVUCQSWPV87llsbF8QKDC095Zi9akW04JcveJXOB
a46He/XdoObY5N/iku9ncFPmL7ynY1ww0iB5xWp+cFhTblFrTmEzh9uSmtma
kNwaGdUYGlIXHCgM8C+/daPI93pxSFDW7ZtfvPPumRHjfN/R8X9nROUYPamh
kUxPr9vSuj787gv1DwGBlgBkBJiozNFx0CUTGiJ4FeDn5weYSMvGIj6//nYQ
d8VHZ/QND41491drK087uyAb23Rru6yJtlwbB96kqeWWtgJzxxqrWS02Mwr3
bK2/49MWGduWlH4vIztunnOVgUW1qW2Fnmmq/vikbV/yI2JqOTm1yZy6+OS6
qJi64BBRQED5rZulfr55167mBfjzbt3Ot5xeZ+oonjhdamYvNZkg0x/XbTmh
PibmhbpF4OMzWDn/qvx8ubQXlrQhGHKAeRDMzg36OhGhIYJXAWBO5Orq2tf8
c11ymuiLr/JMLTMMxsUYjeNaTOh0mCab5CiznCgzMpTpj5YZjJWNG5/n7iq6
ff1eVEJdQpowNSNyrnOpkWWpmS3PzK7c1DZ/jEnkRLuUI9/zoxOq4lMFEdGV
AcEVN2+X+PkW+Hhnel3m3bnTGp0iXXdIsnibZOpKqe08qYmtxNT6XkiI9qoC
FoAhAmxgHx3nDxumNnTAkS3awEd0Cgx38UEv5SOA8pJdu9CRyiNHUEegJTiF
LoH7PNXbk4AaFH3o0nCxcjlmZnjX8ryQykCYKULKI6PAcRAzgQJgQ8wIdvg6
OmiNA16LhKMYW3n6NHIpaAPtApeUL1gAdYZaIT/TL4S9QK1AG+hAIAfYCCRA
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
jHv1XEF4pCghpTktozklpSk2tvJueEFQUHN6dktmXms6tz2n6GFWwf3/7nm8
dPvTmRu6HVaJrRdLzGdLLabLLGdKJ0xt3/xlDSeTST16YS0Kvzw886MqpcOv
VfsyH41JOYqEHk1UKzKMqioa4OvjkMKY2kOggjeKRUIsXNMnAjDA4sJ71b9t
3Ag1wSuK4doNntPDzdRsF94Xg11QDt4F/sgqTJohTdRm4egaMjXGQbmJFOqh
DwbotxId6aU83ck0R+GiKF8ABI00BDkIpwD2qNvXZkzBrX8YXN0Gt9NB7/fF
yVSLftNQv6GxYJsFg+sWxEQPP/28e7zVM3OHbus5YkeXZ4u2ta7en394T1PY
rYfR0Q/iE9tSUv3nOCVbTCj5fFXOmR/ygoOFsQn1iUnC2PjqmNjGmJjau3cr
Q0Jy7vjfi0u6l8Spi0tv4uS1cwoebvjuscuurtmfPrVdKLZ4T2LuJB0/VWZs
JzOeJH9SyXJK20cbqgODhBUVFN3QyBYdQUkh/CDLEjYFfaKhl4CelwaoFiPQ
KWQ7ngViB+XRKnqt9csHvZxMbcwfCChrVWi9RllF0PsZ25cPjTQERpj4VEio
9Q+c5YU5lC4IDQ0EWvp54Hj5NKTx8VUWvAhXV2zcLB5rLDaxemxo0TbOttl8
Vp3DysIFm7MPudcGXGsJCWoJC2uMiAxZOC/tm23ZftfKgsOEkVGCiKiy8IjS
sPDCkJDioKDSO3cKb91Mu36tKiRSEJtWGZVSk5zdmpLzdN13Txdu67JZJjZ9
76nt3IdrtzzYe7j1hGfLxSvNV661el7o2Pvtgx27m05Rf614il6lpzLm4JVa
9GZMUEtDlFK0lww8TUQZbOOntKESuEZPf6eExveevVAAAoLrWRSt2NOVfZJP
yf7hXw+1dX0vExppyJX2Ji7tf+DalCQNIQ3Ra9sG0qk20l7QzAX3M1q+H3S8
fBoSanqZj8YLB64AhIjHa3XdLh6l1zVKr11Hv1HXQDTWtGb8ZJ7V/Jx5GzkH
vxb4Xay+4Su6dav61i3Ozz8WXvctvu1f4u8vCAgUBAYW37qVfv168rVrYMu4
ejXzypXYC+dLfG/zwxL4QbG1iZltabnPluwQO6zsdNnUeupiTXYOoyqCKsoB
EGHQ0rayiSLPQzkIV8O1CWsUGkIpIxCmhmrADF/dqXyjWu8JgnyJSnWqf+/3
1vK9Zy8ZUKvBcjhcBcM3+GgtPEt5WevLh0YaokyFhIM9/B4SGqK/jLR/L71k
ksbk0peQQBsSGqK/mkDtwf6B5dWmLBhEVzf53nruOKtzlF7NOLOaibaVVrZC
m0k8Q9N8HeNsI/u0mavjN3/Gu+lVfsOv3P92xR1/fsCdquBgUWxcbSa3Pr+o
LqegIT2zNia+MiiIc8Mv9qpXrNeVqCuXMq/5VIbHC6OSH1TV1kXEPp+8+vfl
m0T8skHReSCAMR9P36F6hiEcML840O39IwAuu7yc/zgDkdRQ/T8dQ/4fPQxi
vBK+xAxV//AHV48dg3unXjQGxdWi4mKB5/nwj9cH7tmTHxhUmZMjKCkRlpYK
i4srk5MLz5xNfn9VmPX84ElTOD//IORmN1VWtolEbXX1bU3N91va2lsVW3PL
g8bmjsam+w2NrbUNzVXCmoqKSj6/qozfJqp+9OBhe01N8axlT0xmNt64Myi2
ExD8uTDkNERA8IdFVWlpEZdLP44qFspzc8Ns5/jpG9wwNoqYM6dw3cYS96NZ
e49x9hzJ3Hck99BxsHEPHM13P8jf8U32VveUDV8lfOYWu37nTecl+6c6Rs9b
kL9kdan17DaL6Y8MrOvDyH+0SvAqAtYGD7UWBAR/MiAmCpjl9Mub/z45YozA
dq5k44nn+7ybvrsuOOIjOHpN+IOv6Mfrwh98ag9d/H37MeHGw/lr92Ws+zZ9
1cGi5bt8jO02vvF6pZFZnfGEJkPz+7oGNX43h9osAgICAoI/E8rS0o6OHO7x
+ptn39HvmuwiWbZXsun0E7eLD/Z6tRz0bvDwrj10tcbjSsO+i+0bj7as+7Z6
xYHyNYf5y3bxnT6vmvxhpJ55/CjdyrGGVXpG9Tp6Fd8dHWqDCAgICAj+PBAI
kn788cib7+7/v9dTdMdJHN6XzNkgWbZb8slPkq1nn3198fHuK527L993v/Rg
57nfPj32ePV3vy37pn353ntzNtZMcqk0nV5mZJU1Wi911Oji0XplI3XLFi0V
VlEL4QgICAgICNSiSiDITUw8NFLH45+vPzOxlk6cKZm0WDJtjWzWZtnifdI1
30s2/Nq98WT3phPP133/fOWhrkV7njq5ds5c/8hycfPUJTV2s/ijDXOGj4ob
PjJ+pA5nhG6OoXGFuqUoAgICAgICtcgIDV3/93+kDB8pNZkgHW8nM50msXPu
ctny++aDzz50k87cIlm0W7LIXeK8s9tp29MpH/9us/ypyezWo7+IioqFYAsK
Llm5OmXM2MC33ol8e0TcuyNzvTW/QY6AgICAgADiyv59B//1L5m+vsxgnNTM
utP1q7pU5ZPLovKKhx4nZXYrpFP+K53yUbfd8qcWzl2G03775AuKEF5sbMJS
lytv/Mf/P29HOi8ieTkCAgICAm1QJRBstbYSDB8p09Pres+pITqG3qbzKw+Z
zWLpxLkSG+cnxtO6jB3r45PUSuNcunRGR/fCsDdq1ckhICAgICCgICs5+ei/
/y3T0ev48isRwzvuqotKxLOWyl+UbT7tmZH9o8WrhAIBk8Di5OTjxkZx06eT
CREBAQEBgUb8vGVz24jRTZ7n2Js13wyQjbeXmTmKDa3aftXw/kwel/uzpYXo
0uXBU5OAgICA4C+IHA7n0tvD205d0Kbx74s/lBlNkBpb18TFa2zMz8uLcd1a
nZM7YB0JCAgICP6yuPT1zta9h7Vs3HLJS2Zs02ntWFFYqE378sLCCkJDBAQE
BAQMyMrI4B//Rfv2osrKbodZ9xcseXEqERAQEBC8OqgoLu5rFcGTlRu4HwzZ
/25JQEBAQPBHw/8DCp03+A==
        "], {{0, 0}, {557, 41}}, {0, 255}, ColorFunction -> RGBColor], 
       ImageSize -> {557, 41}, PlotRange -> {{0, 557}, {0, 41}}]], 
     "DockedCell", Background -> GrayLevel[0.866682], 
     CellFrame -> {{0, 0}, {0, 4}}, CellFrameColor -> 
     RGBColor[0.690074, 0.12871, 0.194598], CellMargins -> {{0, 0}, {-3, 0}}, 
     CellFrameMargins -> 0, ContextMenu -> None, 
     ComponentwiseContextMenu -> {}], 
    Cell[
     BoxData[
      GridBox[{{
         GraphicsBox[
          RasterBox[CompressedData["
1:eJztWl1Ik1EYFrqNEoLMbHPmNkRrEhJERj93ra4cJvbDRIsyMk1pc03tTL1w
aD+LfkQIJBkR/dBFdtHFDLywCykqoqgLIYRu6jbb8me933e+HT/P2fZN+sZ0
vg9n43zfec973nPe57zvOWNFDS2OhnU5OTlG+LyBj1S/ikAgEAgEAoFAIBAI
xEpFMBh8jUgPYG0z7d7MAOYedm/Bko4Ca5tp92YGSCokle5AUiGpdAeSCkml
O0RS/R1tjEajUIHvyIhdehPyLNZjrVSAgT5CK1Tmf32e+/qcdYEy+/4+vKTd
oQJN89PjojbaHcrCzE8qn0RGfIxrEjcF0SomD49hYqDDUUSGKtUKWRMYz42L
pFJDg1RPamGdlRWGuuDi2Yl+WHkoiy72W6jjgFeSm/wWKEAScCvtCxWpSzxt
1FPU9dJ76Lt8UnEmcVMQrWImUQE6nKJB7sgUKpb4LcpEtHiFpEpEKim2TI8n
IhXv4pAHXCAJEAPIq7d5JFAOYYEGKHEstTbQAJKSx+XH5ZKKE+CmIFq1ZC/E
SBVXoboJyMliKZKKgyapwLlK1ohHKgpYYfGRbnNpg4c8dP3prtckFQ0gUm5K
miKpVZxnRZP4KcSziiU1bjhOobpJ2TtIqnhITipYZ7byydJfoDzMpT9ZWMo1
EHbgBBLyhOWzlmakUtKQnB/VuUYkFbWNjZXIJHEKnFVL0t+IXSQVU4iRKkUk
JxVzhJI7hirpDpXOGzJ5eFLFvMNORxAlaJZhmtmZStQGAvSQA/FECSksH/kt
VLMyokw5qHDOFU3ipiBaxZmtTSo8U2lBI1LF/BWNXZ0Y1LckLo9IqQdYIWdA
9T0uvPT2J2qjrUr2lGMRSzrq4eiIVIxFGC5bMZO4KYhWcWYnSn8gv3j7k+vJ
GbVaSNXt9fo6O/XVib9Tpa+sClLdvtB0q+WSvjqRVGucVA/q6p9V1+irE0m1
xkk1cuLk2O49+upEUq1xUg1X14yZraSrS0ed+H+q9GFV/J+qx25/u9U40Nqa
aUMQ2YMrFRWf8g0vDh9JvUvgYjPR+8KIyA5AyiNeb1Pe5ql840xxSV97eyq9
Hp1y3nE602waYoXC19GRqInIGHC57lY53Lm53/O2RQ3Fr6qqNXUG609/LLX1
ulOiHyL74D/XeLPxvPiexHDtsuulyexbv2GqwLRgNP8xl/W7XAQE1IUQ1nHw
zNl5o2XYoc09RLbC5/E8te26V9+gfskY5SPkuss1abLc2Ljpm9E8Z7FFt++c
POroJoQWn1wotQAPj9XMFZp/m6y9bndGpoNYCZBikbNuoqBwsPY4IxIrQJu+
trYf5pLRfOOXotJw6d7Zsv0LtkOPzzb1ENKjolagueVD5YGodUfEZH2372Cm
p4X4X/wDFcRtOg==
           "], {{0, 0}, {199, 30}}, {0, 255}, ColorFunction -> RGBColor], 
          ImageSize -> {199, 30}, PlotRange -> {{0, 199}, {0, 30}}], 
         ButtonBox[
          GraphicsBox[
           RasterBox[CompressedData["
1:eJztlDFuhFAMRJHS5w45Re6RI+wFcoOUtNtR0lJSUlNSUtNS0m9JXjTKaPQh
UfpgCeT1n2+Px15ebu9vt6eqqp55Xnm+/I/L/p+1bbtt277vvJumIcKbnwWs
73vBsHVdE1bXNQ55Ho8HMOEd3L9tWRZ+6tRBrrjEMAwigHO/37M6SII40zRB
Q7QLkpQWjKOu63RqGHHVIoOYYAR16oucinYGxUo2jqMIzPNMnpQRPF2nMkeS
cCBDXsm7ZNZp6oZRS3wsIBFNIYM2iY8gYmJA8imqawHcOAKqio4KSp4O7Qjp
K1nOUygasaG2hoKSaud3krkArggZzyhhTohP3Uz7E0mNu9g98oj26exOSTon
fRUtn8IUJL+W80gyuz6OW3mgrSXXEv5dSaRTaRz9KQpY/knxtVomKdFQxvFT
JZFR6pFBJWT5tbEvR9+H3F6S+GOSMC+DTHtrHYyh32Qu855cdhn2CUundjY=

            "], {{0, 0}, {55, 14}}, {0, 255}, ColorFunction -> RGBColor], 
           ImageSize -> {55, 14}, PlotRange -> {{0, 55}, {0, 14}}], 
          ButtonData -> {
            URL["http://store.wolfram.com/view/app/playerpro/"], None}, 
          ButtonNote -> "http://store.wolfram.com/view/app/playerpro/"], 
         GraphicsBox[
          
          RasterBox[{{{132, 132, 132}, {156, 155, 155}}, {{138, 137, 137}, {
           171, 169, 169}}, {{138, 137, 137}, {171, 169, 169}}, {{138, 137, 
           137}, {171, 169, 169}}, {{138, 137, 137}, {171, 169, 169}}, {{138, 
           137, 137}, {171, 169, 169}}, {{138, 137, 137}, {171, 169, 169}}, {{
           138, 137, 137}, {171, 169, 169}}, {{138, 137, 137}, {171, 169, 
           169}}, {{138, 137, 137}, {171, 169, 169}}, {{138, 137, 137}, {171, 
           169, 169}}, {{138, 137, 137}, {171, 169, 169}}, {{138, 137, 137}, {
           171, 169, 169}}, {{135, 135, 135}, {167, 166, 166}}}, {{0, 0}, {2, 
           14}}, {0, 255}, ColorFunction -> RGBColor], ImageSize -> {2, 14}, 
          PlotRange -> {{0, 2}, {0, 14}}], 
         ButtonBox[
          GraphicsBox[
           RasterBox[CompressedData["
1:eJztlSGSg2AMhTuzfu+wB1qzR+gF9gbIWhwSW4lEV1ZWYyvxSPZb3vAmDdDq
zpCZdvKH5CUvfwhfx9+f48fhcPjk983vXy922eU9paqqcRx9HGcZhiE+PZ1O
KHVd24KOgt0WFKLQ27ZdJrper0JGcS5CVqs6n89yRpGl73tZBK6kkvv97kCe
ChOlLEvbVW2kiYPoxKcYRdwWld00jS2EcFSFMYXCqbOcBJzL5aJcxK7SFEFB
GQFn8AWupPUkMRfIJEK53W5d1z2hGVP7yohVbfanWoxAJQTfeywbT1+xK9mi
GQGTj8FT0uRAN3Tdjl3SlNANP5WoabIIRP+x52ojLEgXs8fxs7+R1cCXNFH6
SVJhKZwx0+BxBZ7nraGNpBSrEFlA1khgRDcCRg1navIWTeVKPVmliaeaL+c4
tCmcknRHfjtWaS6HNtYmC1wYjGJ+6eKjJcficWgVssz1nGbabFtD682gZaIO
MHXqkq/vyW3GFaQXliNuOhbz9lOHU3a6SrhWkCmnXC9pUoPBt1aQpquYrtJt
0f6Pazkd497W1MkSlxierkrrN254iz8oHqS0ByzxGzfOHx2yq9plYSl8l13e
Xf4ArlmHrg==
            "], {{0, 0}, {77, 14}}, {0, 255}, ColorFunction -> RGBColor], 
           ImageSize -> {77, 14}, PlotRange -> {{0, 77}, {0, 14}}], 
          ButtonData -> {
            URL[
            "http://www.wolfram.com/solutions/interactivedeployment/\
licensingterms.html"], None}, ButtonNote -> 
          "http://www.wolfram.com/solutions/interactivedeployment/\
licensingterms.html"]}}, ColumnsEqual -> False, 
       GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}]], 
     "DockedCell", Background -> GrayLevel[0.494118], 
     CellFrame -> {{0, 0}, {4, 0}}, CellFrameColor -> 
     RGBColor[0.690074, 0.12871, 0.194598], CellMargins -> 0, 
     CellFrameMargins -> {{0, 0}, {0, -1}}, ContextMenu -> None, 
     ComponentwiseContextMenu -> {}, 
     ButtonBoxOptions -> {ButtonFunction :> (FrontEndExecute[{
          NotebookLocate[#2]}]& ), Appearance -> None, ButtonFrame -> None, 
       Evaluator -> None, Method -> "Queued"}]}, 
   FEPrivate`If[
    FEPrivate`SameQ[
     FrontEnd`CurrentValue[
      FrontEnd`EvaluationNotebook[], ScreenStyleEnvironment], "SlideShow"], {
    Inherited}, {}]], Inherited],
PrintingCopies->1,
PrintingPageRange->{Automatic, Automatic},
ShowCellBracket->True,
ShowSelection->True,
ShowGroupOpener->True,
CellLabelAutoDelete->True,
Magnification->1.3000000715255737`,
FrontEndVersion->"7.0 for Microsoft Windows (32-bit) (November 10, 2008)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[567, 22, 253, 5, 139, "Title"],
Cell[CellGroupData[{
Cell[845, 31, 227, 3, 81, "Subtitle",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[CellGroupData[{
Cell[1097, 38, 193, 3, 44, "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[1293, 43, 519, 16, 48, "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[1815, 61, 595, 18, 62, "DisplayFormula",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}]
}, Closed]],
Cell[CellGroupData[{
Cell[2447, 84, 253, 3, 32, "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[2703, 89, 439, 7, 48, "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[3145, 98, 378, 10, 37, "DisplayFormula",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[3526, 110, 898, 24, 59, "DisplayFormula",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[4427, 136, 13894, 238, 261, "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[18324, 376, 710, 20, 48, "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[19037, 398, 23247, 383, 253, "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[42287, 783, 354, 6, 48, "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[42644, 791, 25893, 446, 638, "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[68540, 1239, 234, 4, 48, "Text"]
}, Closed]],
Cell[CellGroupData[{
Cell[68811, 1248, 260, 4, 32, "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[CellGroupData[{
Cell[69096, 1256, 209, 3, 37, "Subitem",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[69308, 1261, 7686, 163, 889, "Input",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}]
}, Closed]],
Cell[CellGroupData[{
Cell[77031, 1429, 212, 3, 36, "Subitem",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[77246, 1434, 49401, 909, 886, "Input",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}]
}, Closed]]
}, Closed]]
}, Closed]]
}, Open  ]],
Cell[CellGroupData[{
Cell[126720, 2351, 158, 2, 81, "Subtitle"],
Cell[CellGroupData[{
Cell[126903, 2357, 112, 1, 44, "Subsubsection"],
Cell[127018, 2360, 665, 17, 62, "Text"],
Cell[127686, 2379, 581, 15, 91, "DisplayFormula"],
Cell[128270, 2396, 185, 4, 62, "Text"]
}, Closed]],
Cell[CellGroupData[{
Cell[128492, 2405, 253, 3, 32, "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[128748, 2410, 492, 8, 48, "Text",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[129243, 2420, 29848, 507, 262, "Input"],
Cell[159094, 2929, 189, 4, 48, "Text"],
Cell[159286, 2935, 115634, 1940, 639, "Input"],
Cell[274923, 4877, 320, 7, 78, "Text"]
}, Closed]],
Cell[CellGroupData[{
Cell[275280, 4889, 305, 4, 32, "Subsubsection",
 CellGroupingRules->{GroupTogetherGrouping, 10000.}],
Cell[275588, 4895, 121628, 2151, 886, "Input"]
}, Closed]]
}, Closed]]
}
]
*)

(* End of internal cache information *)
(* NotebookSignature puDiTuIPTBCCcBKFlhmJRpEA *)
