Return-Path: <Bart.VanAssche@sandisk.com>
To: Linus Walleij <linus.walleij@linaro.org>, Greg KH
	<gregkh@linuxfoundation.org>
References: <E9D83DEA-B8D1-4E51-AF9C-8C67CFEDCE39@linaro.org>
	<20160916082415.GA15313@kroah.com>
	<CACRpkdZqXTuPVs8mLLXE=G7VETe+K6MJDFYGTz_LnDWqaJik8g@mail.gmail.com>
From: Bart Van Assche <bart.vanassche@sandisk.com>
Message-ID: <e833f782-4db9-2de2-b7e8-99ddfb998936@sandisk.com>
Date: Fri, 16 Sep 2016 11:10:54 +0200
MIME-Version: 1.0
In-Reply-To: <CACRpkdZqXTuPVs8mLLXE=G7VETe+K6MJDFYGTz_LnDWqaJik8g@mail.gmail.com>
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
	ksummit-discuss@lists.linux-foundation.org,
	Jens Axboe <axboe@fb.com>, hare@suse.de,
	Tejun Heo <tj@kernel.org>, osandov@osandov.com, Christoph
	Hellwig <hch@lst.de>
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

On 09/16/2016 10:59 AM, Linus Walleij wrote:
> - What will subsystems (especially my pet peeve about MMC/SD
>   which is single-queue by nature) that experience a performance
>   regression with a switch to mq do? Not switch until mq has a
>   scheduling policy? Switch and suck up the performance regression,
>   multiplied by the number of Android handheld devices on the
>   planet?
>
> I only have handwavy arguments about the latter being the
> case which is why I'm working on a patch to MMC/SD to
> switch to mq as an RFT. It's taking some time though, alas
> I'm not very smart.

Hello Linus,

What was your reference when comparing blk-mq MMC/SD performance with 
the current implementation? Which I/O scheduler was used when measuring 
performance with the traditional block layer? If it was not noop, how 
does blk-mq performance of MMC/SD compare to the performance of the 
current implementation with noop scheduler?

Thanks,

Bart.
