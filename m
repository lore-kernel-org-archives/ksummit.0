Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1D7D321
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 21:15:00 +0000 (UTC)
Received: from mail-ve0-f171.google.com (mail-ve0-f171.google.com
	[209.85.128.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A69BB1FB59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 21:14:59 +0000 (UTC)
Received: by mail-ve0-f171.google.com with SMTP id jy13so6089374veb.30
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 02 May 2014 14:14:58 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140502210851.GC13536@redhat.com>
References: <20140502173309.GB725@redhat.com>
	<20140502190301.GW3245@sirena.org.uk>
	<3908561D78D1C84285E8C5FCA982C28F327F5D80@ORSMSX114.amr.corp.intel.com>
	<20140502210340.GZ3245@sirena.org.uk>
	<20140502210851.GC13536@redhat.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Fri, 2 May 2014 14:14:37 -0700
Message-ID: <CALCETrUU5Nt5E8+XmmqG4Mv-9UN2TqbRhnbLrzq1hxwoUjGzXw@mail.gmail.com>
To: Dave Jones <davej@redhat.com>
Content-Type: text/plain; charset=UTF-8
Cc: Sarah Sharp <sarah@minilop.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
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

On Fri, May 2, 2014 at 2:08 PM, Dave Jones <davej@redhat.com> wrote:
> On Fri, May 02, 2014 at 02:03:40PM -0700, Mark Brown wrote:
>  > On Fri, May 02, 2014 at 07:45:44PM +0000, Luck, Tony wrote:
>  >
>  > > > It would be useful for the smaller build case to have a way of auditing
>  > > > which syscalls are actually in use on a system so you can then go
>  > > > through and construct a minimal config.
>  >
>  > > "strace -c" ?
>  >
>  > That works for specific processes but I don't immediately see a
>  > straightforward way to do it system wide (I guess a wrapper that straces
>  > init and children might do the trick but it's not particularly nice).
>  > Part of the trick for getting the general security win is to lower the
>  > barrier to entry.`
>
> Sounds like something you could use tracepoints for maybe ?
> Failing that, kprobes ?
>
> I'm pretty sure I've seen systemtap examples of this very thing years
> ago, but who knows if they even work any more.
>

It's actually pretty easy to do this with seccomp -- program it to
send SIGSYS and watch the kernel logs. Admittedly, the lack of log +
ENOSYS as a seccomp action might make this a little bit annoying.

--Andy
