```hack
function foo(x: int64): int64 {
  return x + 1;
}

function bar(x: int64): int64 {
  return foo(x) * 2;
}

function baz(x: int64): int64 {
  if (x == 0) {
    return 0;
  } else {
    return bar(x - 1);
  }
}

/* This should print 10 even with larger inputs */
$x = 3;
$y = baz($x);
echo $y;
$x = 1000;
$y = baz($x);
echo $y;
```