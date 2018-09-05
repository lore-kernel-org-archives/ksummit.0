Return-Path: <gregkh@linuxfoundation.org>
Date: Wed, 5 Sep 2018 10:56:42 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20180905085642.GA29931@kroah.com>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
	<nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
	<20180905081658.GB24902@quack2.suse.cz>
	<nycvar.YFH.7.76.1809051029400.15880@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <nycvar.YFH.7.76.1809051029400.15880@cbobk.fhfr.pm>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
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

On Wed, Sep 05, 2018 at 10:32:45AM +0200, Jiri Kosina wrote:
> But yeah, it's weak and doesn't solve the primary thing, which is just the 
> size of stable itself.

I've held off on responding so far, but I think this is the big point of
"fear" that many people seem to have with the stable updates over the
past years.

Yes, the "size" is bigger than before, but that is because of the
following things:
	- our development process is going faster (9 patches an hour)
	  than it used to a few years ago.
	- We have finally woken some subsystem maintainers up into
	  actually properly tagging patches for stable.  We used to have
	  a horrid rate of this happening, and it is getting better.
	  However, we still have whole major subsystems that _never_ tag
	  anything, which is a problem, so things will get larger.
	- I have more time to work on this than when I used to work for
	  a distro.
	- The "Fixes:" tag has helped out a lot in finding patches that
	  people forgot to tag with stable@ lines.
	- We have more people using and caring about stable kernels, so
	  they submit more patches for them, allowing them to replace
	  their internal trees
	- Sasha's work in finding the patches that maintainers/developer
	  fail to tag is paying off really well, which also increases
	  the size.
	- fuzzing tools are finding loads of stuff that have always been
	  there.  syzbot is wonderful in this, and still has many
	  hundreds of open bugs left to be fixed.  When they are fixed,
	  those patches will be backported.  This means we are getting
	  better at finding and fixing things, not that the bugs were
	  not ever there in the first place.

So yes, things are "bigger" than before, but still, overall, we are only
accepting a small percentage of patches that hit Linus's tree (12
patches a day for stable vs. 216 a day for Linus).

Are you also worried that Linus's tree is getting "bigger"?  :)

So we are larger than before, but this is a good thing, because we are
actually catching more problems than we were before.  Which means your
older kernels had more bugs...

Anyway, just a comment in that you should not "fear" the increased size,
it is to be expected as more people pay more attention to Linux,
combined with the fact that we are still growing.  If the stable patches
were shrinking, then I would get worried as that would imply that people
don't care anymore.

thanks,

greg k-h
