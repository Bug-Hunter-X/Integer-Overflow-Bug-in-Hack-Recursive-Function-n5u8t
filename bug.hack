```hack
function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int): int {
  if (x == 0) {
    return 0;
  } else {
    return bar(x - 1);
  }
}

/* This should print 10. */
$x = 3;
$y = baz($x);
echo $y;
```