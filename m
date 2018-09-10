Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 571EF128F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 20:50:52 +0000 (UTC)
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BDA95766
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 20:50:51 +0000 (UTC)
Received: by mail-io0-f175.google.com with SMTP id q4-v6so1806989iob.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 13:50:51 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <4225967.GZjQHerNMI@avalon>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<20180910154738.GA3712@chatter>
	<CAKMK7uFyW-Xfhe1mWESjrcVzPzKzKEJr8BibUPPLgBTWbTSATA@mail.gmail.com>
	<4225967.GZjQHerNMI@avalon>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 10 Sep 2018 22:50:50 +0200
Message-ID: <CAKMK7uFLMqS2btMQSdKPFjiUZHi8K7uvZxpni0TfCxkT29=tMw@mail.gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="UTF-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
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

On Mon, Sep 10, 2018 at 9:48 PM, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
> Hi Daniel,
>
> On Monday, 10 September 2018 19:07:35 EEST Daniel Vetter wrote:
>> On Mon, Sep 10, 2018 at 5:47 PM, Konstantin Ryabitsev wrote:
>> > On Mon, Sep 10, 2018 at 03:38:07PM +0000, Sasha Levin wrote:
>> >> Yes, some maintainers started adding links to lkml archives, but those
>> >> are very inconsistent and often just point to the patch submission
>> >> rather than relevant discussions.
>> >>
>> >> I'm not sure what's a good way to solve this, but I'd really like to
>> >> stop losing this valuable information as a result of the current
>> >> process.
>> >
>> > This is partly the goal behind cregit:
>> >
>> > https://cregit.linuxsources.org/
>> >
>> > The plan is that the next version of cregit will become an official
>> > kernel.org resource some time mid-next year, and will aggregate as much
>> > information about the kernel code as it can from various places, including
>> > patchwork.
>>
>> Assuming we do indeed switch some parts of the drm process over to
>> gitlab (very big assumption here), whom would we need to chat with to
>> do that?
>
> Could you elaborate on what that means exactly ? For most subsystems the
> development process encompasses a large number of tasks, so switching to
> gitlab doesn't mean much without knowing exactly how the new process would
> look like. Which part(s) of the development process would be affected, and how
> ? And as an added bonus, it would be helpful if you could also describe why
> you think they don't work today and would be better handled differently.

Let's move all the "how to gitab, or can we live without email?"
discussions in the other part of this thread. This here was just a
quick question about cregit (and I already regret that I mentioned
gitlab here, it seems to somewhat distract).
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
