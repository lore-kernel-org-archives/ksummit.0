Return-Path: <rdunlap@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6EC2CD0D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 15:26:22 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3D0F57CF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 15:26:21 +0000 (UTC)
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CAMuHMdVj28tZKep+DPA4W3vz28hPRZTWAb7BtuQBBTSWT3Brnw@mail.gmail.com>
	<20180917100413.22eac00d@coco.lan> <2072478.UYspZ1xLTN@avalon>
	<20180917115916.37fd5388@coco.lan>
	<CAPM=9tzSaQX7iVCH94jrM+xgEveY4B8+DwQSykiE3L0BM-s-Pw@mail.gmail.com>
	<5b434160-07d9-4071-ac77-9d64ea69c980@email.android.com>
	<CAKMK7uExDUFjXcX6zPmZMjse6gf00bO-uBsjiWMk+vqjV2MEvQ@mail.gmail.com>
	<1537269419.3424.1.camel@HansenPartnership.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <b7d3bb79-d2d1-ee41-e75a-dd71626397e6@infradead.org>
Date: Tue, 18 Sep 2018 08:26:13 -0700
MIME-Version: 1.0
In-Reply-To: <1537269419.3424.1.camel@HansenPartnership.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
 management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 9/18/18 4:16 AM, James Bottomley wrote:
> On Tue, 2018-09-18 at 10:00 +0200, Daniel Vetter wrote:
>> On Tue, Sep 18, 2018 at 1:04 AM, James Bottomley
>> <James.Bottomley@hansenpartnership.com> wrote:
>>> On September 17, 2018 4:39:48 PM MST, Dave Airlie <airlied@gmail.co
>>> m> wrote:
>>>>> This is a valid point: whatever development process is used,
>>>>> drive-by contributors should be allowed to send e-mails without
>>>>> needing to
>>>>
>>>> subscribe
>>>>> (neither to a moderated list nor to a web-UI). I don't care how
>>>>> the maintainer will handle such patches, provided that they
>>>>> will be
>>>>
>>>> properly handled.
>>>>>
>>>>
>>>> It really depends on what type of one-off contributor they are.
>>>>
>>>> Setting up git send-email isn't trivial for everyone, if you are
>>>> a gmail user and work for a company that doesn't embrace smtp so
>>>> much, then having a webui and https git access will be a lot
>>>> easier for one-off contributions.
>>>
>>> Agree with this but that's why I don't use git-send-email
>>>
>>>> Beware of thinking our setup with email is in any way simple for
>>>> a newcomer to setup properly.
>>>
>>> Right, but there are many other ways of doing this which still work
>>> with mailing lists.
>>
>> Aside from bare diffs stuffed into plaintext mails directly (which I
>> is a lot harder to set up than git send-email for new people),
> 
> Well, that is how I do it: git format-patch followed by preformatted
> text insertion in evolution.  I've got to say I don't find it at all
> hard, but I do understand if you use outlook or gmail it can be a pain.

Ack.  I use git send-email for a series, but for single patches,
it's more of a pain than just using an email client.

>>  what else is there that works with mailing lists? I'd be great if we
>> have other options here, since it is a fairly annoying problem for
>> us.
> 
> This is more about mail tools than actual lists, isn't it?  In which
> case I find the Documentation/email-clients.txt and invaluable resource
>  to point people to (wait, where is it now, ah:
> Documentation/process/email-clients.rst)

Thanks.

-- 
~Randy
