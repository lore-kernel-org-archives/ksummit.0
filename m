Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0AC861486
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 15:20:06 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [146.0.238.70])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9F20D7C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 15:20:05 +0000 (UTC)
Date: Wed, 5 Sep 2018 17:19:59 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Sasha Levin <Alexander.Levin@microsoft.com>
In-Reply-To: <20180905145413.GL16300@sasha-vm>
Message-ID: <alpine.DEB.2.21.1809051717460.1416@nanos.tec.linutronix.de>
References: <20180905081658.GB24902@quack2.suse.cz>
	<nycvar.YFH.7.76.1809051029400.15880@cbobk.fhfr.pm>
	<1536141525.8121.2.camel@HansenPartnership.com>
	<20180905104700.GE9781@sirena.org.uk>
	<6a25761a-c640-4eb2-952c-4bcd91da28a2@email.android.com>
	<s5hefe8cd0u.wl-tiwai@suse.de> <20180905142038.GI16300@sasha-vm>
	<s5h1sa8c8z7.wl-tiwai@suse.de> <20180905144155.GK16300@sasha-vm>
	<s5hy3cgatod.wl-tiwai@suse.de> <20180905145413.GL16300@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: James Bottomley <James.Bottomley@Hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>
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

On Wed, 5 Sep 2018, Sasha Levin via Ksummit-discuss wrote:
> On Wed, Sep 05, 2018 at 04:46:26PM +0200, Takashi Iwai wrote:
> >On Wed, 05 Sep 2018 16:41:56 +0200,
> >Sasha Levin wrote:
> >> So right now I'm lagging a few weeks behind upstream. If I limit it to
> >> patches that are at least 1 month old will that help with your concerns?
> >
> >A few weeks after rc-release or the final release?
> >If it's the latter, that should be fine.
> 
> A few weeks after a given patch was merged upstream. The tricky part is
> if I wait a month from final release then the relevant stable tree is
> already EOL.

If the thing is close to EOL then it wont get the next fix or worse the fix
for the subtly broken one either. It really does not matter at all.

Thanks,

	tglx
