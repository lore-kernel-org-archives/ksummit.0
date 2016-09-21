Return-Path: <Bart.VanAssche@sandisk.com>
To: Paolo Valente <paolo.valente@linaro.org>,
	<ksummit-discuss@lists.linux-foundation.org>
References: <E9D83DEA-B8D1-4E51-AF9C-8C67CFEDCE39@linaro.org>
From: Bart Van Assche <bart.vanassche@sandisk.com>
Message-ID: <8adc094c-bf02-ecc3-67ac-7ffac3ef2491@sandisk.com>
Date: Wed, 21 Sep 2016 07:30:10 -0700
MIME-Version: 1.0
In-Reply-To: <E9D83DEA-B8D1-4E51-AF9C-8C67CFEDCE39@linaro.org>
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit
Cc: b.zolnierkie@samsung.com, Jens Axboe <axboe@fb.com>, hare@suse.de,
	Tejun Heo <tj@kernel.org>, osandov@osandov.com, hch@lst.de
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

On 09/16/16 00:55, Paolo Valente wrote:
> Linux systems suffers from long-standing high-latency problems, at
> system and application level, related to I/O.

Hello Paolo,

Are you aware of Jens' throttled background buffered writeback work? If 
not, can you repeat your measurements against a kernel on which these 
patches have been applied? See also 
http://www.spinics.net/lists/linux-fsdevel/msg101391.html.

Thanks,

Bart.
