# lxml

<img src="resources/images/recurly-logo-small.png" />

*An LFE XML-parsing wrapper for erlsom, with utility functions*

Note that for genereating XML in LFE (using S-expressions), we recommend
[exemplar](https://github.com/lfex/exemplar). The intended use for lxml is
the *parsing* of XML documents.

## Table of Contents

* [Introduction](#introduction-)
  * [About lxml](#about-lxml-)
* [Installation](#installation-)
* [Usage](#usage-)


## Introduction [&#x219F;](#table-of-contents)

### About lxml [&#x219F;](#table-of-contents)

TBD

### The LFE Client Library [&#x219F;](#table-of-contents)

TBD

## Installation [&#x219F;](#table-of-contents)

Just add it to your ``rebar.config`` deps:

```erlang
  {deps, [
    ...
    {rcrly, ".*",
      {git, "git@github.com:oubiwann/lxml.git", "master"}}
      ]}.
```

Or, if you use ``lfe.config``:

```lisp
#(project (#(deps (#("oubiwann/lxml" "master")))))
```

And then do the usual:

```bash
    $ make get-deps
    $ make compile
```


## Usage [&#x219F;](#table-of-contents)

Usage information is provided on the [documentation site](http://oubiwann.github.io/lxml/).
