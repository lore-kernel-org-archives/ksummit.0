Return-Path: <edubezval@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BAF0D10FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 15:41:22 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
	[209.85.214.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2EB5A13A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 15:41:22 +0000 (UTC)
Received: by mail-pl1-f177.google.com with SMTP id u11-v6so1164745plq.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 08:41:22 -0700 (PDT)
Date: Wed, 12 Sep 2018 08:41:15 -0700
From: Eduardo Valentin <edubezval@gmail.com>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Message-ID: <20180912154114.GA5786@localhost.localdomain>
References: <20180911114227.241f2e5d@vmware.local.home>
	<20180911174043.GK5659@atomide.com>
	<1536688022.3511.5.camel@HansenPartnership.com>
	<20180911143923.11e479ea@vmware.local.home>
	<1536696572.3511.12.camel@HansenPartnership.com>
	<20180911163136.1d6653a6@vmware.local.home>
	<1536706409.3511.14.camel@HansenPartnership.com>
	<20180911230421.GA3821@sasha-vm>
	<1536707508.3511.16.camel@HansenPartnership.com>
	<20180911232000.GB3821@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20180911232000.GB3821@sasha-vm>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 11, 2018 at 11:20:01PM +0000, Sasha Levin via Ksummit-discuss wrote:
> On Tue, Sep 11, 2018 at 07:11:48PM -0400, James Bottomley wrote:
> >On Tue, 2018-09-11 at 23:04 +0000, Sasha Levin via Ksummit-discuss
> >wrote:
> >> On Tue, Sep 11, 2018 at 06:53:29PM -0400, James Bottomley wrote:
> >> > On Tue, 2018-09-11 at 16:31 -0400, Steven Rostedt wrote:
> >> > > On Tue, 11 Sep 2018 16:09:32 -0400
> >> > > James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> >> > >
> >> > > > On Tue, 2018-09-11 at 14:39 -0400, Steven Rostedt wrote:
> >> >
> >> > [...]
> >> > > > > > This applies to 0day as well, because, by agreement, it has
> >> > > > > > a much deeper set of xfstest runs for branches we actually
> >> > > > > > queue for -next rather than the more cursory set of tests
> >> > > > > > it runs on ML patches.  
> >> > > > >
> >> > > > > What about the tests on local branches? Not what you post to
> >> > > > > the ML.  
> >> > > >
> >> > > > I don't really see any point having a local -pre-next pass and
> >> > > > hoping 0day will find it.  It's much more valuable (and faster)
> >> > > > to push to -next and have all the integrated tests work on it
> >> > > > once we've done everything we can locally.
> >> > >
> >> > > Why not do what I do and push to a -pre-next branch when you kick
> >> > > off your local tests?
> >> >
> >> > Because there's no point.  As I said, when we complete the local
> >> > criteria the branch is ready for integration.  We push to -next and
> >> > *all* the built bots tell us if there are any problems (which I
> >> > don't expect there are but there's room for me to be wrong) ...
> >> > including 0day.  I don't see what the delay and the process hassle
> >> > would buy us if we only get a review by 0day in the -pre-next
> >> > branch.  It seems more efficient to let every bot loose on what we
> >> > think is mergeable.
> >>
> >> The problem with that approach is that it will break build more
> >> often, and if build is broken then usually no automated testing are
> >> getting done for that day.
> >
> >You're making the wrong assumption: most bugs aren't build breaks.  We
> >do occasionally have them, usually because of an obscure config
> >interaction issue, but it's a tiny percentage, so the impact to the
> >entire tree usually isn't great.
> 
> Right, most bugs aren't build/boot bugs, but between all various
> subsystems there's always the one that snuck through. It only takes one
> to kill build.


Right, I agree build/boot bugs are not necessarily the more complex
issues.  But one single boot problem in linux next has a huge impact on
everyone that cares about testing it, and catching it to sooner the
better, no?

Also one maintainer may consider a config combination as an obscure one,
but not every may think that way. Having bots build/boot testing
branches on multiple configs is a thing that actually helps, specially
if done before pushing to -next. Then again, I am not saying that we
should push the responsibility of maintainers to bots to test stuff, but
improving the test coverage is always welcome, IMO.

> 
> >However, think of this like release early, release often.  If we think
> >a branch is ready but there's a lurking bug, even a build related one,
> >it's better we find out sooner than later, so it's still better we
> >expose it ASAP to the full test machinery.  If it's one the local
> >criteria should have caught, I'm sure there'll be a huge line up of
> >people wanting to complain (which is why we try to make sure any
> >lurking bugs aren't build related).

I agree. Looks like everyone wants to improve the testing coverage, the
disagreement seams to be on when and how.


> 
> Right, I'm not saying delay it, I'm just saying that you should feed it
> to the bots *while* you run your testsuites, even if to just get build
> coverage.

I agree with this proposal, specially if the idea is to get more people
to use a stabilized -next.

However, I also tend to agree that other nasty bugs will be found only
when changes hit a release or -rc kernel, or when they hit a stable
release. Specially when those gets released by distros. Obviously, this
should not prevent us to try to improve the process, specially wrt
testing.


> 
> Also remember that -next releases once a day in a very predictable
> timing, there's usually a few hours to spare between your push and the
> time linux-next gets constructed, so ASAP isn't really all that critical
> here as long as it gets in the same day.
> 
> --
> Thanks,
> Sasha
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
