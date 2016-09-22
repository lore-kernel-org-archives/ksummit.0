Return-Path: <linus.walleij@linaro.org>
MIME-Version: 1.0
In-Reply-To: <CAPDyKFoDFbOuL2y-OvAFwMY9nu_kDDyV0o9h-2F+Ji2s5MEutw@mail.gmail.com>
References: <E9D83DEA-B8D1-4E51-AF9C-8C67CFEDCE39@linaro.org>
	<20160916082415.GA15313@kroah.com>
	<CACRpkdZqXTuPVs8mLLXE=G7VETe+K6MJDFYGTz_LnDWqaJik8g@mail.gmail.com>
	<CAPDyKFoDFbOuL2y-OvAFwMY9nu_kDDyV0o9h-2F+Ji2s5MEutw@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 22 Sep 2016 13:06:47 +0200
Message-ID: <CACRpkdayND7+8AYcxTDCUC+y9RJYDWsN8r-mddW8xw9Y8Sn_Lg@mail.gmail.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Content-Type: text/plain; charset=UTF-8
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
	ksummit-discuss@lists.linux-foundation.org,
	Greg KH <gregkh@linuxfoundation.org>, Jens Axboe <axboe@fb.com>,
	hare@suse.de, Tejun Heo <tj@kernel.org>,
	Omar Sandoval <osandov@osandov.com>, Christoph Hellwig <hch@lst.de>
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

On Thu, Sep 22, 2016 at 11:18 AM, Ulf Hansson <ulf.hansson@linaro.org> wrote:
> On 16 September 2016 at 10:59, Linus Walleij <linus.walleij@linaro.org> wrote:

>> I only have handwavy arguments about the latter being the
>> case which is why I'm working on a patch to MMC/SD to
>> switch to mq as an RFT. It's taking some time though, alas
>> I'm not very smart.
>
> I appreciate this! I don't expect it to be easy, as you would probably
> have to rip out most of the mmc block/core code related to request
> management.
>
> For example, I guess the asynchronous request mechanism doesn't really
> fit into blkmq, does it?

Nopes. I have no idea how to make that work.

I got blk-mq running for MMC/SD today and I see a gross performance
regression, from 37 MB/s to 27 MB/s on Ux500 7.38 GB eMMC
with a simple dd test:

BEFORE switching to MQ:

time dd if=/dev/mmcblk3 of=/dev/null bs=1M count=1024
1073741824 bytes (1.0GB) copied, 27.530335 seconds, 37.2MB/s
real    0m 27.54s
user    0m 0.02s
sys     0m 7.56s

AFTER switching to MQ:

time dd if=/dev/mmcblk3 of=/dev/null bs=1M count=1024
1073741824 bytes (1.0GB) copied, 37.170990 seconds, 27.5MB/s
real    0m 37.18s
user    0m 0.02s
sys     0m 7.32s

I will however post my hacky patch as a RFD to the blockdevs and
the block maintainers, along with the numbers and a speculation
about what may be causing it. asynchronous requests (request
pipelining) is one thing, another thing is front/back merge in
the block layer I guess.

I think I should give the blkdevs will have the opportunity to tell me
off for all the stupid ways in which I should *not* be using MQ
before we draw any conclusions from this...

Yours,
Linus Walleij
