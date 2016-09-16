Return-Path: <linus.walleij@linaro.org>
MIME-Version: 1.0
In-Reply-To: <e833f782-4db9-2de2-b7e8-99ddfb998936@sandisk.com>
References: <E9D83DEA-B8D1-4E51-AF9C-8C67CFEDCE39@linaro.org>
	<20160916082415.GA15313@kroah.com>
	<CACRpkdZqXTuPVs8mLLXE=G7VETe+K6MJDFYGTz_LnDWqaJik8g@mail.gmail.com>
	<e833f782-4db9-2de2-b7e8-99ddfb998936@sandisk.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 16 Sep 2016 13:24:07 +0200
Message-ID: <CACRpkdb5+mw5CafFLWKr4vwcTVpO6FWUSiDifDOZ+oXAu_h7+A@mail.gmail.com>
To: Bart Van Assche <bart.vanassche@sandisk.com>
Content-Type: text/plain; charset=UTF-8
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
	ksummit-discuss@lists.linux-foundation.org,
	Greg KH <gregkh@linuxfoundation.org>, Jens Axboe <axboe@fb.com>,
	hare@suse.de, Tejun Heo <tj@kernel.org>, osandov@osandov.com,
	Christoph Hellwig <hch@lst.de>
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

On Fri, Sep 16, 2016 at 11:10 AM, Bart Van Assche
<bart.vanassche@sandisk.com> wrote:

> What was your reference when comparing blk-mq MMC/SD performance with the
> current implementation?

I have *NOT* compared the performance, since I did not
manage to replace blk with blk mq in MMC/SD yet.

If someone else has more experience and can do this in
5 minutes to get a rough measure I would appreciate to
see it.

I am working on it from the bottom up, trying to make
a not too stupid search/and/substitute replacement. As MMC
is doing a lot of stacking requests and looking ahead and behind
and what not, this needs to be done thoroughly.

But this is the reference tests I have used for CFQ vs BFQ
comparisons so far:

Hardware:
- ARM Integrator/AP IM-PD1 SD-card at 300kHz (!)
- Ux500 with 7.18GiB eMMC
- Ux500 with SanDisk 4GiB uSD card
- ARM Juno with 2GiB Kingston uSD card
- ARM Juno with SanDisk  4GiB uSD card
- Marvell Kirkwood Feroceon ARM with 2GiB SD card

First the standard dd-write/read test of course, because if you
have performance issues there you can just forget about everything
else. Looks something like:
time dd if=/dev/mmcblk0 of=/dev/null bs=1M count=1024 iflag=direct

That is with busybox dd/time.

Then I used iozone which is something the mobile industry had
traditionally used to provide some figures on storage throughput,
as many just want a figure to put on their whitepaper, they use
iozone, which will read and write a number of blocks of varying
size, re-read it, re-write it and also perform reads and writes
at random offsets:
http://www.iozone.org/

I just usually use it like so:
mount /dev/mmcblk0p1 /mnt
iozone -az -i0 -i1 -i2 -s 20m -I -f /mnt/foo.test

Both of these are simple to cross compile and run from an
initramfs on ARM targets.

Then I use Jens Axboe's fio. This is a more complicated beast
intended to generate real-world workloads to emulate the load
on your random Google or Facebook database server or image
cluser or Idon'tknowwhat.
https://github.com/axboe/fio

It is not super-useful on MMC/SD cards, because the load
will simply bog down everything and your typical embedded
system will start to behave like an updating Android phone
"optimizing applications" which is a known issue that is
caused by the slowness of eMMC. It also eats memory
quickly and that way just kills any embedded system because
of OOM before you can make any meaningful tests. But it
can spawn any number of readers & writers and stress out
your device very efficiently if you have enough memory
and CPU. (It is apparently designed to test systems with
lots of memory and CPU power.)

I mainly used fio on NAS type devices.
For example on Marvell Kirkwood Pogoplug 4 with SATA, I
can do a test like this to test an dmcrypt devicemapper thing:

fio --filename=/dev/dm-0 --direct=1 --iodepth=1 --rw=read --bs=64K \
--size=1G --group_reporting --numjobs=1 --name=test_read

> Which I/O scheduler was used when measuring
> performance with the traditional block layer?

I used CFQ, deadline, noop, and of course the BFQ patches.
With BFQ I reproduced the figures reported by Paolo on a
laptop but since his test cases use fio to stress the system
and eMMC/SD are so slow, I couldn't come up with any good
usecase using fio.

Any hints on better tests are welcome!
In the kernel logs I only see peole doing a lot of dd
tests which I think is silly, you need more serious
test cases so it's good if we can build some consensus
there.

What do you guys at SanDisk use?

Yours,
Linus Walleij
