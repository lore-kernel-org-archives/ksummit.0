Return-Path: <rdunlap@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 48C3AC6D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Sep 2019 03:05:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CFFB9887
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Sep 2019 03:05:12 +0000 (UTC)
To: Olof Johansson <olof@lixom.net>, "Theodore Y. Ts'o" <tytso@mit.edu>
References: <20190830031720.GA7490@mit.edu> <20190830135857.GF7013@google.com>
	<CAPM=9tymLW8dS_3OD0J9mvSMWpmcs3WWBEQS=gtzX0Zyz-umHg@mail.gmail.com>
	<20190902222240.GE3367@mit.edu>
	<CAOesGMgOhknM8eZDv+Tr+0C6+ekm7DfxU5GdfW8Zop6Ryq-Kyg@mail.gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <d8103fae-1012-bdff-e7bd-4e32ceb26cb2@infradead.org>
Date: Mon, 2 Sep 2019 20:05:10 -0700
MIME-Version: 1.0
In-Reply-To: <CAOesGMgOhknM8eZDv+Tr+0C6+ekm7DfxU5GdfW8Zop6Ryq-Kyg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Bjorn Helgaas <helgaas@kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Topics for the Maintainer's Summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 9/2/19 7:35 PM, Olof Johansson wrote:
> On Mon, Sep 2, 2019 at 3:22 PM Theodore Y. Ts'o <tytso@mit.edu> wrote:
>>
>> On Tue, Sep 03, 2019 at 06:42:55AM +1000, Dave Airlie wrote:
>>> On Friday, 30 August 2019, Bjorn Helgaas <helgaas@kernel.org> wrote:
>>>
>>>> On Thu, Aug 29, 2019 at 11:17:20PM -0400, Theodore Y. Ts'o wrote:
>>>>> ...
>>>>> Are there some additional topics that you'd like to suggest that we
>>>>> discuss at the maintainer's summit?
>>>>
>>>> I don't have an effective workflow for managing incoming patches.  I
>>>> use a hodge-podge of patchwork, gmail, mutt, and ugly private scripts
>>>> to put patches on topic branches, review them, polish them, merge them
>>>> together into a "-next" branch, generate pull requests, etc.
>>>>
>>>> I wish there were a collection of the workflows and scripts people
>>>> use, maybe even in the kernel sources so they could be shared and
>>>> improved.  Some short screencasts could help visualize and pull things
>>>> together.  I know a lot of this stuff is "out there" somewhere, but
>>>> I'm not aware of any organized collection.
>>>
>>>
>>> These are quite drm specific but they do mean myself and Daniel can operate
>>> seamlessly, and all i915 and drm misc maintainers and committers use the
>>> same enforced workflow. We hope to move to gitlab at some point and may try
>>> and use the same interface or not.
>>>
>>>  https://drm.pages.freedesktop.org/maintainer-tools/index.html
>>>
>>> Happy to give more info at maintainer summit, but we have gotten negative
>>> feedback in the past from some community members who wanted to point out at
>>> length that drm didnt invent group maintainership first, i still have no
>>> idea of the relevancy of the comment.
>>
>> Are there are other people who have interest in sharing their
>> workflow?  I'm wonder if it might be useful to schedule time during
>> the kernel summit, so it's open for more people to benefit from this
>> sharing?  (Also note that Kernel Summit track sessions will be video
>> taped for posterity, while Maintainer Summit discussions are *not*
>> recorded.)
> 
> Sharing workflow sessions are a repeating theme, but I think there's
> still a good amount of interest in them since things change over time,
> and there's always a lot to learn from how others deal with things.
> 
> I've found that sharing exact tool suites tends to be hard, people are
> often comfortable with the pile-of-scripts they have. But there's
> still value in seeing how others have solved things, and borrow ideas
> or pieces of the workflow.
> 
> Steven's ktest that's in the kernel tree is a good example -- I like
> the idea, but it didn't do quite what I needed, and it was easier to
> just roll my own back when I first looked at using it. It doesn't mean
> others won't reuse it 100%, and it doesn't mean it's not a good idea
> to share them.
> 
> I agree that it's probably a great idea to do on the wider KS forum
> instead, for wider audience. Maybe a BoF-style talk with show-and-tell
> and/or others also showing what and how they do it is useful?

Please just make sure that it is recorded for non-attendees to be able
to make use of it.

-- 
~Randy
