Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 077C4996
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 31 May 2014 01:09:04 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6326D201E1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 31 May 2014 01:09:03 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.mail.srv.osa [10.202.2.41])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id B1FF020BEA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 21:09:02 -0400 (EDT)
Date: Fri, 30 May 2014 16:47:16 -0700
From: Greg KH <greg@kroah.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20140530234716.GH25854@kroah.com>
References: <CAKMK7uEquB=bv5jj=K-8Nv_9S2Y8qh2=3eKjJSjgR4Vrn9fbaA@mail.gmail.com>
	<1401294020.13546.95.camel@dhcp-9-2-203-236.watson.ibm.com>
	<20140528162833.GA23815@thin>
	<alpine.DEB.2.10.1405282332430.3952@nanos>
	<20140528233145.GA14933@cloud> <1401344001.27691.4.camel@dabdike>
	<20140529233459.GD11741@kroah.com>
	<1401423973.2163.26.camel@dabdike>
	<20140530050220.GA2505@kroah.com>
	<1401427998.2163.37.camel@dabdike>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1401427998.2163.37.camel@dabdike>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 30, 2014 at 09:33:18AM +0400, James Bottomley wrote:
> On Thu, 2014-05-29 at 22:02 -0700, Greg KH wrote:
> > On Fri, May 30, 2014 at 08:26:13AM +0400, James Bottomley wrote:
> > > On Thu, 2014-05-29 at 16:34 -0700, Greg KH wrote:
> > > > > Just preparing it for gerrit takes a long time (around ten minutes per
> > > > > patch), which really reduces the volume of trivial patches, just because
> > > > > no-one has that much energy (although some would argue it reduces the
> > > > > volume too far).
> > > > > 
> > > > > It's human nature to spend more time on the easy problems, so a flood of
> > > > > trivial patches which are "obviously" correct is easier to review and
> > > > > include than one patch which alters something deep within mm and needs
> > > > > careful thought.  At best, excessively split trivial patches are a
> > > > > dilution of our review effort and at worst, they're actively sucking
> > > > > people away from tackling the hard problems.
> > > > 
> > > > I have not heard of these "cleanup" patches taking anyone's review
> > > > cycles up for the "harder" patches, do you have examples of it?
> > > 
> > > Yes, me.
> > 
> > Then flat out reject them.  Some subsystem maintainers do.  Or, push
> > back, like you said later with a "I'll take this if you will maintain
> > the driver from now on." :)
> 
> I do (I believe I already said that).
> 
> > No one is forcing you to take these drivers, but as someone who has
> > really old code, I can see how it would get annoying with people hitting
> > you with cleanup patches.  Maybe you should just do a "coding style
> > cleanup" set of patches yourself one release to get it all in shape then
> > not have to worry about it anymore.  That's what I did years ago for the
> > USB drivers...
> 
> I'm not necessarily promoting my own position, I'm questioning the wider
> assertion that all these clean up patches are a good way of getting into
> kernel coding.  What worries me the most is that I don't see evidence
> that after hundreds of clean up patches anyone moves on to more
> substantive issues.

Well, my sample size might be biased, but I know of at least 5 people
that started out with staging "clean up" patches that went on to get
"real" jobs being kernel developers at different companies.  Some of
them disappeared into those companies, and left me with less overall
help, but that's fine with me.  We helped someone out in a concrete way,
which I view is a success, and worth me doing this type of work.

I'm sure there are thousands of other examples where the person didn't
go on to do "real" work on the kernel, but how do you know who is going
to be that 1% that does help out?  I'm not willing to take that chance.

And again, push back and refuse these types of patches for your
subsystem if they are bothering and annoying you.  Have them go through
the trivial tree instead, that's what it is there for.  No one is
forcing you to deal with them.

> Once we incent people with kudos for patches, why
> would you move on to more substantive changes? they're harder and take
> more time.  You can turn out many more cleanup type patches in the time
> it takes to argue for and produce a well thought out substantive change.
> On these metrics we're actually encouraging people not to graduate ...
> that's really a bad thing.

I have not found that to be the case, ever, that someone continues to do
cleanup patches because they like the "numbers".  Employers, and others,
aren't dumb enough to just look at raw numbers.  If they are, well, they
deserve what they get...

> We need to design programs for new people that draw them in, not keep
> them on the periphery.

I totally agree, which is why I have done some work in this area, and it
is slowly paying off, but it's not something that I can talk about at
this point in time.

If others have ideas of things to do to get people into kernel
development in ways that are more "sticky", I'm really interested in
hearing them.

> That's why I think bug fixing is a better activity: it means they have
> to understand some of the code; the change can be small and isolated,
> so they don't have to understand all the code and it often encourages
> people to find out more about whatever they're fixing, hence draws
> them in.

I used to assign bug reports to people as part of "here's something to
learn" when getting new developers at different companies.  It almost
always failed as a person has to be "invested" in wanting to fix the bug
(i.e. it's bothering them, their hardware, etc.)  Even for people who
were made it part of their job, a horrible job was done and they hated
it.

Now if you have someone report a bug, asking them to help fix it is a
much better thing to do and we have had success with that.  But again,
just telling people to go off and scrape through bugzilla is mean, and
in my experience, not worth it at all.

> We're way off the topic of encouraging reviewers, but the bottom line
> for me is I don't believe starting people out with cleanup type changes
> is a good way to get wider engagement.  It is a good way to increase the
> number of overall patches, all of which need to be reviewed, hence the
> need for more reviewers.

It also gets code in staging cleaned up from being so crummy, which I
like, so I'll keep encouraging it in my part of the kernel.  Again, feel
free to reject it from yours.

greg k-h
