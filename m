Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 37965CE7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 08:23:30 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B527D2C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 08:23:29 +0000 (UTC)
Date: Mon, 10 Sep 2018 10:23:27 +0200
From: Jan Kara <jack@suse.cz>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Message-ID: <20180910082327.GC26110@quack2.suse.cz>
References: <CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<2534be10-2e70-6932-39c1-7caca2cff044@roeck-us.net>
	<4990d2c1-6f26-0500-9afa-986a61fce3bf@redhat.com>
	<20180907150623.GH16300@sasha-vm>
	<20180907213212.xrgsle6modrz6ss5@mwanda>
	<20180907214357.GK16300@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180907214357.GK16300@sasha-vm>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri 07-09-18 21:43:58, Sasha Levin via Ksummit-discuss wrote:
> On Sat, Sep 08, 2018 at 12:32:13AM +0300, Dan Carpenter wrote:
> >> 7b2ee50c0cd ("hv_netvsc: common detach logic")
> >
> >The patch summary sells this as a cleanup but it's a bugfix.  The fix
> >for it was commit 52acf73b6e9a ("hv_netvsc: Fix a network regression
> >after ifdown/ifup").  It took two months for anyone to notice the if
> >up/down sometimes fails.  Are there any standard tests for network
> >drivers?  There is no way we're going to hold back the patch for two
> >months.
> 
> These examples were less about "keep it waiting longer" and more to show
> that it'll be hard and/or pointless trying to restrict what goes in
> Stable as regressions come from commits that are "obviously" stable
> material.

I agree neither of these regressions would likely be prevented by waiting
longer and I also agree all those fixes should have been taken into stable.
I don't agree with the conclusion "it'll be hard and/or pointless trying to
restrict what goes in Stable" - in my opinion every patch included into
stable carries a risk of a similar regression. The more patches you include
the higher the chances of a regression. So you have to make sure the
problems fixed by included patches are serious enough that they outweight
this risk. Whether the bar for patch inclusion into stable is high enough
is a question some people dispute... And I agree it's a tough decision
because different people have different ideas on what is important enough
and it also obviously depends on the use case.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
