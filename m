Return-Path: <dvhart@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B3A398B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 16:07:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3592314F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 16:07:22 +0000 (UTC)
Date: Fri, 10 Jul 2015 09:07:14 -0700
From: Darren Hart <dvhart@infradead.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20150710160714.GL111846@vmdeb7>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<20150710143641.GW4341@mwanda>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150710143641.GW4341@mwanda>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 10, 2015 at 05:36:41PM +0300, Dan Carpenter wrote:
> On Thu, Jul 09, 2015 at 12:37:18PM -0700, Darren Hart wrote:
> > I spend a highly disproportionate amount of my time, relative to measurable
> > quality impact to the kernel, going over the nuances of submitting patches.
> > 
> > 1) Must have a complete commit message
> > 2) DCO goes above the ---
> > 3) Include a patch changelog, do so below ---
> > 4) Cc maintainers :-)
> > 5) Checkpatch... checkpatch... checkpatch...
> > 6) Compiler warnings
> > 7) CodingStyle :-)
> > 8) Use ascii or utf8 character encodings
> > 
> 
> The same people who don't run checkpatch.pl will also not opt in to your
> QC system.

I think they would if it the barrier to use it was lower than LKML. Between our
very stringent email formatting requirements and the stigma associated with
screwing it up, I think a prominent "Kernel Patch Submitter" web form would be
readily used by a lot of first timers.

Once they are used to using that and want to move on to a patch series, we can
have instructions on how to do that, which might include a web form which
accepts a publicly visible git repository url and branch or tag, along with all
the other required cover letter stuff as part of a form.

(See Steve Rostedts response on web forms)

> You should create a procmail filter to processes patches.  If the patch
> fails then it changes the subject from [patch] to [fail] and stores a
> response (compile warnings etc) in a directory.  Then you trigger a
> macro in mutt and it mails the response.
> 
> Or you could just create a generic form letter like Greg does.
> 

OK, so this is precisely the kind of individually developed special purpose
wizardry that I think hinders recruitment. Rather than having every maintainer
reinvent this wheel in a subtly different a personal way (which gets back to the
issues raised about subtly different expectations per maintainer), it makes a
lot of sense to me to create a common infrastructure that we can all use.

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
