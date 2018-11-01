Return-Path: <christian@brauner.io>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7F2B3BF0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  1 Nov 2018 20:10:01 +0000 (UTC)
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
	[209.85.210.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0F147608
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  1 Nov 2018 20:10:00 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id k9so18906922otl.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 01 Nov 2018 13:10:00 -0700 (PDT)
Date: Thu, 01 Nov 2018 23:09:53 +0300
In-Reply-To: <87ftwkpudb.fsf@xmission.com>
References: <alpine.DEB.2.21.1811011407590.1642@nanos.tec.linutronix.de>
	<87ftwkpudb.fsf@xmission.com>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
To: ebiederm@xmission.com,Thomas Gleixner <tglx@linutronix.de>
From: Christian Brauner <christian@brauner.io>
Message-ID: <D199F5CA-0A74-4886-891C-1D04786D03A5@brauner.io>
Cc: ksummit-discuss@lists.linuxfoundation.org, Dmitry Safonov <dima@arista.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Jeff Dike <jdike@addtoit.com>, Oleg Nesterov <oleg@redhat.com>,
	John Stultz <john.stultz@linaro.org>, Andy Lutomirski <luto@kernel.org>,
	Cyrill Gorcunov <gorcunov@openvz.org>,
	Christian Brauner <christian.brauner@ubuntu.com>,
	Adrian Reber <adrian@lisas.de>, Pavel Emelianov <xemul@virtuozzo.com>
Subject: Re: [Ksummit-discuss] [TECH-TOPIC] Multiple time domains
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On November 1, 2018 8:42:24 PM GMT+03:00, ebiederm@xmission=2Ecom wrote:
>Thomas Gleixner <tglx@linutronix=2Ede> writes:
>
>> Sorry for the late proposal, but this popped up recently=2E
>>
>> The recent discussion of the proposed time name spaces resulted in a
>larger
>> range of questions how to handle that correctly=2E Aside of that we
>have
>> other requests of supporting multiple time domains for various
>reasons,
>> e=2Eg=2E TSN folks in automotive and automation using grand clock maste=
rs
>with
>> a completely screwed time base=2E
>>
>> As most of the relevant developers seem to be at LPC, I propose a
>technical
>> session dedicated to discuss the handling of multiple time domains=2E
>
>I will definitely be there=2E
>
>To whoever schedules these things can we please have this one of the
>days that overlaps LPC=2E  So that all of the CRIU and container folks
>have a chance to show up=2E  Ideally not during the CRIU or Container
>mini
>summit=2E

I can be there and I agree with Eric:
we should have LPC overlap without having containers/CRIU microconference =
overlap=2E :)
I have one more constraint=2E I have a talk at 2:30 pm for 15 min on the 1=
4th too=2E
So if we could try to not do it at that time that would be great=2E

Sorry for that!
Christian
