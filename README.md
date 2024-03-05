## Lullaby simulation project

For building this project, run:

```bash
cmake -S llvm/ -B build/ -GNinja \
-DLLVM_ENABLE_PROJECTS=clang -DCMAKE_INSTALL_PREFIX=../INSTALL/ -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_ASSERTIONS=On \
-DLLVM_TARGETS_TO_BUILD=X86 -DLLVM_INCLUDE_TESTS=OFF -DLLVM_INCLUDE_EXAMPLES=OFF -DLLVM_EXPERIMENTAL_TARGETS_TO_BUILD=Lullaby 
ninja -C build/ -j 4
```

For testing out, if `Lullaby` sim was built, type:

```bash
./build/bin/clang -print-targets
```

Output will be like:

```bash

  Registered Targets:
    lullaby - Lullaby 64
    x86     - 32-bit X86: Pentium-Pro and above
    x86-64  - 64-bit X86: EM64T and AMD64
```
