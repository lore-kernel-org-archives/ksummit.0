Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 53182B77
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 13:34:02 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0F043240
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 13:34:01 +0000 (UTC)
Message-ID: <1492695238.27758.19.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Christoph Hellwig <hch@infradead.org>, Jiri Kosina <jikos@kernel.org>
Date: Thu, 20 Apr 2017 06:33:58 -0700
In-Reply-To: <20170420052316.GA24503@infradead.org>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<s5hd1c9wl4b.wl-tiwai@suse.de>
	<CA+55aFzo0dPdEYvGBRvpoUQ1ZGsDUMO+n1dv2fDNvP4Y-=31zQ@mail.gmail.com>
	<20170418181506.30de0470@vento.lan> <20170419163636.6747a232@lwn.net>
	<alpine.LSU.2.20.1704200037430.12121@cbobk.fhfr.pm>
	<20170420052316.GA24503@infradead.org>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Miller <davem@davemloft.net>, Doug Ledford <dledford@redhat.com>,
	Ingo Molnar <mingo@kernel.org>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2017-04-19 at 22:23 -0700, Christoph Hellwig wrote:
> On Thu, Apr 20, 2017 at 12:41:04AM +0200, Jiri Kosina wrote:
> > There is one piece of feedback I guess I can share right away on 
> > this -- I've heard so many complaints that Doc<tab>/kern<tab>
> > -par<tab> completion stopped to yield Documentation/kernel
> > -parameters.txt that it's not really funny any more :)
> 
> Yeah.  All this moving files around really messed up my workflows.
> Let's see if I'll be able to adjust eventually.

Seconded.  The one that trips me up the most is the uapi one ... I
always forget that include/linux/X.h might have an
include/uapi/linux/X.h counterpart which is where the structure I'm
looking for actually is.

I think it's worth discussing this.  We accept a lot of patches because
we can and because the change looks innocuous enough, but which don't
actually have a tangible user visible benefit.  Should we actually have
a net benefit threshold test we apply?

James
