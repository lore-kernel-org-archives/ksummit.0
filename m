Return-Path: <arnd@arndb.de>
From: Arnd Bergmann <arnd@arndb.de>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Fri, 16 Sep 2016 13:46:14 +0200
Message-ID: <4604090.shkXlmNYJ6@wuerfel>
In-Reply-To: <CACRpkdb5+mw5CafFLWKr4vwcTVpO6FWUSiDifDOZ+oXAu_h7+A@mail.gmail.com>
References: <E9D83DEA-B8D1-4E51-AF9C-8C67CFEDCE39@linaro.org>
	<e833f782-4db9-2de2-b7e8-99ddfb998936@sandisk.com>
	<CACRpkdb5+mw5CafFLWKr4vwcTVpO6FWUSiDifDOZ+oXAu_h7+A@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
	ksummit-discuss@lists.linux-foundation.org,
	Greg KH <gregkh@linuxfoundation.org>, Jens Axboe <axboe@fb.com>,
	hare@suse.de, Tejun Heo <tj@kernel.org>,
	Bart Van Assche <bart.vanassche@sandisk.com>,
	osandov@osandov.com, Christoph Hellwig <hch@lst.de>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing long-standing
	high-latency problems related to I/O
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Friday, September 16, 2016 1:24:07 PM CEST Linus Walleij wrote:

> It is not super-useful on MMC/SD cards, because the load
> will simply bog down everything and your typical embedded
> system will start to behave like an updating Android phone
> "optimizing applications" which is a known issue that is
> caused by the slowness of eMMC. It also eats memory
> quickly and that way just kills any embedded system because
> of OOM before you can make any meaningful tests. But it
> can spawn any number of readers & writers and stress out
> your device very efficiently if you have enough memory
> and CPU. (It is apparently designed to test systems with
> lots of memory and CPU power.)

I think it's more complex than "the slowness of eMMC": I would
expect that in a read-only scenario, eMMC (or SD cards and
most USB sticks) does't do that bad, it may be one order of
magnitude slower than a hard drive but doesn't suffer from
seeks during read by nearly as much.

For writes, the situation is completely different on these,
as you can just hit extremely long delays (up to a second) on
a single write whenever the device goes into garbage collection
mode, during which no other I/O is done, and that ends up
stalling any process that is waiting for a read request.

> I mainly used fio on NAS type devices.
> For example on Marvell Kirkwood Pogoplug 4 with SATA, I
> can do a test like this to test an dmcrypt devicemapper thing:
> 
> fio --filename=/dev/dm-0 --direct=1 --iodepth=1 --rw=read --bs=64K \
> --size=1G --group_reporting --numjobs=1 --name=test_read
> 
> > Which I/O scheduler was used when measuring
> > performance with the traditional block layer?
> 
> I used CFQ, deadline, noop, and of course the BFQ patches.
> With BFQ I reproduced the figures reported by Paolo on a
> laptop but since his test cases use fio to stress the system
> and eMMC/SD are so slow, I couldn't come up with any good
> usecase using fio.
> 
> Any hints on better tests are welcome!
> In the kernel logs I only see peole doing a lot of dd
> tests which I think is silly, you need more serious
> test cases so it's good if we can build some consensus
> there.

My guess is that the impact of the file system is much greater
than the I/O scheduler. If the file system is well tuned
to the storage device (e.g. f2fs should be near ideal),
you can avoid most of the stalls regardless of the scheduler,
while with file systems that are not aware of flash geometry
at all (e.g. the now-removed ext3 code, especially with
journaling), the scheduler won't be able to help that much
either.

What file system did you use for testing, and which tuning
did you do for your storage devices?

Maybe a better long-term strategy is to improve the important
file systems (ext4, xfs, btrfs) further to work well with
flash storage through blk-mq.

	Arnd
