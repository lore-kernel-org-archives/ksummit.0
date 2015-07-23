Return-Path: <shuahkhan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D1B98411
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 14:48:53 +0000 (UTC)
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 390D18B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 14:48:53 +0000 (UTC)
Received: by ietj16 with SMTP id j16so194210394iet.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 07:48:52 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150723105726.GC30929@amd>
References: <20150723105726.GC30929@amd>
Date: Thu, 23 Jul 2015 08:48:52 -0600
Message-ID: <CAKocOOPhpX2o40pbXDnNDkCePHC=aief8hoJkuFoy9ws_V4=rw@mail.gmail.com>
From: Shuah Khan <shuahkhan@gmail.com>
To: Pavel Machek <pavel@ucw.cz>, tim.bird@sonymobile.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 23, 2015 at 4:57 AM, Pavel Machek <pavel@ucw.cz> wrote:
> Hi!
>
> (Please cc me on replies).
>
> Significant percentage of phones run Linux kernel today, but geting
> mainline kernel to work on a phone is very hard to do. (So hard, that
> newest device that is close to working on recent mainline was made in
> 2009.) There are multiple obstacles, including huge patches from
> silicon vendors, missing GNU/Linux userspace support that makes kernel
> testing hard, interfaces unsuitable for phones and power management
> problems.
>
> Interested people:
>
> Sebastian Reichel <sre@kernel.org>
> Pali Roh=C3=A1r <pali.rohar@gmail.com>
>

I am interested in this topic. Please add me to the list.

Shuah Khan <shuahkh@osg.samsung.com>

You probably already know
the CE Workgroup Device Mainlining Project. Goes over some of the reasons w=
hy
mainline kernels don't run on phones. Adding Tim Bird to the thread.
He did a talk
at ELC back in March of this year about this effort and more information.

http://elinux.org/CE_Workgroup_Device_Mainlining_Project

Very often phone vendors have to make decisions to get the product out
and they might not have the resources to upstream and ensure upstream
kernels continue to run on their devices.

thanks,
-- Shuah
