Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B9A02E9F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 13:20:58 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 53D4E70D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 13:20:58 +0000 (UTC)
Date: Wed, 5 Sep 2018 15:20:55 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Takashi Iwai <tiwai@suse.de>
In-Reply-To: <s5hd0tsccdw.wl-tiwai@suse.de>
Message-ID: <nycvar.YFH.7.76.1809051519450.15880@cbobk.fhfr.pm>
References: <1536142432.8121.6.camel@HansenPartnership.com>
	<s5hd0tsccdw.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Distribution kernel
 bugzillas considered harmful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 5 Sep 2018, Takashi Iwai wrote:

> Asking bisection by reporter is usually the last resort.
> 
> It'd be helpful if we get any suggestion to improve the process.

IIRC, years ago someone started on "web-based bisection tool", but that 
was never finished.

The idea was that the user would just click "Good" and "Bad" buttons, and 
would be getting kernel RPMs to test.

If this would have been picked up and finished (GSoC perhaps?), it might 
help a lot with this aspect.

-- 
Jiri Kosina
SUSE Labs
