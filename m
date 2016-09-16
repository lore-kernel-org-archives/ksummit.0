Return-Path: <paolo.valente@linaro.org>
Content-Type: text/plain; charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Paolo Valente <paolo.valente@linaro.org>
In-Reply-To: <4604090.shkXlmNYJ6@wuerfel>
Date: Fri, 16 Sep 2016 15:10:22 +0200
Content-Transfer-Encoding: quoted-printable
Message-Id: <5E6565E9-28F8-48EC-8223-3D51B7FFE017@linaro.org>
References: <E9D83DEA-B8D1-4E51-AF9C-8C67CFEDCE39@linaro.org>
	<e833f782-4db9-2de2-b7e8-99ddfb998936@sandisk.com>
	<CACRpkdb5+mw5CafFLWKr4vwcTVpO6FWUSiDifDOZ+oXAu_h7+A@mail.gmail.com>
	<4604090.shkXlmNYJ6@wuerfel>
To: Arnd Bergmann <arnd@arndb.de>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
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


> Il giorno 16 set 2016, alle ore 13:46, Arnd Bergmann <arnd@arndb.de> =
ha scritto:
>=20

<snip>

> My guess is that the impact of the file system is much greater
> than the I/O scheduler. If the file system is well tuned
> to the storage device (e.g. f2fs should be near ideal),
> you can avoid most of the stalls regardless of the scheduler,
> while with file systems that are not aware of flash geometry
> at all (e.g. the now-removed ext3 code, especially with
> journaling), the scheduler won't be able to help that much
> either.
>=20

If I have not misunderstood your guess, then it actually does not
match our results for any test case [1].  More precisely, certain
filesystems do improve performance for certain, or sometimes most
workloads, but responsiveness, starvation and frame-drop issues remain
basically unchanged.  Per-filesystems results are not reported in [1],
but, if you want, I can reproduce them for the filesystems you
suggest.

According to our experience, the fundamental problem is that either

1) The I/O scheduler goes on choosing the wrong I/O requests to
dispatch for very long: seconds, minutes, or forever, depending on the
workload and the scheduler.  For example, one tries to start a new
application while one or more files are being copied, and the I/O
requests of the starting application are served very rarely, or not
served at all until the copy is finished.  Then the application takes
a very long time to start, or simply does not start until the copy is
finished.

or

2) The I/O scheduler does nothing (noop), or does not exist (blk-mq),
so service order is FIFO plus internal reordering in the storage
device, where internal reordering is most often aimed at maximizing
throughput.  In this case, the problem described for the previous case
usually gets much worse, because any Linux scheduler, apart from noop,
tends somehow to achieve fairness and reduce latency.

Thanks, Paolo

[1] http://algogroup.unimore.it/people/paolo/disk_sched/results.php

> What file system did you use for testing, and which tuning
> did you do for your storage devices?
>=20
> Maybe a better long-term strategy is to improve the important
> file systems (ext4, xfs, btrfs) further to work well with
> flash storage through blk-mq.
>=20
> 	Arnd
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
