Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 16471955
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Aug 2016 21:54:41 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3D37E214
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Aug 2016 21:54:40 +0000 (UTC)
Date: Wed, 24 Aug 2016 17:54:47 -0400
From: Greg KH <greg@kroah.com>
To: "Bradley M. Kuhn" <bkuhn@sfconservancy.org>
Message-ID: <20160824215447.GA5368@kroah.com>
References: <e315013e77cc851b040b5b5f4fe9f0bf@motives.com>
	<20160824130832.GA28564@kroah.com>
	<1472052583.61594.577.camel@infradead.org>
	<20160824174724.GE30853@kroah.com> <20160824205011.GA31615@ebb.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160824205011.GA31615@ebb.org>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 24, 2016 at 01:50:11PM -0700, Bradley M. Kuhn wrote:
> Greg KH wrote today:
> > That offer has been taken up on a few times, and has never failed so far.
> 
> However, I know for a fact that it *has* sometimes failed.  Specifically,
> I've utilized this service of Linux Foundation (which others can find at
> https://compliance.linuxfoundation.org/references/open-compliance-directory
> ), with 0-for-2 results.

<snip>

Ok, let's work together off-list to get these issues resolved, it's not
on-topic here, thanks.

> > I want the code, and I want the company that produced that code to join
> > our community.  ..
> > So far we are doing really well in achieving that goal.
> 
> Yes, with companies who "get it".  There are many of those, and they are
> great stalwarts of our community.  No one is proposing suing them!

But note, many, if not all, of those companies who you say "get it", did
get it 15, 10, or even 5 years ago.  If we had done what you are
proposing to do here then, those companies would never now be part of
our community and we would be much worse off, and possibly, not even be
here at all.

Again, "never sue your customer".

> There are many companies, including some big ones, who just get away
> with GPL violations year after year, have no intention of complying, and
> refuse every effort by *everyone* (LF, Conservancy, etc.) to convince them to
> comply.  In some cases, these bad actors even *flaunt* their violations; they
> market products by saying that those products do things other products in the
> sector can't -- because, of course, their products have proprietary Linux
> modules that aren't available in source and certainly not upstream.

I know about these just as well as everyone else.  And we all deal with
it the best that we can, through various ways.  But to somehow think
that by taking legal action against them, they will then gladly join our
community and work to make Linux better overall, is just not true.  It
never happened with the Busybox lawsuits from what I could tell, right?

In fact, it seems the opposite happened, there's now a replacement for
Busybox that does much the same thing, under a non-copyleft license,
that is being used in lots of places that Busybox used to be in.  That's
the exact opposite any project should ever want to see happen to them.

I don't want Linux to be a test case for the GPL as you put it
recently[1].  That's not how I personally feel a project succeeds in the
long run.  And I'm in it for the long haul.  Remember, at this point in
time, the only thing that will ever be able to stop us, is ourselves.
So we should do our best not to fuck it up.  The history of Busybox
development shows me one way a project can fuck up, and I try to learn
from history.

> Anyway, as others have said, it's quite clear that there are strong policy
> opinions on both sides of this issue.  As Luis mentioned, Conservancy is
> actively enforcing for a growing coalition of Linux copyright holders.  But,
> as Conservancy representatives, we want to hear from the entire community and
> coordinate with that community.  KS is the best venue to communicate about
> complex policy discussions with Linux developers.

The kernel summit is to discuss technical issues involving the kernel,
and developing it.  Personally, I do not feel that it is a place for
legal matters.  Our community is made up of people, and companies, that
have an extremely hard time agreeing on technical matters, throw
culture, corporate competition, free software vs. open software, and
legal issues into the mix and it would turn into a total and complete
mess.

As Linus today said on stage at LinuxCon, some of us barely like each
other to begin with, but we all know that we are working together to
make the best technological solution that we can, so we tolerate each
other :)

And as I said earlier in this thread, I don't want to have to have my
personal lawyer sitting next to me for me to be able to attend the
kernel summit.

thanks,

greg k-h

[1] https://lwn.net/Articles/695014/
