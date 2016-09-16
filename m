Return-Path: <Bart.VanAssche@sandisk.com>
To: Linus Walleij <linus.walleij@linaro.org>
References: <E9D83DEA-B8D1-4E51-AF9C-8C67CFEDCE39@linaro.org>
	<20160916082415.GA15313@kroah.com>
	<CACRpkdZqXTuPVs8mLLXE=G7VETe+K6MJDFYGTz_LnDWqaJik8g@mail.gmail.com>
	<e833f782-4db9-2de2-b7e8-99ddfb998936@sandisk.com>
	<CACRpkdb5+mw5CafFLWKr4vwcTVpO6FWUSiDifDOZ+oXAu_h7+A@mail.gmail.com>
From: Bart Van Assche <bart.vanassche@sandisk.com>
Message-ID: <1d22aa72-79f8-4640-5dda-1c14a6cb7da0@sandisk.com>
Date: Fri, 16 Sep 2016 13:53:39 +0200
MIME-Version: 1.0
In-Reply-To: <CACRpkdb5+mw5CafFLWKr4vwcTVpO6FWUSiDifDOZ+oXAu_h7+A@mail.gmail.com>
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit
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

On 09/16/2016 01:24 PM, Linus Walleij wrote:
> What do you guys at SanDisk use?

Hello Linus,

We use fio for block device performance measurements. Before we run fio 
we disable C-state and P-state transitions to make sure that the results 
will not depend on any frequency scaling algorithm. Furthermore, we 
install a udev rule that sets the following block layer parameters for 
non-rotational devices: add_random=0 and rq_affinity=2.

Bart.
