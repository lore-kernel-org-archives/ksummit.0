Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8879713E7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 23:12:01 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 890BD7F3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 23:12:00 +0000 (UTC)
Message-ID: <1536707508.3511.16.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Date: Tue, 11 Sep 2018 19:11:48 -0400
In-Reply-To: <20180911230421.GA3821@sasha-vm>
References: <20180910174638.26fff182@vmware.local.home>
	<20180910230301.GB1764@localhost.localdomain>
	<20180910191329.70f90a14@vmware.local.home>
	<20180911114227.241f2e5d@vmware.local.home>
	<20180911174043.GK5659@atomide.com>
	<1536688022.3511.5.camel@HansenPartnership.com>
	<20180911143923.11e479ea@vmware.local.home>
	<1536696572.3511.12.camel@HansenPartnership.com>
	<20180911163136.1d6653a6@vmware.local.home>
	<1536706409.3511.14.camel@HansenPartnership.com>
	<20180911230421.GA3821@sasha-vm>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2018-09-11 at 23:04 +0000, Sasha Levin via Ksummit-discuss
wrote:
> On Tue, Sep 11, 2018 at 06:53:29PM -0400, James Bottomley wrote:
> > On Tue, 2018-09-11 at 16:31 -0400, Steven Rostedt wrote:
> > > On Tue, 11 Sep 2018 16:09:32 -0400
> > > James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> > > 
> > > > On Tue, 2018-09-11 at 14:39 -0400, Steven Rostedt wrote:
> > 
> > [...]
> > > > > > This applies to 0day as well, because, by agreement, it has
> > > > > > a much deeper set of xfstest runs for branches we actually
> > > > > > queue for -next rather than the more cursory set of tests
> > > > > > it runs on ML patches.  
> > > > > 
> > > > > What about the tests on local branches? Not what you post to
> > > > > the ML.  
> > > > 
> > > > I don't really see any point having a local -pre-next pass and
> > > > hoping 0day will find it.  It's much more valuable (and faster)
> > > > to push to -next and have all the integrated tests work on it
> > > > once we've done everything we can locally.
> > > 
> > > Why not do what I do and push to a -pre-next branch when you kick
> > > off your local tests?
> > 
> > Because there's no point.  As I said, when we complete the local
> > criteria the branch is ready for integration.  We push to -next and
> > *all* the built bots tell us if there are any problems (which I
> > don't expect there are but there's room for me to be wrong) ...
> > including 0day.  I don't see what the delay and the process hassle
> > would buy us if we only get a review by 0day in the -pre-next
> > branch.  It seems more efficient to let every bot loose on what we
> > think is mergeable.
> 
> The problem with that approach is that it will break build more
> often, and if build is broken then usually no automated testing are
> getting done for that day.

You're making the wrong assumption: most bugs aren't build breaks.  We
do occasionally have them, usually because of an obscure config
interaction issue, but it's a tiny percentage, so the impact to the
entire tree usually isn't great.

However, think of this like release early, release often.  If we think
a branch is ready but there's a lurking bug, even a build related one,
it's better we find out sooner than later, so it's still better we
expose it ASAP to the full test machinery.  If it's one the local
criteria should have caught, I'm sure there'll be a huge line up of
people wanting to complain (which is why we try to make sure any
lurking bugs aren't build related).
  
James
