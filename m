Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4F90171
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 00:32:09 +0000 (UTC)
Received: from cloudserver094114.home.net.pl (cloudserver094114.home.net.pl
	[79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id E481F18E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 00:32:07 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Greg KH <greg@kroah.com>
Date: Thu, 04 Aug 2016 02:37:19 +0200
Message-ID: <26737958.vdudU6LOd3@vostro.rjw.lan>
In-Reply-To: <20160803133909.GA1917@kroah.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<1600610.QIejSIJ3WK@vostro.rjw.lan>
	<20160803133909.GA1917@kroah.com>
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

On Wednesday, August 03, 2016 03:39:09 PM Greg KH wrote:
> On Wed, Aug 03, 2016 at 03:20:44PM +0200, Rafael J. Wysocki wrote:
> > On Wednesday, August 03, 2016 01:09:35 PM Greg KH wrote:
> > > On Wed, Aug 03, 2016 at 12:36:29PM +0300, Jani Nikula wrote:
> > > > On Wed, 03 Aug 2016, "Rafael J. Wysocki" <rjw@rjwysocki.net> wrote:
> > > > > On Tuesday, August 02, 2016 04:34:00 PM Mark Brown wrote:
> > > > >> On Tue, Aug 02, 2016 at 05:12:47PM +0300, Jani Nikula wrote:
> > > > >> 
> > > > >> > Generally adding cc: stable is like, this is clearly a fix to a bug that
> > > > >> > is present in stable kernels, and the bug should be fixed, but I have no
> > > > >> > idea nor resources to review or test if this is the right fix across all
> > > > >> > stable kernels. You end up relying on your gut feeling too much to be
> > > > >> > comfortable. You have to make the call too early in the process.
> > > > >> 
> > > > >> I think the problems here are more in the process of how things go from
> > > > >> being tagged stable to appearing in a stable release - the QA or lack
> > > > >> thereof and so on.  While I do share some of your misgivings here I do
> > > > >> also really like the fact that it's really easy for people to push
> > > > >> things out for the attention of those working on backports.  It's
> > > > >> essentially the same as the question I often find myself asking people
> > > > >> who don't upstream - "why would this fix not benefit other users?".
> > > > >
> > > > > Agreed, and I think that's exactly where the expectations don't match what's
> > > > > delivered in the long-term-stable trees.
> > > > >
> > > > > It should be made clear that "stable" doesn't mean "no regressions".  What
> > > > > it reall means is "hey, if you care about backports, this is the stuff to take
> > > > > into consideration in the first place".
> > > > 
> > > > I think this interpretation matches reality better than what
> > > > Documentation/stable_kernel_rules.txt leads you to believe about adding
> > > > cc: stable tag.
> > > 
> > > really?
> > 
> > Honestly, I think so.
> > 
> > > Yes, we have regressions at times in stable kernels, but
> > > really, our % is _very_ low.  Probably less than "normal" releases, but
> > > that's just a random guess, it would be good for someone to try to do
> > > research on this before guessing...
> > 
> > Jon did some of that at LWN (http://lwn.net/Articles/692866/) and he got
> > regression rate estimates for various -stable lines in the range between
> > 0.6-1.4% (4.6) and 2.2-9.6% (3.14).
> > 
> > Of course, whether or not these numbers are significant is a matter of
> > discussion, but they are clearly nonzero.
> 
> I agree, they will always be nonzero, but what is the acceptable number?  :)

Well, that depends.

There are people, like Chris, who mostly care about easy access to backports
that make sense, so to speak.

There are other people who mostly care about having their systems up to date
with respect to security fixes and the like, but without having to follow the
Linus' release points.

The first group would like things to be put into -stable more aggressively,
while the other group would prefer pretty much the opposite.

There is the "right" balance somewhere in between.  I don't know where it is,
but that's where the "acceptable number" comes from.

> > Now, I understand why there are regressions in -stable and to me it would
> > be just fine to say that they will be there occasionally, so as to prevent
> > supporting the "no regressions in -stable at all" expectation that (a) is
> > unrealistic today and (b) seems to be quite widespread.
> 
> The way Jon's numbers were made was by just looking at the patches and
> seeing if they said they fixed a patch that happened to be in a previous
> stable kernel.  Sometimes a "fix" isn't something that people notice as
> it didn't really fix the problem.  So that's not a regression that
> anyone would notice as the issue is just still there.  Teasing that out
> from the patches we have will be a difficult thing to do, as I don't
> think it can be automated.
> 
> But it might make for a good research paper, and someone could probably
> get a master's thesis out of it, so I might propose it to a few
> Universities that I am in communication with :)
> 
> We do have users that have real numbers saying "We tested every single
> 3.10-stable kernel on our infrastructure and nothing ever broke".  We
> also have a huge body of past kernel releases that people can run
> themselves to see how well we are doing on real systems and workloads.
> 
> I also know some users that have real problems with stable kernels for
> very specific hardware reasons (i.e. some graphics chips), due to large
> numbers of backports they are forced to keep on top of their kernel
> tree.  That's a different issue, and one that the stable workflow is not
> set up to address, as that would be impossible.
> 
> > Or do we really want to meet that expectation?
> 
> The expectation that I try to meet is "we will address any reported
> issues as soon as possible".

That's a good one to meet and maybe it would help to just document it this way.

Something like "our process is not guaranteed to be free of regressions, but
we do our best to avoid them and if there are any, we will address them as
soon as reasonably possible"?

>  After all, no one is paying for the service we do, so there's not much
> else we can do here :)

Fair enough. :-)

Thanks,
Rafael
