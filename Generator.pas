##  var K := 1000;
    SeqGen(K, i -> Random(1,1000)).Prepend(K).Select(x -> x.ToString).WriteLines('27_DDD.txt');