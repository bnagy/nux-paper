---
title: "Bootstrap Distance Imposters"
header_menu_title: "Imposters"
navigation_menu_title: "Imposters"
weight: 4
header_menu: false
---

Here we adapted and expanded work by Kestemont et al. on a method that is gaining acceptance as a ‘standard technique’ in computational stylometry, called ‘General Imposters’ [fn inc. modification based on Potha Stamatatos (2020)]. General Imposters is a *quantitative* method that works by comparing a question text to a set of candidate texts (texts by the proposed author) and a set of imposter texts (texts with similar characteristics, but not by the proposed author). Using a statistical technique called ‘bootstrapping’ (essentially repeated random sampling) it will show whether the question text is statistically closer to the candidate author than to the imposters. If the question text is, in fact, by a completely different author (neither the candidate nor one of the imposters) then there would be no statistical difference. My modifications to the method allow us to visualise the distribution of these differences, instead of recording a single summary statistic.

#### Lexico-Grammatical Style

On the lexico-grammatical side, the method, as originally designed, reports with ‘100% confidence’ that all of the problem texts are Ovidian. Or, rather, it reports that they are all significantly more like Ovid than they are like any of the imposters. Note that for the lexico-grammatical analysis, because metre was not being considered, we included two hundred random snippets from several other  imposter authors, including Vergil, Horace, Silius, Valerius Flaccus, Juvenal, and Statius. What does this result mean for the Consolatio? Here the expanded analysis allows us to see more than simply ‘yes or no’. Actually, the Medicamina is the worst Ovidian match of the problem works, which is not surprising due to its atypical subject and array of technical terminology. The Nux and the ‘middle’ of the Ibis are the best matches, with the Consolatio being very consistent throughout its length. Essentially, whoever wrote the Consolatio did, in statistical terms, a very good job of imitating Ovidian diction. For the Nux it simply shows, again, that in terms of language, as Kenney would say, ‘nihil obstat’. There is nothing to suggest it is not Ovidian.

![Lexical Bootstrap Analysis](../images/bootstrap_lexical_web.jpg)

#### Poetic Style

For the poetic analysis, it is more interesting. Here, all of the problem works are solidly Ovidian except for the Consolatio. The uncertainty of the method can be seen by how much mass of the result curve lies to the left of the zero line (this would be, in frequentist statistics, called a ‘bootstrap p-value’). For the Nux the uncertainty is about 2%. For the last section of Ibis (the most unusual) the uncertainty is about 9%. The Consolatio, however, is not strongly Ovidian at all (17–57%), in fact my statistical interpretation of the results would be that the scenario with the best support is ‘none of the above’ (not by Ovid, nor by any of the imposter authors). Here, we see clearly that the poetic bootstrap analysis can distinguish imitatio / forgery from genuine Ovidian works, even very good imitations (the Consolatio was believed for many years to be Ovidian). Of course this is not proof-positive that the Nux is genuine, but it does tell us that if it is an imitation then it is, both in terms of Ovidian language and in terms of Ovidian metrics, a much better imitation than the Consolatio (in fact, it is a ‘better match’ to Ovidian style than many unquestionably genuine works, but this counter-intuitive fact is not a surprise to a statistician—style varies, and our units of analysis are small).

![Poetic Bootstrap Analysis](../images/bootstrap_poetics_web.jpg)
