# woRkflow

How we do collaborative reproducible data analysis and reporting. Mostly (but not only) using R. Inspired by [@AlexaLFH](https://twitter.com/AlexaLFH/status/1261633918782013440).

This repo does three things:

 * it is a collection of R [how-to resources](resources.md) including some notes on:
   * how to [use git branches](gitBranches.md) 
   * how to use [drake](https://docs.ropensci.org/drake/) to massively speed up and [manage your workflow](https://milesmcbain.xyz/the-drake-post/)
 * it is a [template](repoAsATemplate.md) repo that illustrates how we work and which you can copy;
 * it is an R package that you can build if you want to using 'install and restart' from the RStudio Build menu. If you do you will then be able to use its functions viz: `woRkflow::functionName()` (not that it has many).

If you want to [contribute to the repo](CONTRIBUTING.md), or like how we work and want to use it as a template for your project or package, just [fork and go](https://happygitwithr.com/fork-and-clone.html).
