# Dependency check failure

`moon check` fails while checking dependency `illusory0x0/native`.

I tried `moon add illusory0x0/native` as requested, but the dependency stayed at `0.2.1` and the same error still blocks the check.

Error summary:

```text
failed: moonc check ... .mooncakes/illusory0x0/native/src/types.mbt ...
Error: [3002]
.mooncakes/illusory0x0/native/src/types.mbt:14:11
type CStr ConstPtr[Byte]
          ^^^^^^^^
Parse error, unexpected token id (uppercase start), you may expect `;`, `end of file` or derive.
```

Because the failure is inside `.mooncakes/illusory0x0/native`, I stopped before fixing repository warnings.
