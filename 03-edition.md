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

[^3]: [https://github.com](https://github.com)
