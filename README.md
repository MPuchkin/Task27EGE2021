# Task27EGE2021
Решение одной из задач 27 из ЕГЭ 2021 по информатике на PascalABC.NET
## Условие задачи
Дана последовательность положительных целых чисел. Необходимо найти непрерывную подпоследовательность элементов с максимальной суммой, делящейся на заданное число K (в коде - 89). Если таких подпоследовательностей в исходной последовательности несколько, то выбрать ту, длина которой минимальна. В качестве ответа выдать длину найденной подпоследовательности. Исходные данные представлены в виде текстового файла, первая строка - количество элементов (N), далее в N строках – элементы последовательности, по одному в строке.
## Файлы
Generator.pas – генератор исходных файлов для задачи.
BruteForce.pas – перебор "в лоб", для каких-то входных данных даже может что-то посчитать.
PartialSums.pas – вменяемое решение, на основе частичных сумм. Собственно алгоритм работает примерно на порядок быстрее чтения из файла, на 10М элементов – 2 секунды на чтение файла, и 0.2 на нахождение ответа. А ваш Python так могёт?
