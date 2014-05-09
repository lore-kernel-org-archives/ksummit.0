Return-Path: <dmitry.torokhov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B59CF98F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 19:41:16 +0000 (UTC)
Received: from mail-pd0-f171.google.com (mail-pd0-f171.google.com
	[209.85.192.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 64CE52020F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 19:41:16 +0000 (UTC)
Received: by mail-pd0-f171.google.com with SMTP id r10so4070052pdi.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 09 May 2014 12:41:16 -0700 (PDT)
Date: Fri, 9 May 2014 12:41:12 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Jiri Kosina <jkosina@suse.cz>
Message-ID: <20140509194112.GA32068@core.coreip.homeip.net>
References: <20140509170709.GA9747@redhat.com> <20140509171954.GC8289@cloud>
	<1399656674.4136.12.camel@jlt4.sipsolutions.net>
	<alpine.LNX.2.00.1405092108130.21712@pobox.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.00.1405092108130.21712@pobox.suse.cz>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] coverity, static checking etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 09, 2014 at 09:08:49PM +0200, Jiri Kosina wrote:
> On Fri, 9 May 2014, Johannes Berg wrote:
> 
> > > I'd also like to nominate Christopher Li, for Sparse.
> > 
> > Seconded, I'm also interested in general in whether people still think
> > sparse is useful and we should give it attention, or should focus more
> > on really getting everything into gcc - we have a number of sparse
> > warnings in very low-level header files that get used everywhere, for
> > example the one I just fixed in [1] or the one I tried to fix but that
> > ended up being buggy ([2]), but there doesn't seem to be much attention
> > to these during the patch submission etc.
> 
> Just for the sake of datapoint -- running 'make C=1' before every git push 
> is part of my automated workflow. So yes, I am routinely using sparse.

Same here - I try to run sparse every time I apply a new patch.

Thanks.

-- 
Dmitry
