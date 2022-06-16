From: Thorsten Leemhuis <linux@leemhuis.info>
Date: Thu, 16 Jun 2022 14:52:07 +0200
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] Regression tracking &
 fixing: current state, problems, and next steps
Message-ID: <6223a720-c835-d841-eb1d-e090875a3a91@leemhuis.info>

This session is meant to complement the kernel summit session with the
same title I just submitted separately
(https://lists.linuxfoundation.org/pipermail/ksummit-discuss/2022-June/007339.html
). The idea is to summarize in this session what has been discussed and
agreed on in that ksummit session and further discuss issues that need
further discussion.

I used a similar model in 2017 and it seems it worked well for everyone.
What exactly will be discussed in this sessions depends on how the
kernel summit session evolves, but I expect the following topics might
need further discussion among the core maintainers (for details on any
of these points please see the kernel summit submission linked above):

 * How slow quite a few mainline regressions are resolved, as even
simple regression fixes sometimes linger in -next for weeks before being
mainlined.

 * Do we care that some regressions (and many bugs) reported in
bugzilla.kernel.org are never forwarded to the maintainers? And if so,
what do we want to do about it? I tried to keep an eye on things, but
that's sometimes quite time-consuming.

 * Should I track all or some regression with regzbot that were reported
by CI systems?

 * open question: Am I holding this regression tracking thingy right or
do you want me to do it differently somehow? Or is there anything else I
can do to make my regression tracking efforts more useful for maintainers?

Ciao, Thorsten
