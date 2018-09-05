Return-Path: <gregkh@linuxfoundation.org>
Date: Wed, 5 Sep 2018 16:05:35 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20180905140535.GB7556@kroah.com>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
	<nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
	<20180905081658.GB24902@quack2.suse.cz>
	<nycvar.YFH.7.76.1809051029400.15880@cbobk.fhfr.pm>
	<1536141525.8121.2.camel@HansenPartnership.com>
	<20180905104700.GE9781@sirena.org.uk>
	<6a25761a-c640-4eb2-952c-4bcd91da28a2@email.android.com>
	<s5hefe8cd0u.wl-tiwai@suse.de>
	<CAKMK7uFMHkw4jw3D6ijGNZF84+p+EGY_6YAdCOTcXe0DQbLC6g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKMK7uFMHkw4jw3D6ijGNZF84+p+EGY_6YAdCOTcXe0DQbLC6g@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
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

On Wed, Sep 05, 2018 at 03:27:58PM +0200, Daniel Vetter wrote:
> On Wed, Sep 5, 2018 at 3:03 PM, Takashi Iwai <tiwai@suse.de> wrote:
> > On Wed, 05 Sep 2018 14:24:18 +0200,
> > James Bottomley wrote:
> >>
> >> On September 5, 2018 11:47:00 AM GMT+01:00, Mark Brown <broonie@kernel.org> wrote:
> >> >On Wed, Sep 05, 2018 at 10:58:45AM +0100, James Bottomley wrote:
> >> >
> >> >> This really shouldn't be an issue: stable trees are backported from
> >> >> upstream.  The patch (should) work in upstream, so it should work in
> >> >> stable.  There are only a few real cases you need to worry about:
> >> >
> >> >>    1. Buggy patch in upstream backported to stable. (will be caught
> >> >and
> >> >>       the fix backported soon)
> >> >>    2. Missing precursor causing issues in stable alone.
> >> >>    3. Bug introduced when hand applying.
> >> >
> >> >> The chances of one of these happening is non-zero, but the criteria
> >> >for
> >> >> stable should mean its still better odds than the odds of hitting the
> >> >> bug it was fixing.
> >> >
> >> >Some of those are substantial enough to be worth worrying about,
> >> >especially the missing precursor issues.  It's rarely an issue with the
> >> >human generated backports but the automated ones don't have a sense of
> >> >context in the selection.
> >> >
> >> >There's also a risk/reward tradeoff to consider with more minor issues,
> >> >especially performance related ones.  We want people to be enthusiastic
> >> >about taking stable updates and every time they find a problem with a
> >> >backport that works against them doing that.
> >>
> >> I absolutely agree.  That's why I said our process is expediency
> >> based:  you have to trade off the value of applying the patch vs the
> >> probability of introducing bugs.  However the maintainers are mostly
> >> considering this which is why stable is largely free from trivial
> >> but pointless patches.  The rule should be: if it doesn't fix a user
> >> visible bug, it doesn't go into stable.
> >
> > Right, and here the current AUTOSEL (and some other not-stable-marked)
> > patches coming to a gray zone.  The picked-up patches are often right
> > as "some" fixes, but they are not necessarily qualified as "stable
> > fixes".
> >
> > How about allowing to change the choice of AUTOSEL to be opt-in and
> > opt-out, depending on the tree?  In my case, usually the patches
> > caught by AUTOSEL aren't really the patches with forgotten stable
> > marker, but rather left intentionally by various reasons.  Most of
> > them are fine to apply in anyway, but it was uncertain whether they
> > are really needed / qualifying as stable fixes.  So, I'd be happy to
> > see them as opt-in, i.e. applied only via manual approval.
> >
> > Meanwhile, some trees have no stable-maintenance, and AUTOSEL would
> > help for them.  They can be opt-out, i.e. kept until someone rejects.
> 
> +1 on AUTOSEL opt-in. It's annyoing at best, when it backports cleanup
> patches (because somehow those look like stealthy security fixes
> sometimes) and breaks a bunch of people's boxes for no good reason.
> 
> In general it'd be really good if -stable had a clearer audit path.
> Every patch have a recorded reason why it's being applied (e.g. Cc:
> stable in upstream, Link to the lkml thread/bug report, AUTOSEL mail,
> whatever), so that after the fact I can figure out why a -stable patch
> happend, that would be really great. Atm -stable occasionally blows
> up, with a patch we didn't mark as cc: stable, and we have no idea
> whyiit showed up in -stable even. That makes it really hard to do
> better next time around.

I try to keep the audit thread here, as I get asked all the time why
stuff got added.

Here's what I do, it's not exactly obvious, sorry:
	- if it came from a stable@ tag, just leave it alone and add my
	  signed-off-by
	- if it was manually requested by someone, I add a "cc:
	  requestor" to the signed-off-by area and add my s-o-b
	- if it came from Sasha's tree, Sasha's s-o-b is on it
	- if it came from David Miller's patchset, his s-o-b is on it.

That should cover all types of patches currently going into the trees,
right?

So always, you can cc: everyone on the s-o-b area and get the people
involved in the patch and someone involved in reviewing it for stable
inclusion.

thanks,

greg k-h
