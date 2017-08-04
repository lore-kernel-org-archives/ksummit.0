Return-Path: <mtk.manpages@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 055BD8A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 11:30:05 +0000 (UTC)
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 13266F2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  4 Aug 2017 11:29:32 +0000 (UTC)
Received: by mail-wm0-f65.google.com with SMTP id y206so5334687wmd.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 04 Aug 2017 04:29:31 -0700 (PDT)
MIME-Version: 1.0
Reply-To: mtk.manpages@gmail.com
In-Reply-To: <alpine.DEB.2.20.1708041056510.2950@hadrien>
References: <CALCETrUb0mJEdL48gq9K2RoqULuwgs==CeXRCNw9+3R2BwkXVw@mail.gmail.com>
	<20170804022639.p27oliuinqqatar2@thunk.org>
	<alpine.LSU.2.20.1708041040220.30597@cbobk.fhfr.pm>
	<alpine.DEB.2.20.1708041056510.2950@hadrien>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date: Fri, 4 Aug 2017 13:27:46 +0200
Message-ID: <CAKgNAkjnjVy9ZWGxhdux+FzCLnyxv-w+mHvBo+rwMx2jmEmoRg@mail.gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Content-Type: text/plain; charset="UTF-8"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Andy Lutomirski <luto@kernel.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC] ABI feature gates?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 4 August 2017 at 10:57, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Fri, 4 Aug 2017, Jiri Kosina wrote:
>
>> On Thu, 3 Aug 2017, Theodore Ts'o wrote:
>>
>> > One way that we could try to make things better is by having some kind
>> > of semi-automated system which monitors changes in include/uapi/*.h in
>> > linux-next.
>>
>> It's unfortunately just uapi though, and for sysfs it's a bit more
>> difficult to define a pathname pattern to watch for.
>
> I think that Michael Kerrisk has a big list of regexps in this direction.

The list I have is not very big, and is rather unsophisticated (and
manually maintained). But it helps me spot some new features that I
would otherwise miss and that should be documented in the man pages.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
