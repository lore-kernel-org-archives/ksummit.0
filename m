Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 42FE0D90
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 10:28:46 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [146.0.238.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 90FD56D6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 10:28:45 +0000 (UTC)
Date: Wed, 5 Sep 2018 12:28:39 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Jan Kara <jack@suse.cz>
In-Reply-To: <20180905081658.GB24902@quack2.suse.cz>
Message-ID: <alpine.DEB.2.21.1809051108220.1416@nanos.tec.linutronix.de>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
	<nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
	<20180905081658.GB24902@quack2.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Stable trees and release
 time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 5 Sep 2018, Jan Kara wrote:
> On Wed 05-09-18 08:48:03, Jiri Kosina wrote:
> > If this would be happening at smaller cadence, chances of people (original 
> > patch author, reviewers and maintainer) actually investing brain energy 
> > into evaluating whether particular patch is suitable for particular stable 
> > without introducing backporting regression would be much higher.
> 
> So I agree that with current amount of patches in stable tree, the review
> is cursory at best. However that does not really seem to be related to
> the frequency of stable releases (which is what I believe Laura complains
> about in this thread) but rather to the amount of patches going into
> stable.

Having a fixed schedule is not solving anything IMO. I won't have more time
to review stable patches than I have now.

And to be blunt, I actually do not look at anything which goes into dead
kernels at all. Right now I skim through the 4.14 stable patches, but I
really can't be bothered to look at something like 4.4 or even 3.16.

The whole speculation mess has shown, that backporting anything complex to
old kernels is a complete fail.

It's not only the meltdown/spectre mess which has been mostly caused by the
irresponsible secrecy mess which resulted in different distros getting
different patch sets for the same dead kernel from Intel.

The same problem persisted with L1TF. I've done the L1TF backports for 4.14
and spent quite some time on doing that, but my first attempt of doing so
for 4.9 made me run away screaming.

If you look at the whole picture then you have to take into account, that:

   1) The number of changes in Linus tree increases steadily and also the
      complexity of those changes increases. Substantial refactoring of
      subsystems is not an exceptional event. It happens all the time.

      As a consequence backporting becomes more complex as well and the
      farther you go back, the probability of introducing subtle bugs and
      regressions increases.

   2) The test coverage including fuzzers has increased enourmosly over the
      last couple of years and given the fact that even the increased
      coverage does not catch all regressions and new bugs between -rc1 and
      final, I seriously doubt that having the fixed weekly stable schedule
      will make a substantial difference.

   3) You'll never catch the weird corner cases of the oddball hardware
      people are using before a release. Even if you have that piece of
      hardware in your test rig, the user will trigger issues which you
      never can reproduce.

Aside of that we have limited resources in upstream review already, so no
matter whether you change the release frequency of stable or not, the
situation won't improve.

I totally agree that we want backports and stable kernels, but I really
have to ask whether backporting all the way back to the begin of the
universe makes any sense at all. I know that the enterprise folks still
believe that their frankenkernels are valuable and make sense, but given
the shit they rolled out this year, there is enough factual evidence that
this model is broken beyond repair.

We really have to sit down and ask ourself the question whether backporting
of complex changes all the way is the right thing to do. I rather have a
very stable and well tested/reviewed 4.14 LTS today than a gazillion of
half baken LTS variants.

So given the above I think it makes sense to think about a strict rolling
model and limit the LTS support to two years and even in the event of
something like meltdown/spectre/l1tf think hard whether backporting makes
sense in the first place or introduces more risks than what it fixes.

>From a product perspective, people really have to rethink what they are
doing. This technology is changing and evolving too fast for models which
were invented when semiconductors were guaranteed to be available for 20
years and the change rate in technology was comparable to snail mail. The
illusion to support a product for 20 years with software from 20 years ago
has been destroyed long ago, but still people cling to it for any price.

The whole 'we can't change the version number' QA argument is complete and
utter bullshit especially given the fact, that after 2 years these so
called stable versions have absolutely nothing to do with the version they
are allegedly based on.

In fact, from a maintainability and also quality POV, lots of effort should
be put into stabilizing an LTS from the day it is selected. So if massive
changes need to be made after a year, then switching over to a well tested
and QA'ed code base in order to avoid backport complexity hell becomes a no
brainer decision. IOW, in the light of meltdown/spectre all effort
should have been put into getting 4.14 and 4.9 fixed instead of diverting
our very limited capcity to create monstrosities back to 2.6 variants.

The upstream development model was changed to rolling releases over a
decade ago after the 2.5 disaster to accomodate with the technology
churn. It has been the right decision. Now we really should make the next
step and switch upstream to a strict rolling 2 years LTS model instead of
supporting the kernel necrophilia cult forever.

I surely know that this will hurt the out of tree mess of vendors who fail
to get their act together, but I've seen a lot of these out of tree kernels
and getting security updates is the least of their worries. In fact many of
them do not even follow the LTS releases in a timely and responsible way.

Thanks,

	tglx
