Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5F89FC9A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 16 Sep 2018 16:37:53 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F2A55102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 16 Sep 2018 16:37:52 +0000 (UTC)
Message-ID: <1537115870.3056.1.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Matthew Wilcox <willy6545@gmail.com>,
	ksummit-discuss@lists.linuxfoundation.org
Date: Sun, 16 Sep 2018 09:37:50 -0700
In-Reply-To: <CAFhKne8kiF6k-QUJ9x-cCyBcVvfuWKdcUtQZNz=1sx_iHR+64g@mail.gmail.com>
References: <CAFhKne8kiF6k-QUJ9x-cCyBcVvfuWKdcUtQZNz=1sx_iHR+64g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Project Banbury
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2018-09-14 at 18:28 +0100, Matthew Wilcox wrote:
> We've all pulled the wrong drive out of a machine or unplugged a USB
> key before the write back has completely finished. You try to plug it
> back in, but the damage is done. The pending writes are lost, the
> filesystem is damaged and full of errors and you are having a Bad
> Day. What if ... plugging the drive back in could be made to work?

For a lot of modern external storage devices this simply can't be made
to work.  The reason is they all have an internal write back cache to
make operations faster and if they're SATA they may lie about it and if
they're USB they always lie about it.  For these devices we have a set
of writes that we think are completed but in-fact only hit the device
cache.  When you pulled it out, the cache was lost and so were these
writes.  This is unfixable on the host side unless there's some way we
can get the device to tell us it has a write back cache and behave
correctly with regard to flushes.

Even for devices that behave correctly, we currently have no real way
to repeat the I/O that was lost in the powered down cache, unless you
have a way to cope with this case (it doesn't seem to be accounted for
in your plan)?  The reason is we use barrier type caches which assume
everything behind them is available to the device (either on disk or in
the cache).  The block layer would need some way to replay I/Os (in
order) from the last barrier because some of them might have been lost
from the cache.

Provided we have write through caches (not a given), the lower layer
error handling will mostly take care of repeating the lost but
unacknowledged I/O provided you preserve the queue, so I agree that
part can work, but the big thing is having a write through cache.

James
