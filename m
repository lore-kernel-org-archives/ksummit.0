Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D5CC9CA4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 17:05:57 +0000 (UTC)
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
	[209.85.167.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 00DB3713
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 17:05:56 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id x26-v6so12599243lfi.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 07 Sep 2018 10:05:56 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAKMK7uEjG-9jY4ptCmyqXDQtg=WCkBYaf58ycHk2_ib+VZ0x4g@mail.gmail.com>
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180906224541.27a9c8fe@vmware.local.home>
	<CAMuHMdV=m7y_Jj7mgSo1SZGCEpXJz4R-y-KbXSoi+OaDmBtwHQ@mail.gmail.com>
	<CAKMK7uEjG-9jY4ptCmyqXDQtg=WCkBYaf58ycHk2_ib+VZ0x4g@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Fri, 7 Sep 2018 10:05:53 -0700
Message-ID: <CAOesGMgprRDQP_uS7aoEtkctRGPZ2P4HNcx2PS1S8727rt=9Vg@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 7, 2018 at 2:07 AM, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> On Fri, Sep 7, 2018 at 10:40 AM, Geert Uytterhoeven
> <geert@linux-m68k.org> wrote:
>> On Fri, Sep 7, 2018 at 4:45 AM Steven Rostedt <rostedt@goodmis.org> wrote:
>>> Another issue about having fixes sit in linux-next for some time after
>>> -rc5, is that by that time, linux-next is filled with new development
>>> code waiting for the next merge window. A subtle fix for a bug that
>>> wasn't caught by linux-next in the first place (how else would that bug
>>> still be around by rc5?) is highly likely not to catch a bug with the
>>> fix to that subtle bug.
>>
>> Or the issue may never show up in linux-next at all.
>>
>> With strict by-subsystem merge policies, splitting a complicated patch set
>> by subsystem and scheduling it for inclusion across multiple kernel
>> versions can be challenging.  If anything slightly related is applied
>> independently, or due to a scheduling oversight or merge window miss, this
>> may lead to a regression in mainline that is never present in linux-next,
>> and usually only detected late, leading to a fix after -rc5.
>
> Aside: I'm still baffled at how much soc people split up their work.
> As you point out, testing becomes a game of luck, because integration
> happens only in the merge window for real.
>
> Anything I'm involved in I'm insisting on a proper topic branch that
> everyone pulls in, to make sure that we can test the full interactions
> when we actually feature-freeze before the merge window. Usually that
> means baking the merge into the drm side, because we do a lot more
> testing than others (e.g. upstream intel audio validation is done
> through the drm trees too - it doesn't work that great because it's
> post-merge only for sound).

As Geert mentioned, each platform maintainer usually merges their
pending work into an integration tree on their own, and test that.

There are a few reasons for why we've been splitting it up as much as
we have, but most of them come back to some aspect of scale.

You're one large vendor, coordinating with a few other maintainers
isn't so bad. When you've got 10 different vendors all coordinating,
and some of those sharing the drivers that they need to coordinate
about, it quickly can get into an enormous conflict-ridden mess.

One option there is to merge everything through arm-soc (I guess
that's the equivalent of what you've been doing), but we've been
pretty careful about making sure we spread out the load of
merging/reviewing/maintaining ARM-related things across the community
and not just on us. If we can avoid adding dependencies by doing just
a little bit more work, that's normally what we prefer.

It also forces people to structure their work a bit more into
separating cleanups and new features, which in my opinion isn't that
bad idea. It usually helps things like backports where needed too,
since if you intermingle the two you end up with a pretty heavy list
of dependencies for those looking to do things like driver backports
or stable fixes.


-Olof
