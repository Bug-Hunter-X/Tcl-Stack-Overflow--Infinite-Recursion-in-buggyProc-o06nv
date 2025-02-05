# Tcl Stack Overflow Bug

This repository demonstrates a common error in Tcl programming: stack overflow due to infinite recursion.

The `bug.tcl` file contains a procedure named `buggyProc` that exhibits this issue.  The `bugSolution.tcl` file provides a corrected version.

## Bug Description

The `buggyProc` procedure attempts to calculate a result recursively. However, the base case for recursion (when x is 1) is missing, causing the function to call itself infinitely, eventually resulting in a stack overflow error.  This is a classic example of a recursive function without a proper termination condition.

## How to Reproduce

1.  Run `bug.tcl` using a Tcl interpreter.
2. Observe the stack overflow error message.

## Solution

The solution, provided in `bugSolution.tcl`, adds a base case to stop recursion when `x` is 1. This modification prevents the infinite recursion, fixing the stack overflow error.