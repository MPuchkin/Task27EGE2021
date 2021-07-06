##
  var (K, A) := (89, ReadAllLines('27_DDD.txt').Skip(1).Select(s -> s.ToInteger).ToArray);
  var (bestSum, bestLen, sInd, fInd) := (integer.MinValue, 0, 0, 0);
  for var i := 0 to A.High do
    begin
      var S := 0;
      for var j := i to A.High do
      begin
        S += A[j];
        if S.Divs(K) and ((S > bestSum) or (S = bestSum) and (j-i+1 < bestLen)) then
            (bestSum, bestLen, sInd, fInd) := (S, j-i+1, i, j);
      end;
    end;
  println('Минимальная длина', BestLen, 'соответствующая сумма', BestSum, 'время', Milliseconds/1000);
  println('Участок с максимальной суммой имеет индексы (0-based) от', sInd, 'до', fInd);