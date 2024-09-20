# 形式化定理证明与Lean4交互式定理证明器

## Lean4——既是一门纯函数式编程语言，又是一个基于依值类型论（Dependent Type Theory）的交互式定理证明器

DT与集合论相同，都是一套形式逻辑系统。但类型论与集合论不同的是，集合论需要一阶逻辑作为基础，而类型论只需要一系列推导规则即可使用。

类型论有许多具体的系统，比如简单（λ1 一阶）类型论，λ2 二阶类型论（terms dependent on types），λω 高阶类型论（types dependent on types, types dependent on terms）。同时实现了这4种依赖的系统也被称为λ cube。

Lean4的类型系统实际上远比DT要更为复杂，包含了归纳类型（inductive types），宇宙层级（hierarchy of universes）等，这里不再赘述。感兴趣可查看reference中的“Lean中的类型论”。

我们试举一例来观察二阶类型论系统：Lean4中的多态函数，求长度。

## 为什么计算机能进行定理证明？——Curry-Howard同构

命题即类型，证明即程序。(proofs-as-programs, propositions-as-types)

## 一些有用的链接和reference

[Lean官网](https://lean-lang.org/)

[证明中用到的mathlib4](https://github.com/leanprover-community/mathlib4)

[本定理在mathlib4中的位置和名称](https://github.com/leanprover-community/mathlib4)

[glean (遇到网络问题时可用的elan与lean下载器)](https://github.com/alissa-tung/glean)

[Lean中的类型论](https://github.com/digama0/lean-type-theory/releases/tag/v1.0)

[本次展示用到的代码](https://github.com/lunaticabs/graph-theorylesson)

[计算机协会编程语言理论组编写的形式化科学和类型论入门指南](https://theory.know-cnu.wiki/tt.html)

《Type Theory and Formal Proof : An Introduction》类型论入门书籍

