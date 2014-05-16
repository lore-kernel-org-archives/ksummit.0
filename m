Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6A8042FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 03:39:24 +0000 (UTC)
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BE293201D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 03:39:23 +0000 (UTC)
Received: by mail-qg0-f43.google.com with SMTP id 63so3300186qgz.16
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 May 2014 20:39:23 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140515121546.3A06AC40B0E@trevor.secretlab.ca>
References: <20140511030009.GO12708@titan.lakedaemon.net>
	<20140511083729.211e9b5f@lwn.net>
	<20140515121546.3A06AC40B0E@trevor.secretlab.ca>
Date: Thu, 15 May 2014 20:39:22 -0700
Message-ID: <CAOesGMircGRTGA7Cj=X8b_YopMrCnoKfgZzzYQmnGGWyVz8P6Q@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
To: Grant Likely <grant.likely@secretlab.ca>
Content-Type: text/plain; charset=UTF-8
Cc: Linux ARM Kernel <linux-arm-kernel@lists.infradead.org>,
	Rob Herring <robh@kernel.org>, Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

On Thu, May 15, 2014 at 5:15 AM, Grant Likely <grant.likely@secretlab.ca> wrote:
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

I'm not entirely sold on the practicality of this. So many of the
legacy platforms need some random piece of hardware to test on, and
having people drag that with them to Chicago seems awkward.

But I'm willing to entertain the thought and see where we end up. We
would need a rough todo list and a list of people that would need to
be in the room for the thing to be productive.

(I wonder if it would make more sense to colocate something like it
with the Linaro Connect in California this fall instead).


-Olof
