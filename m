Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 31657268
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 26 Jul 2015 00:16:10 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
	[217.70.183.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EA4DC79
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 26 Jul 2015 00:16:08 +0000 (UTC)
Date: Sat, 25 Jul 2015 17:16:00 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20150726001600.GA19810@x>
References: <1489458.8WDRattPkl@vostro.rjw.lan>
	<2425484.kWOCROb332@vostro.rjw.lan> <20150725195016.GB9753@x>
	<3566742.dUiIOvU9qh@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3566742.dUiIOvU9qh@vostro.rjw.lan>
Cc: "Brown, Len" <len.brown@intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Kristen Carlson Accardi <kristen@linux.intel.com>,
	Grant Likely <grant.likely@linaro.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] System-wide interface to specify
 the level of PM tuning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Jul 26, 2015 at 02:03:55AM +0200, Rafael J. Wysocki wrote:
> On Saturday, July 25, 2015 12:50:16 PM Josh Triplett wrote:
> > On Sat, Jul 25, 2015 at 12:36:18AM +0200, Rafael J. Wysocki wrote:
> > > On Wednesday, July 22, 2015 11:25:19 AM josh@joshtriplett.org wrote:
> > > > On Wed, Jul 22, 2015 at 07:25:40PM +0200, Rafael J. Wysocki wrote:
> > > > > On Wednesday, July 22, 2015 09:18:34 AM Daniel Vetter wrote:
> > > > > > On Wed, Jul 22, 2015 at 3:12 AM, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
> > > > > > > On Tuesday, July 21, 2015 01:09:52 AM Daniel Vetter wrote:
> > > > > > >> On Tue, Jul 21, 2015 at 12:21 AM, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
> > > > > > >> > On Friday, July 17, 2015 01:41:56 PM Daniel Vetter wrote:
> > > > > > >> >> On Thu, Jul 16, 2015 at 5:58 PM, Greg KH <greg@kroah.com> wrote:
> > > > > > >> >> > On Thu, Jul 16, 2015 at 08:53:02AM -0700, Josh Triplett wrote:
> > > > > > >> >> >> But the kernel already has quirk tables for various hardware, and that
> > > > > > >> >> >> seems appropriate to continue putting in the kernel.
> > > > > > >> >> >
> > > > > > >> >> > For some types of devices, sure.  For others, like broken USB keyboards
> > > > > > >> >> > that can't handle autosuspend, no.  For those we need a userspace
> > > > > > >> >> > _whitelist_ that udev can use.  So there's no one answer that works for
> > > > > > >> >> > all types of quirks.
> > > > > > >> >>
> > > > > > >> >> Whether white or blacklist or some other mixed thing doesn't really
> > > > > > >> >> matter. Imo the important part is that driver maintainers are in the
> > > > > > >> >> best position to maintain that, and pushing it out to anyone else is
> > > > > > >> >> just really not doing our jobs. And I think for most of these quirk
> > > > > > >> >> lists the kernel does seem like the most appropriate place. If the
> > > > > > >> >> list becomes giantic then we can move it to userspace (if that's
> > > > > > >> >> really a problem, afaik no one proposed yet to move device match
> > > > > > >> >> tables into userspace either and that's kinda the same thing really).
> > > > > > >> >> But as long as there's no white/black/whatever list yet starting in
> > > > > > >> >> the kernel is imo the right place.
> > > > > > >> >
> > > > > > >> > Well, I'm wondering, then, why i915.enable_psr is not enabled by default,
> > > > > > >> > for one example?
> > > > > > >> >
> > > > > > >> > Failing to enable it prevents some SoCs from using the deepest available
> > > > > > >> > C-states which in turn hurts battery life of the systems containing them
> > > > > > >> > quite a bit, so there surely is a reason to have it enabled.
> > > > > > >>
> > > > > > >> Because it's broken on a lot of machines, and it takes a pile of
> > > > > > >> effort to fix it.
> > > > > > >
> > > > > > > And there are quite a few subsystems having similar issues here and there.
> > > > > > >
> > > > > > > People who aren't aware of those command line/Kconfig/sysfs switches will
> > > > > > > never enable those features even though they may work well on their
> > > > > > > machines and may actually be necessary to save energy.
> > > > > > 
> > > > > > In my experience there's way too many people around who know about
> > > > > > these knobs but have no idea that they might be somewhat dangerous.
> > > > > > And then I get another bug report about a known bug just because
> > > > > > someone read a blog somewhere. Nowadays almost all i915 tuning knobs
> > > > > > are marked as _unsafe and taint your kernel if you touch them.
> > > > > > 
> > > > > > >> That work is under way now, but for a long time
> > > > > > >> priorities set by management where much more set on chasing the next
> > > > > > >> shiny thing. Took a few years of making noises about dropping it all
> > > > > > >> if it doesn't get fixed.
> > > > > > >>
> > > > > > >> This is actually a perfect example of what I mean with "hey it works
> > > > > > >> on my machine here, but I can't be bothered to fix up the corner-cases
> > > > > > >> so let's keep it disabled and move on". And the corner cases are hung
> > > > > > >> machines and frozen displays (and a few other things), and we
> > > > > > >> inflicted that a few times on Linus even.
> > > > > > >
> > > > > > > So among other things this topic is about a mechanism to possibly enable
> > > > > > > multiple things like that in one go instead of having to switch multiple
> > > > > > > knobs in various places (and needing to know about them in the first
> > > > > > > place).
> > > > > > 
> > > > > > I know, but at least for i915 I don't want it: When we know it's safe
> > > > > > to do we already enable all the power/performance tuning we have, and
> > > > > > if we know it's unsafe we don't want users to enable it themselves. If
> > > > > > you have a very specific product (which is not a generic distro or
> > > > > > anything) and have done careful testing and cross-checked with
> > > > > > developers then you can of course just enable these features. But then
> > > > > > you also don't need a new option, you can just change the driver
> > > > > > defaults directly.
> > > > > 
> > > > > OK
> > > > > 
> > > > > So perhaps the question should be whether or not there is any viable approach
> > > > > we can use to avoid or at least reduce the amount of all of the mostly manual
> > > > > tuning to get as much battery life from systems as they can provide.  And that
> > > > > cannot involve user space realistically, because some variants of it may just
> > > > > not do whatever we expect them to do.
> > > > 
> > > > Tunables like those in i915 aren't going to be able to use any better
> > > > approach, specifically because they don't work everywhere; if we had a
> > > > list of systems they were safe on, we'd set up a quirk list and turn
> > > > them on by default.  Do we have any tunables that *aren't* in that
> > > > category?
> > > 
> > > I really don't think so, maybe except for some corner things.
> > > 
> > > > And if so, why don't we just set their defaults to DTRT?
> > > 
> > > But we seem to have more and more tunables for things that "don't work
> > > everywhere", while at the same time the subset of systems where they *do* work
> > > is quite substantial.
> > > 
> > > In many cases we simply don't have enough information to create a black or white
> > > list for them, so we disable them by default and add a tunable to enable them
> > > "in case someone needs" them.  This bothers me a bit, because it doesn't seem
> > > to be sustainable in the long term.
> > 
> > I agree completely.
> > 
> > However, it seems like there's always enough information for a
> > whitelist, if you know at least one system it works on.  Then people can
> > submit patches extending the whitelist.
> > 
> > But in any case, this seems to argue against a global "use less power"
> > switch, because any one of the underlying options might potentially
> > break on the user's system.  Any that can be safely toggled by a master
> > switch should just come pre-toggled. :)
> 
> Say the user has a new machine and doesn't know which tunables can be safely
> enabled on it.  The only way to check is to toggle all of them and see if
> anything breaks.  The difficulty here is that the user actually needs to
> know about all of them which takes quite a bit of research and if nothing
> breaks really that's a fair amount of work pretty much in vain.  A global
> switch would make it somewhat easier for the lucky users whose systems
> don't break after toggling it.

Odds are at least one thing will break, though, and if the user doesn't
know about all of the tunables they just changed, they won't necessarily
know how to diagnose the reason, especially if the failure is more
subtle and doesn't completely break the system.

Perhaps, as a start towards this, we could document all the "might or
might not work" power management tunables in one place, and document
what might go wrong if they don't work on your system.  That could then
easily become an /etc/sysctl.d file to toggle them all.  And even if we
offer a single global "dangerous PM tunables" switch, that document
would help identify what might go wrong and help re-disable the things
that don't work.

- Josh Triplett
