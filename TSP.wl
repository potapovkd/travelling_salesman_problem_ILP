(* ::Package:: *)

(* ::Input:: *)
(*n = 10;*)
(*pts = RandomReal[{-15, 15}, {n, 2}];*)
(*ListPlot[pts -> Table[i, {i, n}]]*)


(* ::Input:: *)
(*distances = Table[Sqrt[(pts[[i, 2]] - pts[[j, 2]])^2+(pts[[i,1]] - pts[[j, 1]])^2], {j, 2, n}, {i, 1, j - 1} ] // Flatten; (*DistanceMatrix, UpperTriang..., DeleteCases*)*)
(*vars = Table[x[i, j], {j, 2, n}, {i, j - 1}] // Flatten;*)


(* ::Input:: *)
(*cons1 = Table[Sum[x[i, j], {j, i + 1, n}], {i, n}] + Table [Sum[x[i, j], {i, j - 1}], {j, 1, n}]; (*Thread*)*)
(*subsets = Subsets[Table[i, {i, n}], {3, IntegerPart[n/2]}];*)
(*cons2 = Table[Total@Flatten@Table[x[subsets[[k, i]], subsets[[k, j]]], {i, Length[subsets[[k]]] - 1}, {j, i + 1, Length[subsets[[k]]]}] -Length[subsets[[k]]]+ 1, {k, Length[subsets]}];*)


(* ::Input:: *)
(*res = LinearOptimization[vars . distances, {cons1 == Table[2, Length[cons1]], cons2 \[VectorLessEqual]Table[0,Length[cons2]], Element[vars, Integers], vars \[VectorGreaterEqual] Table[0, Length[vars]], vars\[VectorLessEqual]Table[1,Length[vars]]}, vars];*)


(* ::Input:: *)
(*length = ReplaceAll[vars, res] . distances; (*Cases*)*)
(*res = Association[res];*)
(*Tour = {1};*)
(*For[{i = 1, c = 1}, c<=n, {i = j, c++}, {For[j = i + 1, j <=n,j++, If[res[x[i, j]] == 1 && !MemberQ[Tour, j], {Tour = Append[Tour, j], Break[]}]], If[Length[Tour]==c, For[j = 1,j<= i - 1,j++,  If[res[x[j, i]] == 1 && !MemberQ[Tour, j],{Tour = Append[Tour, j], Break[]}]]]}];*)
(*Tour = Append[Tour, 1]; (*\:0445\:0432\:043e\:0441\:0442\:043e\:0432\:0430\:044f \:0440\:0435\:043a\:0443\:0440\:0441\:0438\:044f*)*)


(* ::Text:: *)
(*\:041e\:043f\:0442\:0438\:043c\:0430\:043b\:044c\:043d\:044b\:0439 \:043f\:0443\:0442\:044c \:0438 \:0435\:0433\:043e \:0434\:043b\:0438\:043d\:0430*)


(* ::Input:: *)
(*{length, Tour}*)


(* ::Input:: *)
(*Show[ListPlot[pts -> Table[i, {i, n}]], ListLinePlot[Table[pts[[Tour[[i]]]], {i, n + 1}]]]*)


(* ::Text:: *)
(*\:041f\:0440\:043e\:0432\:0435\:0440\:0438\:043c*)


(* ::Input:: *)
(*FindShortestTour[pts]*)


(* ::Input:: *)
(*Thread*)
