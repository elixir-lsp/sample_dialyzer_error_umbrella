# DialyzerError.Umbrella

If you open `apps/dialyzer_error/lib/a.ex` in an editor running ElixirLS and wait for Dialyzer to finish running, then you should see the following errors:

```
 a.ex       2   3 warning         Function fun/0 has no local return. (lsp)
 a.ex       4   5 warning         The pattern can never match the type.

 Pattern:
 :ok

 Type:
 :error
```
