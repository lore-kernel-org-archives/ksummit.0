Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AD485103B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 14:16:34 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DC6AC898
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 14:16:33 +0000 (UTC)
Date: Wed, 3 Jul 2019 16:10:13 +0200
From: Jan Kara <jack@suse.cz>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <20190703141013.GB16008@quack2.suse.cz>
References: <1562080696.3321.21.camel@HansenPartnership.com>
	<37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu>
	<20190703085620.GA5007@pendragon.ideasonboard.com>
	<20190703135012.GC2041@mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190703135012.GC2041@mit.edu>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed 03-07-19 09:50:12, Theodore Ts'o wrote:
> On Wed, Jul 03, 2019 at 11:56:20AM +0300, Laurent Pinchart wrote:
> > 
> > I may have missed the obvious, but while this should work great for
> > patches applied with git-am, what's the expected workflow for patches
> > written by the author of a pull request ? I certainly post my own
> > patches for review on mailing lists, but I don't fetch them back from
> > the list before sending a pull request. Do we want to move towards a
> > model where maintainers should retrieve their own patches from the lists
> > (or from patchwork) ?
> 
> So here's my (Unpopular Puffin?) opinion --- I don't think all patches
> need to have a Link header.  Many don't today, and it's no great
> tragedy.  If you are updating spelling mistakes in kernel
> documentation, or you are fixing compiler, sparse, or Coverity
> warnings, there's generally going to be nothing terribly interesting
> on the e-mail thread anyway.  So why go to extra effort to create the
> link?
> 
> The patches where the Link tag will be most interesting are the ones
> that are adding a new feature, or have something that has sparked a
> lot of controversy.  However, today, merely finding the last V22
> version of the patch series doesn't necessarily help you find the V21,
> or V20, or V19, etc., patches.  Most people do *not* send out the V21
> version a 50 patch series as a reply to the V20 --- and that's
> actually a good thing, because it makes the reply chain in a mutt
> reader like mutt be completely unmangeable.
> 
> And even if they do, how often will it be useful to go through that
> kind of detailed legislative history, even presuming that it exists?
> So 99% of the time, the tag is going to have very highly limited
> value, just as including in the commit description:
> 
> v3
>   - Fixed whitespace nits
> 
> v2
>  - Used an explicit slab cache instead of kmalloc()
>  - Fixed spelling nit in documentation
> 
> is ***really*** not interesting or appropriate.  And putting in a Link
> tag so people can read all of those review comments in all their glory
> is really not going to be all that interesting either.
> 
> Personally, if there is a case where it will be useful, it would
> actually be better for developers to summarize the comments, and
> design alternatives, considered and rejected, etc., in a cover letter,
> or better yet in the kernel documentation as part of the design doc
> for a largish feature, and then if it is a cover letter e-mailed out
> to the mailing list, include a link to the URL of the cover letter
> with some text so that a human being reading the commit log will know
> that there is something actually worth their time to read, as opposed
> to being treated to a huge amount of legislative history that, at the
> end of the day, be a complete waste of time to someone trying to debug
> a live production problem causing data outages for their company.
> 
> The reality though is this is a lot of extra work we're asking of the
> developer, so this automated fashion is a technological solution to
> something which is really a social problem --- and hopefully there
> will be a few cases where it will actually result in a net benefit.

So I agree in a lot of cases Link tag is going to be useless. OTOH I'm
willing to put up with the useless Link tag for the cases where it does
help - e.g. multiple times I'm been chasing mailing lists to find out
what's the latest posted version of some patch and what other patches are
in the series so that I could backport them as well. And the Link tag would
help with this or even make it possible to automate this to some extent...

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
