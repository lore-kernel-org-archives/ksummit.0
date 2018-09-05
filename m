Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 64BA3FCD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 21:02:29 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0A0837C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 21:02:28 +0000 (UTC)
Date: Wed, 5 Sep 2018 23:02:25 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Sasha Levin <Alexander.Levin@microsoft.com>
In-Reply-To: <20180905140615.GH16300@sasha-vm>
Message-ID: <nycvar.YFH.7.76.1809052300050.15880@cbobk.fhfr.pm>
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
	<20180905140615.GH16300@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: James Bottomley <James.Bottomley@Hansenpartnership.com>,
	Greg KH <gregkh@linuxfoundation.org>,
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

On Wed, 5 Sep 2018, Sasha Levin wrote:

> >And do you honestly think they should be marked for stable tree in the
> >first place?
> 
> If you can't trust a maintainer's judgement about his very own subsystem
> then you're shit out of luck. 

I said this already in this thread, but let me formulate this explicitly 
-- I see the trust required for mainlining (total focus on development), 
and trust required for including into stable (total focus on stability), 
as two non-equal qualities of a maintainer.

-- 
Jiri Kosina
SUSE Labs
