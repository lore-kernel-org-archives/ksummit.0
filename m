Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A5DC4AE7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 18:10:24 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4EC33626
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 18:10:24 +0000 (UTC)
Message-ID: <1525371022.3225.22.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Date: Thu, 03 May 2018 11:10:22 -0700
In-Reply-To: <20180503154342.GN18390@sasha-vm>
References: <20180501163818.GD1468@sasha-vm>
	<20180501194450.GD10479@thunk.org> <20180501200019.GA7397@sasha-vm>
	<20180501205448.GE10479@thunk.org> <877eol808s.fsf@intel.com>
	<1525357984.3225.12.camel@HansenPartnership.com>
	<20180503144850.GC23311@1wt.eu> <20180503150608.GM18390@sasha-vm>
	<1525361268.3225.17.camel@HansenPartnership.com>
	<20180503154342.GN18390@sasha-vm>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Greg KH <gregkh@linuxfoundation.org>, Willy Tarreau <w@1wt.eu>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 2018-05-03 at 15:43 +0000, Sasha Levin via Ksummit-discuss
wrote:
> On Thu, May 03, 2018 at 08:27:48AM -0700, James Bottomley wrote:
[...]
> > It's also a sad fact that a lot of things which look like obvious
> > fixes actually turn out not to be so with later testing.  This is
> > why the user visibility test is paramount.  If a bug fix has no
> > real user visible effects, it's often better to defer it no matter
> > how obvious it looks, which is why the static code checkers often
> > get short shrift before a merge window.
> > 
> > A script measuring user visibility would be nice, but looks a bit
> > complex ...
> 
> It is, but I think it's worthwhile. Would something that'll show you
> things like:
> 
>  - How long a patch has been in -next?
>  - How many replies/reviews/comments it got on a mailing list?
>  - Did the 0day bot test it?
>  - Did syzbot fuzz it? for how long?
>  - If it references a bugzilla of some sort, how many
>    comments/reviews/etc it got there?
>  - Is it -stable material, or does it fix a regression in the current
>    merge window?
>  - If subsystem has custom testing rig, results from those tests
> 
> be a step in the right way? is it something you'd use to make
> decisions on whether you'd take a patch in?

Actually, no, these are all not what I'm talking about:  They're all
measures of whether the commit triggers another bug.  Which, I agree,
is the fear, so it would be good to have them of course, but they all
take time the maintainer doesn't have when making a quick decision
about a late -rc bug fix.

At late -rc the decision is the current user visible problem set
against the risk of -rc destabilization.  You're measuring the latter
in the above, but in the rule of thumb decision making we just assume
that's constant.  What we're looking to measure is the user visible
effect of not fixing the problem.

So, for instance, a boot failure on a widely used SCSI board is a no
brainer for fix now and tackle consequences later.  An obvious fix to
an error leg of a little used board is the other way: no-one is really
affected, so we don't take the risk.  The judgment call is the spectrum
in between these two extremes.

James
