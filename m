Return-Path: <tytso@thunk.org>
Date: Wed, 21 Sep 2016 15:52:41 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20160921195241.bwkizm55y5hjtczc@thunk.org>
References: <57C78BE9.30009@linaro.org> <20160902191637.GC6323@sasha-lappy>
	<20160903000518.GN3950@sirena.org.uk> <1656524.OIRTMDr3jV@avalon>
	<57E22F8E.1040801@linaro.org> <20160921092341.GA25038@kroah.com>
	<20160921182204.GD7994@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160921182204.GD7994@sirena.org.uk>
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [Stable kernel] feature backporting
 collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 21, 2016 at 07:22:04PM +0100, Mark Brown wrote:
> One problem that bites people fairly hard trying to do upstream first is
> that upstream turns too slowly to do things for the current product in
> some markets, when I was working on phones it'd off the top of my head
> typically be 3-4 months before anything ended up in a release (depending
> on where we were in the release cycle) and another year or so before
> that filtered back out into product (and this is mostly with very low
> resistance subsystems where I'm the maintainer).

To me, "upstream first" doesn't mean wait for things to cycle out to a
release.  It means "develop first on upstream" and then backport to
your product kernel.  And I tend to think of this as something that
should be done on a per-feature or per-device driver basis.  So yes,
your product won't run on upstream, at least certainly not at launch time.

But this tends to avoid a huge build-up of horrific technical debt
where you have a completely horrific scheduler change that is
completely invasive to the core kernel structures, and guarantees that
your changes will break the kernel building on any other architecture.
Most of the time, the comments that you will get back from the
community are actually good ideas; not just nit-picking to slow you
down.  (And, if you know that your changes are going upstream, this
tends to invoke a bit more professional pride with the result that
what you put forward for external review, and what shows up in the
product kernel, isn't a terrible hack filled with techincal debt.)

> When I talk to people about this I tend to talk about doing upstream
> simultaneously rather than first, that is a lot more tractable.  Work on
> things, try to push your latest work upstream as you write it and
> incorporate review feedback from upstream into your product as you go
> but don't gate things on upstream.  Try to view anything that's still in
> review as a problem that needs to be fixed but acknowledge that there's
> also a need to actually get product out the door.

Sure.  I tend to think of that as upstream first, although if people
are happier calling it "upstream simultaneously", the terminology
doesn't really matter all that much.

What *does* matter is an attitude that the goal should be to have
stuff in your product kernel which is upstreamable as the default
goal, and having things that are out-of-tree should be the exception
and not the rule.  And if it does happen, there ought to be good
reasons for each of those changes, and an acknowledgement that
out-of-tree changes represent technical debt.

> People aren't just ignoring the idea of working upstream entirely.
> People are doing work here, it's producing results (or at least a pile
> of mainline code).  Some are doing more than others, some are more
> successful than others but there is a lot happening here.  There's a lot
> of things going on that I'm critical of but there's also a lot of
> perfectly rational, practical decisions being made.  Getting the more
> complex consumer electronics devices to the point where they work as
> well upstream as servers do is not trivial and will take some time.

Perhaps those that are doing good work here should be called out and
given praise?  While there are some negative consequences with calling
out those folks who aren't willing to do more, highlighting the people
who are doing a good job should be all upside.

    	      	     	 	       - Ted
