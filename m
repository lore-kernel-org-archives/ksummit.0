Return-Path: <labbott@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 76057D12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Sep 2019 13:29:39 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 490A3831
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Sep 2019 13:29:38 +0000 (UTC)
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
	[209.85.160.200])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id A360681DE7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Sep 2019 13:29:37 +0000 (UTC)
Received: by mail-qt1-f200.google.com with SMTP id 38so18984109qtx.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 03 Sep 2019 06:29:37 -0700 (PDT)
To: "Theodore Y. Ts'o" <tytso@mit.edu>, Dave Airlie <airlied@gmail.com>
References: <20190830031720.GA7490@mit.edu> <20190830135857.GF7013@google.com>
	<CAPM=9tymLW8dS_3OD0J9mvSMWpmcs3WWBEQS=gtzX0Zyz-umHg@mail.gmail.com>
	<20190902222240.GE3367@mit.edu>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <574c0ccd-730a-eada-966c-58f5de7c9477@redhat.com>
Date: Tue, 3 Sep 2019 09:29:34 -0400
MIME-Version: 1.0
In-Reply-To: <20190902222240.GE3367@mit.edu>
Content-Type: text/plain; charset=utf-8; format=flowed
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

On 9/2/19 6:22 PM, Theodore Y. Ts'o wrote:
> On Tue, Sep 03, 2019 at 06:42:55AM +1000, Dave Airlie wrote:
>> On Friday, 30 August 2019, Bjorn Helgaas <helgaas@kernel.org> wrote:
>>
>>> On Thu, Aug 29, 2019 at 11:17:20PM -0400, Theodore Y. Ts'o wrote:
>>>> ...
>>>> Are there some additional topics that you'd like to suggest that we
>>>> discuss at the maintainer's summit?
>>>
>>> I don't have an effective workflow for managing incoming patches.  I
>>> use a hodge-podge of patchwork, gmail, mutt, and ugly private scripts
>>> to put patches on topic branches, review them, polish them, merge them
>>> together into a "-next" branch, generate pull requests, etc.
>>>
>>> I wish there were a collection of the workflows and scripts people
>>> use, maybe even in the kernel sources so they could be shared and
>>> improved.  Some short screencasts could help visualize and pull things
>>> together.  I know a lot of this stuff is "out there" somewhere, but
>>> I'm not aware of any organized collection.
>>
>>
>> These are quite drm specific but they do mean myself and Daniel can operate
>> seamlessly, and all i915 and drm misc maintainers and committers use the
>> same enforced workflow. We hope to move to gitlab at some point and may try
>> and use the same interface or not.
>>
>>   https://drm.pages.freedesktop.org/maintainer-tools/index.html
>>
>> Happy to give more info at maintainer summit, but we have gotten negative
>> feedback in the past from some community members who wanted to point out at
>> length that drm didnt invent group maintainership first, i still have no
>> idea of the relevancy of the comment.
> 
> Are there are other people who have interest in sharing their
> workflow?  I'm wonder if it might be useful to schedule time during
> the kernel summit, so it's open for more people to benefit from this
> sharing?  (Also note that Kernel Summit track sessions will be video
> taped for posterity, while Maintainer Summit discussions are *not*
> recorded.)

It's great that we can share these workflows but it still feels like a
bit of an anti-pattern that we even _need_ to do so. The problem is
everyone has their own 'pet' workflow and while you can certainly
adopt one, I think we're at the point where we do need something in
common for all workflows for the sake of automation (see the number
of testing topics that are about automation)

Maybe part of this discussion should be if we can't mandate a single
workflow, what parts of a maintainer workflow should be common for
the benefit of everyone?

Thanks,
Laura
