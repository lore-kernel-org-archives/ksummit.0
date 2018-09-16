Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AF94E8BF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 16 Sep 2018 19:25:17 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0E32E79
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 16 Sep 2018 19:25:16 +0000 (UTC)
Date: Sun, 16 Sep 2018 15:25:13 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20180916192513.GA3575@thunk.org>
References: <CAFhKne8kiF6k-QUJ9x-cCyBcVvfuWKdcUtQZNz=1sx_iHR+64g@mail.gmail.com>
	<1537115870.3056.1.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1537115870.3056.1.camel@HansenPartnership.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Project Banbury
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Sep 16, 2018 at 09:37:50AM -0700, James Bottomley wrote:
> 
> For a lot of modern external storage devices this simply can't be made
> to work.  The reason is they all have an internal write back cache to
> make operations faster and if they're SATA they may lie about it and if
> they're USB they always lie about it.  For these devices we have a set
> of writes that we think are completed but in-fact only hit the device
> cache.  When you pulled it out, the cache was lost and so were these
> writes.  This is unfixable on the host side unless there's some way we
> can get the device to tell us it has a write back cache and behave
> correctly with regard to flushes.
> 
> Even for devices that behave correctly, we currently have no real way
> to repeat the I/O that was lost in the powered down cache, unless you
> have a way to cope with this case (it doesn't seem to be accounted for
> in your plan)?  The reason is we use barrier type caches which assume
> everything behind them is available to the device (either on disk or in
> the cache).  The block layer would need some way to replay I/Os (in
> order) from the last barrier because some of them might have been lost
> from the cache.
> 
> Provided we have write through caches (not a given), the lower layer
> error handling will mostly take care of repeating the lost but
> unacknowledged I/O provided you preserve the queue, so I agree that
> part can work, but the big thing is having a write through cache.

The way I'd suggest approaching this is not by making any changes in
the block layer at all.  Instead, I'd suggest putting all of the magic
into a device-mapper device.  The device mapper driver would be
responsible for keeping a copy of all blocks written to the removeable
device in kernel memory.  This would work much like the TCP retransmit
buffers; which is to say, until we are *sure* that we don't need to
retransmit the writes to the device, we have to keep a copy in
non-swappable kernel memory.

To avoid overflowing all available memory, there must be a
configurable cap of the maximum memory that can be used for retransmit
buffers; and to periodically send a CACHE FLUSH command to the block
device to free up buffer space once the device has acknowledged the
CACHE FLUSH command.

If the real device ever gets yanked, this ends up disconnecting the
block device from the device-mapper psuedo-device.  When the USB thumb
drive gets plugged back in, userspace would be responsible for
determining that it is the previously attached external attach, and
reconnecting it to the device-mapper device, which can then replay all
of the blocks in retransmit buffers.

Advantages of this strategy:

* No need to make changes to the block device layer

* The overhead of dealing with removable devices can be avoided for
  devices which are non-removeable.

* It deals with devices that don't support a write through cache; it
  only requires devices that don't lie about supporting CACHE FLUSH
  correctly.

						- Ted
