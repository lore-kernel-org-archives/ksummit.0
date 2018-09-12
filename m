Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B03E7BA2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 09:09:31 +0000 (UTC)
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 45326102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 09:09:31 +0000 (UTC)
Date: Wed, 12 Sep 2018 12:09:17 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20180912090917.gqupi57w7wh4u3xg@mwanda>
References: <20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
	<20180910212019.GA32269@roeck-us.net>
	<20180911111853.GB8018@sirena.org.uk>
	<20180911170212.GC8284@roeck-us.net>
	<1536686530.3511.1.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1536686530.3511.1.camel@HansenPartnership.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 11, 2018 at 10:22:10AM -0700, James Bottomley wrote:
> Not to excuse rudeness, we always try to be polite on lists when this
> happens, but -next builds on Australian time, so when we find and fix
> an issue there can be up to 24h before it propagates.  In that time,
> particularly if it's a stupid bug, it gets picked up and flagged by a
> number of self contained 0day type projects and possibly a couple of
> coccinelle type ones as well.  It does get a bit repetitive for
> maintainers to receive and have to respond to 4 or 5 bug reports for
> something they just fixed ...
> 

Figure out how people are generating the bug reports and do it yourself
pre-emptively.  That's what other trees do.

regards,
dan carpenter
