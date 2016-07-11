Return-Path: <linux@roeck-us.net>
Date: Mon, 11 Jul 2016 10:24:55 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20160711172455.GA27538@roeck-us.net>
References: <1468024946.2390.21.camel@HansenPartnership.com>
	<alpine.LNX.2.00.1607091039550.24757@cbobk.fhfr.pm>
	<20160709093626.GA6247@sirena.org.uk>
	<5781148F.1010102@roeck-us.net> <20160709212130.GC26097@thunk.org>
	<20160711151300.GB3701@sirena.org.uk>
	<20160711170333.GE3890@thunk.org>
	<20160711171146.GD3701@sirena.org.uk>
	<CAOesGMiBo=tVJcyBmCtanvEWNzX+6oNUn_5ou4O_EzCv6QkOVA@mail.gmail.com>
	<20160711171718.GE3701@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160711171718.GE3701@sirena.org.uk>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linux-foundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 11, 2016 at 06:17:18PM +0100, Mark Brown wrote:
> On Mon, Jul 11, 2016 at 10:13:56AM -0700, Olof Johansson wrote:
> > On Mon, Jul 11, 2016 at 10:11 AM, Mark Brown <broonie@kernel.org> wrote:
> > > On Mon, Jul 11, 2016 at 01:03:33PM -0400, Theodore Ts'o wrote:
> 
> > > > Very few people will actually be merging them, and in fact maybe
> > > > having a patch queue which is checked into git might actually work
> > > > better, since it sounds like most people are just cherry-picking
> > > > specific patches.
> 
> > > I think at this point even if people are cherry picking patches it's
> > > probably still going to be easier for people to work with a git tree
> > > than anything else - the workflow for git cherry-pick, looking for
> > > dependent patches and so on is pretty clear, the upstream commit IDs are
> > > there if you prefer to go direct to them and if you really do want a raw
> > > patch stack then it's easy to translate into one.
> 
> > Yeah, git-backed is much preferred -- you can easily do git log on a
> > subdirectory, git annotate file contents, etc.
> 
> Probably also worth mentioning that this was one of the blockers for
> getting kernelci.org testing Greg's queue for quite a while - it only
> knows how to consume git branches.

Kevin ended up pulling git branches from my repository, so that wasn't an
absolute blocker. One key advantage of having the queue in git is that it is
always consistent - the quilt queue was not always in sync with the -stable
baseline, especially right after a new stable release. Another advantage
is that the git repository can be tested by 0day.

Guenter
