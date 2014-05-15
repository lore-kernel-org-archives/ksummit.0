Return-Path: <robherring2@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 787097B9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 18:50:04 +0000 (UTC)
Received: from mail-ve0-f173.google.com (mail-ve0-f173.google.com
	[209.85.128.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C73E820111
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 18:50:03 +0000 (UTC)
Received: by mail-ve0-f173.google.com with SMTP id pa12so1853903veb.32
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 11:50:02 -0700 (PDT)
MIME-Version: 1.0
Sender: robherring2@gmail.com
In-Reply-To: <20140515121546.3A06AC40B0E@trevor.secretlab.ca>
References: <20140511030009.GO12708@titan.lakedaemon.net>
	<20140511083729.211e9b5f@lwn.net>
	<20140515121546.3A06AC40B0E@trevor.secretlab.ca>
Date: Thu, 15 May 2014 13:50:02 -0500
Message-ID: <CAL_JsqJw11fZBbLVi=xxC559iWdwCMFOJ4XYM-8EjykttoWsOg@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
To: Grant Likely <grant.likely@secretlab.ca>
Content-Type: text/plain; charset=UTF-8
Cc: Linux ARM Kernel <linux-arm-kernel@lists.infradead.org>,
	Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] ARM legacy board DT conversion
	finalization
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 15, 2014 at 7:15 AM, Grant Likely <grant.likely@secretlab.ca> wrote:
> On Sun, 11 May 2014 08:37:29 -0400, Jonathan Corbet <corbet@lwn.net> wrote:
>> On Sat, 10 May 2014 23:00:09 -0400
>> Jason Cooper <jason@lakedaemon.net> wrote:
>>
>> > So, I'm proposing a session where each sub-arch gives a brief run-down
>> > of the status of the legacy board conversion, and wraps up with a todo
>> > list.  After all of the sub-arches have given their status (5 - 10
>> > minutes each?), we hash out helping each other with the final pieces.
>>
>> This *really* looks like an ARM minisummit topic to me; hopefully one
>> of those is in the works?
>
> It does, doesn't it? I wouldn't want this as a main ksummit topic.
>
> The problem with ARM minisummits these days is it is very easy to
> devolve into a nothing-but-dt meeting with a bunch of people sitting
> around looking either annoyed or bored. We weren't able to pull enough
> topics together when we tried to do an ARM minisummit at the ELC.
>
> Instead of a traditional ARM minisummit, perhaps we should do an ARM
> platforms minisprint instead. Light on any kind of presentations, but
> have the right people in the room to try and knock out some of the
> legacy backlog (which is kind of what Jason described)

Isn't a large part of the backlog cases of we need DT bindings for X?
There are cases like moving platforms to common clk, but is there
anything to discuss for those? Most of those cases need bodies to work
on them. It seems like the rest of the todo lists could become an all
DT discussion. I'm not saying it shouldn't happen, just pointing out
where I think sprint discussions will go.

I do think having todo lists would be valuable. I would like to see
more than a one off list and have a living document. Linus W had a
great spreadsheet on this for multi-platform enablement. Perhaps this
would spur people to do some of the clean-ups (or it will just bit rot
:( ).

Rob
