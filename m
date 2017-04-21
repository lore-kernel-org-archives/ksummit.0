Return-Path: <mpe@ellerman.id.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1498EA67
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Apr 2017 10:44:16 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [103.22.144.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 38D1FE2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 21 Apr 2017 10:44:15 +0000 (UTC)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Mauro Carvalho Chehab <mchehab@s-opensource.com>,
	James Bottomley <James.Bottomley@HansenPartnership.com>
In-Reply-To: <20170420072413.11713d39@vento.lan>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<1492633237.3217.50.camel@HansenPartnership.com>
	<20170420072413.11713d39@vento.lan>
Date: Fri, 21 Apr 2017 20:34:10 +1000
Message-ID: <87y3uuaw2l.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>, Doug Ledford <dledford@redhat.com>,
	David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Mauro Carvalho Chehab <mchehab@s-opensource.com> writes:

> Em Wed, 19 Apr 2017 13:20:37 -0700
> James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:
>
>>    1. Since most people agree that these form of notifications are useful,
>>       should we have a standard email for it (or at least a list of things
>>       which should be in that email, like commit-id, tree, maintainer,
>>       mailing list and the version of the kernel it is expected to be
>>       pushed for).
>>    2. Given that we all run ad-hoc infrastructure to produce these emails,
>>       could we get a set of blessed scripts up on kernel.org for all
>>       comers so we can use the central infrastructure rather than rolling
>>       our own.
>
> I suspect that this very much depends on the way each maintainer handle
> patches. For subsystems like media, where we use patchwork, notification
> comes for free with the tool.

AFAIK patchwork can only notify the submitter of the patch, which is OK,
but I think it's preferable if the notification goes to the recipient
list of the original mail.

For example it's quite handy to know when another maintainer has merged
a patch, so you don't merge it too, or wonder if you should.

cheers
