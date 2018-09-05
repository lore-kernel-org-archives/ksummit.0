Return-Path: <gregkh@linuxfoundation.org>
Date: Wed, 5 Sep 2018 16:00:07 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20180905140007.GA7556@kroah.com>
References: <20180904213340.GD16300@sasha-vm>
	<nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
	<20180905081658.GB24902@quack2.suse.cz>
	<nycvar.YFH.7.76.1809051029400.15880@cbobk.fhfr.pm>
	<1536141525.8121.2.camel@HansenPartnership.com>
	<20180905104700.GE9781@sirena.org.uk>
	<6a25761a-c640-4eb2-952c-4bcd91da28a2@email.android.com>
	<nycvar.YFH.7.76.1809051437300.15880@cbobk.fhfr.pm>
	<20180905130512.GA5601@kroah.com>
	<nycvar.YFH.7.76.1809051509100.15880@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <nycvar.YFH.7.76.1809051509100.15880@cbobk.fhfr.pm>
Cc: James Bottomley <James.Bottomley@Hansenpartnership.com>,
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

On Wed, Sep 05, 2018 at 03:15:25PM +0200, Jiri Kosina wrote:
> On Wed, 5 Sep 2018, Greg KH wrote:
> 
> > For these specific ones, I trusted that the maintainer of the subsystem
> > knew what they were doing when they marked them for the stable tree.
> 
> And do you honestly think they should be marked for stable tree in the 
> first place?

For these, they passed my smell test, it seemed a simple win for a major
performance increase.  I would have pushed back if I didn't think so.

Now arguably, maybe I don't push back hard enough, but I do complain
when I see things marked for stable that are not "obvious".

As I have said every year when this same comment comes up, if you, or
anyone else, wants to help and review and push back on patches that have
been tagged like this, please do so, I can ALWAYS use the help.

> > Which is what we do in kernel development, we trust others that their 
> > stewardship of their code subsystems is in the best interest of their 
> > users.  
> 
> Sure, I wholeheartedly agree. For Linus' tree, all the web of trust is 
> there so that changes can be propagated up the maintainership structure, 
> and we trust the maintainers and developers that they did all the 
> development and testing as well as they possibly could, and that eventual 
> bugs in the code will be responsibly fixed.
> 
> For stable, there is another aspect that needs to be trusted -- that the 
> relevance for stable has been properly considered, so that we ideally 
> avoid the need for "eventual bugs will be fixed" much more pro-actively 
> than in Linus' tree (that's "stable", right?).
> 
> And I think we simply could improve there (well, again, this all very much 
> depends on the target audience I guess).
> 
> *Especially* with the automatic selection thing -- who exactly is the 
> entity you trust there?

I trust Sasha for doing the first cut at scanning the output and picking
the patches that "look correct".  I have seen previous outputs of the
"raw" tool, and they still need human judgement, which he uses.

I also then review them all myself, and sometimes do find things that
should not be merged, and I say so and drop them.

And of course, having the maintainers/developers of the patches asked if
they should be applied also helps, I rely on them to say "NO!" which
again, also happens.

So that's three levels of "entities" that I trust, is that not
sufficient?  If so, what would make you "feel better" about it?

thanks,

greg k-h
