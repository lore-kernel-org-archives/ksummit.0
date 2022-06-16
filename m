From: Thorsten Leemhuis <linux@leemhuis.info>
Date: Thu, 16 Jun 2022 14:49:40 +0200
Subject: [Ksummit-discuss] [TECH TOPIC] Regression tracking & fixing:
 current state, problems, and next steps
Message-ID: <20a02cbc-c0d5-e6f9-93fa-c1bf7592cfab@leemhuis.info>

Hi all! I?d like to propose a session on my regression tracking efforts
for the kernel summit:

* I want to give a relative short "state of the union" overview about my
regression tracking efforts -- including a quick depiction of the (still
immature and rough) "regzbot", which handles some of the hard work for me.


* Outline and discuss oddities and problems in Linux development I
noticed during my regression tracking efforts. Among them:

 - How slow quite a few mainline regressions are resolved, as even
simple regression fixes sometimes linger in -next for weeks before being
mainlined. Sometimes they simply idle there until the next merge window.
 This especially happens often for regressions introduced in one cycle
but only found after that cycle ended.

   The recently added document
Documentation/process/handling-regressions.rst contains a section
explaining indirectly that this is unwanted. Is that enough to improve
things over time, if I and others prod developers when a fix is
progressing only slowly? Or is more than this needed?

 - Closely related to the previous point: is our workflow working well
enough when it comes to regressions in stable series caused by patches
recently merged to mainline and backported before it became known that
the change causes a regression? Should those patches maybe be reverted
in stable more often and reapplied later once a fix for the regression
was mainlined, as it sometimes takes quite a while to get them fixed
there (see above)? BTW: how should regzbot handle such regressions? Show
them for both mainline and stable?

 - The bugzilla.kernel.org situation: many reports for regressions (and
regular bugs, too) submitted there are not acted upon, often because the
report isn't sent to the appropriate maintainers/developers. Do we care?
Backstory:
https://lore.kernel.org/all/6808cd17-b48c-657d-de60-ef9d8bfa151e@leemhuis.info/
Noteworthy here is Konstantin?s "have an actual kernel developer be
responsible for managing bugzilla" comment in that threat:
https://lore.kernel.org/all/20220420163223.kz32qomzj3y4hjj5@nitro.local/
Side note: is this something that should be discussed separately? Or
something just for the maintainers summit?


* Outline and discuss problems I face during my regression tracking
efforts. Among them:

 - How do we want to deal with regression reports from CI systems?
Should I and regzbot start keeping an eye on those that seem to be legit
(and not just theoretical problems only test systems will find)? Or will
those that run CI systems ensure the regressions they find are fixed?

 - How developers sometimes make regression tracking unintentionally
hard. Most importantly: how do I make more developers add proper "Link:"
tags to their commit description to link to the report. I care, because
regzbot relies on them to connect reports for tracked regressions with
patches posted and committed to fix the particular regression.

   I quite a few time even had to argue that this tag is exactly for
this purpose (I recently updated the
Documentation/process/submitting-patches.rst and
Documentation/process/5.Posting.rst submitting-patches.rst to clarify
this), but many maintainers do not use them (side note: Linus really
wants them, too:
https://lore.kernel.org/lkml/CAHk-=wjPR+bj7P1O=MAQWXp0Mx2hHuNQ1acn6gS+mRo_kbo5Lg@mail.gmail.com/).
Should checkpatch.pl maybe warn if it sees a "Fixes:" tag without an
accompanying "Link:"? Sure, sometimes there is no dedicated report to
link to, but that's why it's just a warning people can ignore.

 - Should checkpatch.pl warn if developer instead of 'Link:' (which
regzbot relies on) use tags like 'BugLink:', 'References:' and a few
others that Linus afaics doesn't like (and right now are ignored by
regzbot):
https://lore.kernel.org/all/CAHk-=wgs38ZrfPvy=nOwVkVzjpM3VFU1zobP37Fwd_h9iAD5JQ@mail.gmail.com/

 - How should I handle low-quality or problematic reports (for example
with vendor kernels, outdated kernels, tainted kernels, ....) for
regressions that seems legit to me -- for example if the report is for a
relative fresh and untainted vendor kernel that is known to be nearly
vanilla? There are quite a few of those in bugzilla and some on the
lists as well. I fear maintainers will start to get annoyed by me if I
simply prod them with too many bad reports. That's why I sometimes ask
reporters to improve their report before forwarding the issue, but that
quickly turned into a big and annoying time-sink.

 - I see many mainline commits fixing regressions I never noticed, which
made me wonder: is it a problem that I apparently seem to not become
aware of many regressions reports? If the regression was fixed that
obviously is not a problem. But it always makes me wonder how many
regression reports are out there that were not addressed?


* Outline a new or planned features to make regression tracking with
regzbot more useful for developers and maintainers

* Discuss what developers would like me or regzbot to do to make
everyone's life easier or my regression tracking efforts more useful for
all of us.

FWIW, I plan to submit a session to the maintainers summit as well (a
mail about this will follow in a few minutes). The idea is to outline
what has been agreed on in this session and further discuss issues that
might need it (the bugzilla situation might be one of those).

Ciao, Thorsten
