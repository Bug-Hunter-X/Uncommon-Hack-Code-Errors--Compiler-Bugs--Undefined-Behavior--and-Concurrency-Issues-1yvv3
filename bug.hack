function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int): int {
  return bar(x) - 1;
}

function main(): void {
  var x = 10;
  var y = baz(x);
  echo y; // Expected output: 21
}

This code looks correct and should produce the expected output. However, if the compiler or runtime environment has a bug, it might produce an incorrect result. For example, the compiler might not correctly handle function calls or arithmetic operations.

Another type of bug can occur if the program relies on undefined behavior. For example, if the program attempts to access memory outside of its allocated space, the result will be undefined and can cause unpredictable behavior.

Lastly, concurrency issues can introduce subtle bugs. For example, if two functions concurrently modify the same variable, the result will depend on the order in which the modifications occur, and this may lead to incorrect results. This is especially relevant in multithreaded or asynchronous programs.  These concurrency bugs are often difficult to reproduce and debug.