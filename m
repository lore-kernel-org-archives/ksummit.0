Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6C7757AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 13:15:33 +0000 (UTC)
Received: from cloudserver094114.home.net.pl (cloudserver094114.home.net.pl
	[79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 12613231
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 13:15:31 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Greg KH <greg@kroah.com>
Date: Wed, 03 Aug 2016 15:20:44 +0200
Message-ID: <1600610.QIejSIJ3WK@vostro.rjw.lan>
In-Reply-To: <20160803110935.GA26270@kroah.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<87oa5aqjmq.fsf@intel.com> <20160803110935.GA26270@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: ksummit-discuss@lists.linuxfoundation.org,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wednesday, August 03, 2016 01:09:35 PM Greg KH wrote:
> On Wed, Aug 03, 2016 at 12:36:29PM +0300, Jani Nikula wrote:
> > On Wed, 03 Aug 2016, "Rafael J. Wysocki" <rjw@rjwysocki.net> wrote:
> > > On Tuesday, August 02, 2016 04:34:00 PM Mark Brown wrote:
> > >> On Tue, Aug 02, 2016 at 05:12:47PM +0300, Jani Nikula wrote:
> > >> 
> > >> > Generally adding cc: stable is like, this is clearly a fix to a bug that
> > >> > is present in stable kernels, and the bug should be fixed, but I have no
> > >> > idea nor resources to review or test if this is the right fix across all
> > >> > stable kernels. You end up relying on your gut feeling too much to be
> > >> > comfortable. You have to make the call too early in the process.
> > >> 
> > >> I think the problems here are more in the process of how things go from
> > >> being tagged stable to appearing in a stable release - the QA or lack
> > >> thereof and so on.  While I do share some of your misgivings here I do
> > >> also really like the fact that it's really easy for people to push
> > >> things out for the attention of those working on backports.  It's
> > >> essentially the same as the question I often find myself asking people
> > >> who don't upstream - "why would this fix not benefit other users?".
> > >
> > > Agreed, and I think that's exactly where the expectations don't match what's
> > > delivered in the long-term-stable trees.
> > >
> > > It should be made clear that "stable" doesn't mean "no regressions".  What
> > > it reall means is "hey, if you care about backports, this is the stuff to take
> > > into consideration in the first place".
> > 
> > I think this interpretation matches reality better than what
> > Documentation/stable_kernel_rules.txt leads you to believe about adding
> > cc: stable tag.
> 
> really?

Honestly, I think so.

> Yes, we have regressions at times in stable kernels, but
> really, our % is _very_ low.  Probably less than "normal" releases, but
> that's just a random guess, it would be good for someone to try to do
> research on this before guessing...

Jon did some of that at LWN (http://lwn.net/Articles/692866/) and he got
regression rate estimates for various -stable lines in the range between
0.6-1.4% (4.6) and 2.2-9.6% (3.14).

Of course, whether or not these numbers are significant is a matter of
discussion, but they are clearly nonzero.

Now, I understand why there are regressions in -stable and to me it would
be just fine to say that they will be there occasionally, so as to prevent
supporting the "no regressions in -stable at all" expectation that (a) is
unrealistic today and (b) seems to be quite widespread.

Or do we really want to meet that expectation?

Thanks,
Rafael
