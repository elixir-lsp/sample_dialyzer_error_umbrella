# DialyzerError.Umbrella

If you open `apps/dialyzer_error/lib/a.ex` in an editor running ElixirLS and wait for the first build to finish running, then you should see the following error:

```
`
 b.ex       5   3 error           (SyntaxError) unexpected token: end. The "(" at line 4 is missing terminator ")"

 Stacktrace:
   │ (elixir 1.10.2) lib/kernel/parallel_compiler.ex:304: anonymous fn/4 in Kernel.ParallelCompiler.spawn_workers/7 (lsp)
```
