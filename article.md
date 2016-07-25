---
title: The ReScience Journal
subtitle: Reproducible Science is Good, Replicated Science is Better.
author:
  - name: Nicolas P. Rougier
    affiliation: 1
  - name: Konrad Hinsen
    affiliation: 2
  - name: Georgios Is. Detorakis
    affiliation: 3
  - name: Benoît Girard
    affiliation: 3
  - name: Olivia Guest
    affiliation: 3
  - name: Mehdi Khamsassi
    affiliation: 3
  - name: Julien Vitay
    affiliation: 3
  - name: Joseph Stachelek
    affiliation: 3
  - name: Timothée Poisot
    affiliation: 3
  - name: Yoav Ram
    affiliation: 3
address:
  - code:    1
    address: INRIA Bordeaux Sud-Ouest, Talence, France.
  - code:    2
    address: Centre de Biophysique Moleculaire, CNRS, Orleans, France
  - code:    3
    address: Fill your affiliation with proper code...
contact:
  - Nicolas.Rougier@inria.fr
abstract: |
  ReScience is a peer-reviewed journal that target computational research and
  encourage the explicit replication of already published research promoting
  new and open-source implementations in order to ensure the original research
  is replicable. To achieve such a goal, the whole editing chain is radically
  different from any other traditional scientific journal. ReScience lives
  mainly on github where each new implementation is made available together
  with the comments, explanations and tests. Each submission takes the form of
  a pull request that is publicly reviewed and tested in order to guarantee any
  researcher can re-use it.
---


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
problem, they investigated the availibility of the code and data, and *the
extent to which this code would actually build with reasonable effort*. The
results were dramatic. On the 515 potentially reproducible papers (out of 613)
targeted by the study, authors managed to ultimately run only 102 of them. Less
than 20%. And it is to be underlined that authors only studied the possibility
to run the code. They did not even check for the correctness of the code (does
the code actually implements what is advertised in the paper) nor the
replicability of the results (does the run lead to the same results as in the
paper).  @topalidou:2015:a encountered the same problem when they tried to
replicate a model from the computational neuroscience litterature: source code
were not part of the supplementary section of the paper and no link nor
repository were given in the main text. When they finally get their hands on
the code (after contacting the corresponding author), it was only to realize it
cannot be compiled and was mostly unusable.

Faced with such a reality, a growing number of journal and publisher have
adopted data and software policies in order to guarantee their availability in
a proper format (a.k.a. usable) at the time of publication, even though this
does not guarantee their quality nor their correctness. But things are starting
to change with a growing litterature on best practices for making code
reproducible and correct *from the start and not as an after thought*
[@sandve:2013, @crook:2013, @wilson:2014, @halchenko:2015, @janz:2015, @hinsen:2015]
to paraphrase @halchenko:2015. There are also original initiative such as
software and data carpentry [@wilson:2016] whose goal is *to make scientists
more productive, and their work more reliable, by teaching them basic computing
skills*. None of this solve the problem of long-term preservation of code and
data but the newly started software heritage initiative[^1] that aim at
collecting and preserving software in source code form might solve the problem
in the long-term. Obviously, best practices could be as well applied to already
published research software or code, provided the original author(s) is willing
to take the challenge of reimplementing his/her own software for the sake of
Science; which is unlikely because unfortunately, the incentives for doing such
a time-consuming task are low or inexistent. Furthermore, if the original
author did some mistake in his/her original implementation, chances are that
he/she'll reproduce the same mistake over and over again (just an educated
guess, we have no data supporting this assertion). At this point, the question
is what do we do? Do we have to declare the research to be lost once and for
all because the associated software or code is nowhere to be found / lost /
damaged / malfunctionning / not runnable / not usable / does not give original
results / etc. We would doom ourselves by doing so and some people are actually
willing to replicate computational research because they are interested in the
original results for various reasons. But if those researchers write a brand
new open source implementation, chances are this new implementation may also
interest a lot of other people. The question is thus, where do you advertise or
publish such replication? As you may have guessed by now, this was the main
motivation for the creation of the ReScience journal[^2].


Motivation for replication
===============================================================================

It has been said many times by many authors in the litterature that
reproducibility is the cornerstone of Science and we, as a scientific
community, should aim at such reproducibility. However, good intention are not
sufficient and a given computational results can be declared reproducible if
and only if it has been actually replicated in a the sense of a brand new
open-source and documented implementation. As explained before, writing such
replication might be a daunting taks that is not really rewarded and we may
thus wondered what could be the motivation for doing so ? Such motivations are
indeed diverse and range from the simple student who want to train oneself in
order to get familiar with a specific scientific domain up to the senior
researcher that has a critical need of a specific piece of code:

**@stachelek:2016**: I was motivated to replicate the results of the original
paper because I feel that working through code supplements to blog posts has
really helped me learn how to science. I could have published my replication as
a blog post but I wanted the exposure and permanency that goes along with
journal articles. This was my first experience with formal replication. I think
the review was useful because it forced me to consider how the replication
would be used by people other than myself. I have not yet experienced any new
interactions following publication. However, I did notify the author of the
original implementation about the replication's publication. I think this may
lead to future correspondence. The original author suggested that he would
consider submitting his own replications to ReScience in the future.

