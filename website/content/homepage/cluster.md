---
title: "Cluster Analysis"
weight: 3
header_menu: false
---

Here, we use an unsupervised clustering technique introduced by [Eder (2017)](https://academic.oup.com/dsh/article/32/1/50/2957386) called ‘bootstrap consensus trees’. This technique considers the closeness of all the corpus texts to each other, and arranges them in 2D, also highlighting the strongest relationships between texts. This provides a _qualitative_ visualisation, which is very useful for two reasons. Primarily, the positions and relationships convey a great deal of multi-dimensional information simultaneously in an intuitive (once one has had a little practice) visual format. Secondly, but also crucial, the method can be used as a general check to determine how well the texts are separated using the given features—in other words, how different, really are Propertius and Tibullus in, e.g. the way they use language?

#### Lexico-Grammatical Style

The lexico-grammatical analysis shows strong clustering by author, but also a clearly visible gulf of empty space between the Tristia and Ex Ponto, and the rest of the corpus. This is an expected result of the effect of genre. For Ovidian works, the _Heroides_ cluster as a broad unit, while the _Amores_ are more dispersed (consistent with the extended period of their composition and probable later revision). The _Nux_ position is not particularly revealing, but it falls between the double _Heroides_ and the _Tristia_/_Ex Ponto_ cluster. The _Consolatio_ points fall essentially in the gulf between Propertius and Ovid, with the _Ibis_ and _Medicamina_ seeming more concretely Ovidian.

![Lexical Cluster Analysis](images/bct_ngram_web.jpg)

#### Poetic Style

The cluster analysis is more exciting when applied to the poetic features. This is also expected, and was seen in earlier work [(Nagy [2023])](https://academic.oup.com/dsh/article-abstract/38/3/1183/6987001)—it seems logical that the authorial signal of Latin elegists can be seen more clearly in their pure metrics than when glimpsed dimly behind the competing effects of word-choice and genre. In the poetic clustering, Tibullus, Propertius, and Ovid separate very cleanly (although not completely perfectly—these are poets who knew and interacted with each other and with each others’ work). We can also see, again, the diachronic differences in the style of Propertius and Ovid, and, again, Ovid’s ‘early’ (_Amores_, single _Heroides_) and ‘late’ (_Tristia_, _Ex Ponto_, _Ibis_, double _Heroides_) styles. Here, the _Nux_ falls exactly where we expect; it lies close to the _Ibis_, the double _Heroides_ and in the general cloud of depression delineated by the _Tristia_ and _Ex Ponto_. The _Medicamina_, as expected, lies in the region of the early works, and the _Consolatio_ is again in a kind of empty gulf.

![Poetic Cluster Analysis](images/bct_poet_web.jpg)

