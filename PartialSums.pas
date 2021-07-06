##
var (K, A) := (89, ReadAllLines('27_DDD.txt').Skip(1).Select(s -> s.ToInteger).Prepend(0).ToArray);
var (maxSum, minLen, baseVals, baseIndex, S) := (integer.MinValue, 0, new int64[K], ArrFill(K,-1), int64(0));
for var i := 0 to A.High do
  begin
    S += A[i];
    var index := (S mod K + K) mod K;
    if baseIndex[index] < 0 then
      (baseVals[index], baseIndex[index]) := (S, i)
    else
      if (S - baseVals[index] > maxSum) or (S - baseVals[index] = maxSum) and (i - baseIndex[index] < minLen) then
        (maxSum, minLen) := (S - baseVals[index], i - baseIndex[index]);
    if S <= baseVals[index] then (baseVals[index], baseIndex[index]) := (S, i)
  end;
println(minLen);