**@topalidou:2015:b**: Our initial motivation and the main reason for
replicating the model is that we needed it in order to collaborate with our
neurobiologist colleagues. When we arrived in our new lab, the model has
just been published (2013) but the original author left the lab a few
months before our arrival. And of course, there were no public repository,
no version control and the paper describing the model was incomplete and
partly inaccurate. In the end, we get our hands on the original sources
(6,000 lines of Delphi) only to realize we could not compile them. It took
us three months to replicate it using 250 lines of Python. But at this
time, there were no place to publish this kind of replication and share the
new code with colleagues. Since then, we have refined the model and made
new predictions that have been confirmed. Our initial replication effort
really gave the model a second life.

**@viejo:2016**: Replicating previous work is a relatively routine task
every time we want to build a new model: either because we want to build on
it, or because we want to compare to it. We also give replication tasks to
M.Sc. students every year, as projects. In all these cases, we are
confronted to incomplete or inaccurate model descriptions, as well as to
the impossibility to obtain the original results. Contacting the original
authors sometimes solves the problem, but not so often (because of the "dog
ate my hard drive" syndrom). We thus accumulate knowledge, internal to the
lab, about which model work, which doesn't, and how a given model has to be
parameterized to really work. Without any place to publish it, this
knowledge is wasted. Publishing it in ReScience, opening the discussion
publicly, will be a progress for all of us.

ReScience already published 4 articles and as shown above, the original
motivations of these authors are all different and this might become even more
obvious and diverse with future publications. But, beyond these motivations,
publishing in ReScience may be especially important for students since this
represent a unique opportunity to show the community a given student is able to
read a scientific article, to have a deep understanding of it, to write a new
implementation and to eventually write a scientific article describing his/her
work. Although the ReScience publishing model is a bit different from other
academic journals, it can give students a first experience at peer-reviewed
scholarly publishing, including meeting standards of scientific rigor and
addressing reviewers' comments. Furthermore, publishing in ReScience is a way
to actively contribute to open science while adding to one's publication
record.


The editorial process
===============================================================================

The second specificity of the ReScience journal is its publishing chain that is
radically different from any other traditional scientific journals since
ReScience lives on GitHub[^3]. Each submission takes the form of a pull request
(PR) that is first considered by a member of the editorial board, who may
decide to reject the submission (mainly because it has already been replicated
and is publicly available), or assign it to two reviewers for further review
and tests. The reviewers evaluate the code and the accompanying material in
continuous interaction with the authors through the PR discussion section. If
both reviewers managed to run the code and obtain the same results as the ones
advertised in the accompanying material, the submission is accepted. To be
considered for publication in ReScience, any given submission must satisfy the
following criteria:

* Replicability
* Rigorous methodology
* Original source code
* Substantial evidence for replication of the original results

Furthermore, an author cannot submit a replication of his/her own research, nor
the research of close collaborators. Mistakes in the implementation of research
questions and methods are often due to biases authors invariably have,
consciously or not. One's biases will inevitably carry over to how one
approaches a replication. Perhaps even more importantly, we aim at the
cross-fertilization of research and trying to replicate the work of one’s peers
might pave the way for a future collaboration, or may give rise to new ideas as
a result of the replication effort.

The main criterion for acceptation is the actual replication of the research
with a clear statement by the authors explaining why they think they have
replicated the paper (same figures, same graphics, same behavior,
etc.). However, the clarity of the code is an important criterion because
uncommented or obfuscated code is as bad as no code at all. A code without the
accompanying article is also a criterion for rejection since we’re not human
compilers (well not all of us at least). The role of the reviewer is thus to
ensure the proposed submission is actually replicable. This means:

* One should be able to run the proposed implementation on your computer
* One should obtain the same results as indicated in the accompanying paper
* These results must correspond to the original paper

The goal of the review is to help the author to meet ReScience quality
standards. More specifically, since ReScience targets replication of original
research, there is no need to judge the relevance or novelty of the
research. The review should really concentrate on how easy it would be for
another researcher to run the proposed implementation. This should be viewed in
light of the standards in the field. If a given tool/library/software is
mainstream in a field, it is ok to use them, but if a brand new standalone
implementation is proposed, this must not rejected on this criterion.

[^1]: [https://www.softwareheritage.org/](https://www.softwareheritage.org/)
[^2]: [https://rescience.github.io](https://rescience.github.io)
[^3]: [https://github.com](https://github.com)


Conclusion
===============================================================================


The ReScience editorial board unites scientists who are committed to the open
source community. They are experienced developers who are familiar with the
GitHub ecosystem and specialised in a specific domain of science and proficient
in several programming languages and/or environments.

* New (open source) code  
  → new collaboration, new horizon, new results
* The added value is the article  
  → Original article + ReScience article should be sufficient for future
  replication
* What about failed replication ?  
  → See http://rescience.github.io/faq/
* Expanding the model (the CoScience journal?)  
  → Instead of post-reproduction, publish articles including independent
    replication

References
===============================================================================
