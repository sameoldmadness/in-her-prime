<?php

function nthPrime($n, $j = 2) {
	for ($i = 0; $i < $n; $j += 1)
		if (isPrime($j)) $i += 1;
	return $j - 1;
}

function isPrime($x) {
	for ($i = 2; $i < $x; $i++)
		if ($x % $i === 0) return false;
	return true;
}

echo nthPrime(10000);
