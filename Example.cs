using System;
using System.Runtime.InteropServices;

namespace hello_ada;
public class Class1
{
  [UnmanagedCallersOnly(EntryPoint = "add")]
  public static int Add(int left, int right)
  {
    return left + right;
  }
}
