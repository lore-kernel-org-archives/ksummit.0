Return-Path: <dave@sr71.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4F40112ED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 23:08:58 +0000 (UTC)
Received: from blackbird.sr71.net (unknown [198.145.64.142])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id E5B72F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 23:08:57 +0000 (UTC)
To: Linus Torvalds <torvalds@linux-foundation.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>
References: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
	<CALCETrWsWGbo0B7=_AAOinJVCLrZbhJ75W2eUPxLCyo2BspBxA@mail.gmail.com>
	<alpine.DEB.2.21.1809081037440.1402@nanos.tec.linutronix.de>
	<20180908082141.15d72684@coco.lan> <20180908113411.GA3111@kroah.com>
	<1536418829.22308.1.camel@HansenPartnership.com>
	<20180908153235.GB11120@kroah.com>
	<1536422066.22308.3.camel@HansenPartnership.com>
	<CA+55aFwiW9eeC0Z1+HnhCVzH=LmfBQfpdFZ0eYSuHdp5U6bpEg@mail.gmail.com>
From: Dave Hansen <dave@sr71.net>
Message-ID: <cd13e5bd-1d1f-4e0b-4a64-ee6251172888@sr71.net>
Date: Mon, 10 Sep 2018 15:59:26 -0700
MIME-Version: 1.0
In-Reply-To: <CA+55aFwiW9eeC0Z1+HnhCVzH=LmfBQfpdFZ0eYSuHdp5U6bpEg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: mchehab+samsung@kernel.org, ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Handling of embargoed
 security issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 09/08/2018 12:49 PM, Linus Torvalds wrote:
> So I don't do NDA's. Maybe some Linux Foundation NDA agreement
> technically covers me, but at least with the Intel cases, Intel is
> actually aware of my non-NDA situation and is fine with it.

My *personal* observation on the NDAs:

Companies don't actually care about the NDA being an NDA per se.  They
really only want to feel like they are in control of the information.
They get that warm and fuzzy feeling from NDAs for normal
company-to-company interactions, which makes NDAs the go-to tool when
these security things pop up.

We (the community) are slowly showing the NDA-loving folks that <gasp>
they are not the _only_ tool available.  But, it's going to take time to
change the mindset.

I *do* wish that companies like Intel who are actively doing these
non-NDA things would find some way to share their methods.  Maybe the LF
can help here by providing a semi-anonymous way for folks to share what
has worked.  Or, maybe folks like Intel need to just to it ourselves.
