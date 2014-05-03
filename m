Return-Path: <mtk.manpages@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 59F219B1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  3 May 2014 13:37:07 +0000 (UTC)
Received: from mail-ee0-f45.google.com (mail-ee0-f45.google.com [74.125.83.45])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C949720221
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  3 May 2014 13:37:06 +0000 (UTC)
Received: by mail-ee0-f45.google.com with SMTP id d17so3866726eek.18
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 03 May 2014 06:37:05 -0700 (PDT)
Message-ID: <5364F0FF.5080206@gmail.com>
Date: Sat, 03 May 2014 15:37:03 +0200
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
MIME-Version: 1.0
To: Dave Jones <davej@redhat.com>, Ben Hutchings <ben@decadent.org.uk>
References: <20140502164438.GA1423@jtriplet-mobl1>	<20140502171103.GA725@redhat.com>	<1399051229.2202.49.camel@dabdike>	<20140502173309.GB725@redhat.com>	<CA+5PVA78SFLWWnA+wPG54X6Uvo6R8CWjF43pZEDGGHUGbkpz1A@mail.gmail.com>	<5363E8E1.9030806@zytor.com>	<CAKgNAkjueYU9fyiZ46OZG9unOsGTkkJJF5ndVsR6KbLr=OFRAQ@mail.gmail.com>	<20140502193314.GA24108@thunk.org>	<20140502194935.GA9766@redhat.com>	<1399063518.24523.43.camel@deadeye.wl.decadent.org.uk>
	<20140502210308.GB13536@redhat.com>
In-Reply-To: <20140502210308.GB13536@redhat.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: Josh Boyer <jwboyer@fedoraproject.org>, Sarah Sharp <sarah@minilop.net>,
	ksummit-discuss@lists.linuxfoundation.org,
	Greg KH <gregkh@linuxfoundation.org>, Julia Lawall <julia.lawall@lip6.fr>,
	Darren Hart <darren@dvhart.com>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking
 the kernel and avoiding size regressions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/02/2014 11:03 PM, Dave Jones wrote:
> On Fri, May 02, 2014 at 09:45:18PM +0100, Ben Hutchings wrote:
>  > On Fri, 2014-05-02 at 15:49 -0400, Dave Jones wrote:

[...]

>  > > It's this "not used by every user" code that tends to scare me, because
>  > > it's written with 1-2 well behaved bits of userspace in mind, which
>  > > usually means "has so many unchecked corner cases it's not even funny"
>  > [...]
>  > 
>  > Since Michael often seems to be the one testing those corner cases while
>  > writing documentation, it seems like you're getting back to the old
>  > issue of whether lack of documentation should be a blocker for adding
>  > new system calls.
> 
> That, and test cases.

Form my point of view, test cases and documentation go hand in glove 
(see my last mail).

Hmmm -- this almost starts to smell like a topic to revisit
at Ksummit.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
