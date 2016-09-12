Introduction
===============================================================================

There is a replication crisis in Science. It has been recently highlighted in
medicine [@ioannidis:2005], in psychology [@nosek:2015], in political sciences
[@janz:2015] and even more recently in biomedical sciences [@iqbal:2016]. The
reasons for such non-reproducibility are as diverse as these domains can be. In
medicine, the *study power and bias, the number of other studies on the same
question, and, importantly, the ratio of true to no relationships among the
relationships probed in each scientific field* are important criterion as
reported by @ioannidis:2005. In psychology, the infamous p-value seems to be
the root of all evil while in biomedical sciences, @iqbal:2016 identified a
*lack of access to full datasets and detailed protocols for both clinical and
non-clinical biomedical investigation*. Surprisingly enough, computational
sciences (in the broad sense) and computer sciences are no exception even
though they rely mostly on code and data that are assumed to be not prone to
the aforementioned problems. But reality is quite different though. When
[@collberg:2014; @collberg:2015] decided to measure precisely the extent of the
problem, they investigated the availability of the code and data, and *the
extent to which this code would actually build with reasonable effort*. The
results were dramatic. On the 515 potentially reproducible papers (out of 613)
targeted by the study, authors managed to ultimately run only 102 of them. Less
than 20%. And it is to be underlined that authors only studied the possibility
to run the code. They did not even check for the correctness of the code (does
the code actually implements what is advertised in the paper) nor the
replicability of the results (does the run lead to the same results as in the
paper).  @topalidou:2015:a encountered the same problem when they tried to
replicate a model from the computational neuroscience literature: source code
were not part of the supplementary section of the paper and no link nor
repository were given in the main text. When they finally get their hands on
the code (after contacting the corresponding author), it was only to realize it
cannot be compiled and was mostly unusable.

Faced with such a reality, a growing number of journals and publishers have
adopted data and software policies in order to guarantee their availability in
a proper format (a.k.a. usable) at the time of publication, even though this
does not guarantee their quality nor their correctness. But things are starting
to change with a growing literature on best practices for making code
reproducible and correct *from the start and not as an after thought*
[@sandve:2013, @crook:2013, @wilson:2014, @halchenko:2015, @janz:2015, @hinsen:2015]
to paraphrase @halchenko:2015. There are also original initiatives such as
software and data carpentry [@wilson:2016] whose goal is *to make scientists
more productive, and their work more reliable, by teaching them basic computing
skills*. None of these solve the problem of long-term preservation of code and
data but the newly started software heritage initiative[^1] that aims to
collect and preserve software in source code form might solve the problem
in the long-term. Obviously, best practices could also be applied to already
published research software or code, provided the original authors are willing
to take the challenge of reimplementing their own software for the sake of
Science. This is unlikely because unfortunately, the incentives for doing such
a time-consuming task are low or nonexistent. Furthermore, if the original
author did some mistake in their original implementation, chances are that
they will reproduce the same mistake over and over again (just an educated
guess, we have no data supporting this assertion). At this point, the question
is what do we do? Do we have to declare the research to be lost once and for
all because the associated software or code is nowhere to be found / lost /
damaged / malfunctioning / not runnable / not usable / does not give original
results / etc. We would doom ourselves by doing so and some people are actually
willing to replicate computational research because they are interested in the
original results for various reasons. But if those researchers write a brand
new open source implementation, chances are this new implementation may also
interest a lot of other people. The question is thus, where do you advertise or
publish such replication? As you may have guessed by now, this was the main
motivation for the creation of the ReScience journal[^2].


[^1]: [https://www.softwareheritage.org/](https://www.softwareheritage.org/)
[^2]: [https://rescience.github.io](https://rescience.github.io)
