Return-Path: <ulf.hansson@linaro.org>
MIME-Version: 1.0
In-Reply-To: <CACRpkdZqXTuPVs8mLLXE=G7VETe+K6MJDFYGTz_LnDWqaJik8g@mail.gmail.com>
References: <E9D83DEA-B8D1-4E51-AF9C-8C67CFEDCE39@linaro.org>
	<20160916082415.GA15313@kroah.com>
	<CACRpkdZqXTuPVs8mLLXE=G7VETe+K6MJDFYGTz_LnDWqaJik8g@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 22 Sep 2016 11:18:47 +0200
Message-ID: <CAPDyKFoDFbOuL2y-OvAFwMY9nu_kDDyV0o9h-2F+Ji2s5MEutw@mail.gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>
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

On 16 September 2016 at 10:59, Linus Walleij <linus.walleij@linaro.org> wrote:
> On Fri, Sep 16, 2016 at 10:24 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
>> On Fri, Sep 16, 2016 at 09:55:45AM +0200, Paolo Valente wrote:
>>> Linux systems suffers from long-standing high-latency problems, at
>>> system and application level, related to I/O.  For example, they
>>> usually suffer from poor responsiveness--or even starvation, depending
>>> on the workload--while, e.g., one or more files are being
>>> read/written/copied.  On a similar note, background workloads may
>>> cause audio/video playback/streaming to stutter, even with long gaps.
>>> A lot of test results on this problem can be found here [1] (I'm
>>> citing only this resource just because I'm familiar with it, but
>>> evidence can be found in countless technical reports, scientific
>>> papers, forum discussions, and so on).
>>
>> <snip>
>>
>> Isn't this a better topic for the Vault conference, or the storage mini
>> conference?
>
> Paolo was invited to the kernel summit and I guess so are the
> core block maintainers: Jens, Tejun, Christoph. The right people are
> there so why not take the opportunity.
>
> If for nothing else just have a formal chat.

Whatever form works for me! Although, I may join first at Tuesday as I
will be at LPC.

>
> Overall I personally think the most KS-related discussion would be
> to address the problems Paolo has had to break into the block layer
> development community and the conflicting responses to the patch
> sets, which generated a few flak comments under the last LWN
> article:
> http://lwn.net/Articles/674308/
>
> The main problem is that unlike some random driver this cannot
> be put into staging and adding it as a secondary (or tertiary or
> whatever) scheduling policy in block/* was explicitly nixed.
>
> AFAICT there is no clear answer from the block maintainers
> regarding:
>
> - Is the old blk layer deprecated or not? Christoph seems to
>   say "yes, forget it, work on mq", but I am still unsure about Jens
>   and Tejuns positions here. Would be nice with some consensus.
>   If it is deprecated it would make sense not to merge any new
>   code using it, right?
>
> - When is an all-out transition to mq really going to happen?
>   "When it's ready and all blk consumers are migrated" is a good
>   answer, but pretty unhelpful for developers like Paolo.
>   Can we get a clearer picture?
>
> - What will subsystems (especially my pet peeve about MMC/SD
>   which is single-queue by nature) that experience a performance
>   regression with a switch to mq do? Not switch until mq has a
>   scheduling policy? Switch and suck up the performance regression,
>   multiplied by the number of Android handheld devices on the
>   planet?

With my MMC hat on, I would of course appreciate to reach a consensus
about the three topics above.
To me, the KS seems like a very good opportunity to meet and discuss
this, especially since it seems like many important stakeholders will
be there.

>
> I only have handwavy arguments about the latter being the
> case which is why I'm working on a patch to MMC/SD to
> switch to mq as an RFT. It's taking some time though, alas
> I'm not very smart.

I appreciate this! I don't expect it to be easy, as you would probably
have to rip out most of the mmc block/core code related to request
management.

For example, I guess the asynchronous request mechanism doesn't really
fit into blkmq, does it?

Kind regards
Ulf Hansson
