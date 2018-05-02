Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F1B6A82
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  2 May 2018 19:51:42 +0000 (UTC)
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-co1nam03on0102.outbound.protection.outlook.com [104.47.40.102])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7F7D162A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  2 May 2018 19:51:42 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 2 May 2018 19:51:40 +0000
Message-ID: <20180502195138.GC18390@sasha-vm>
References: <20180501163818.GD1468@sasha-vm>
	<CAMuHMdWNFz_9OpddZ6tTaQcNVH01pkhwd0+3Z31uDcZvbkV6Ow@mail.gmail.com>
In-Reply-To: <CAMuHMdWNFz_9OpddZ6tTaQcNVH01pkhwd0+3Z31uDcZvbkV6Ow@mail.gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <ED092787459212418105336FAE18C961@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"w@1wt.eu" <w@1wt.eu>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 02, 2018 at 05:32:37PM +0200, Geert Uytterhoeven wrote:
>Hi Sasha,
>
>On Tue, May 1, 2018 at 6:38 PM, Sasha Levin
><Alexander.Levin@microsoft.com> wrote:
>> Working on AUTOSEL, it became even more obvious to me how difficult it i=
s for a
>> patch to get a proper review. Maintainers found it difficult to keep up =
with
>> the upstream work for their subsystem, and reviewing additional -stable =
patches
>> put even more load on them which some suggested would be more than what =
they
>> can handle.
>
>Thanks for your work!
>
>>  - For some reason, the odds of a -rc commit to be targetted for -stable=
 is
>>    over 20%, while for merge window commits it's about 3%. I can't quite
>> explain why that happens, but this would suggest that -rc commits end up
>> hurting -stable pretty badly.
>
>Aren't more -rc commits targeted for -stable because they are bugfixes?
>Ideally, new features are supposed to be merged during the merge window,
>while -rc commits fix bugs.

new features can only be merged during a merge window, bug fixes can=20
be merged at any point.

>So they can be categorized like:
>  1. Plain -rc commits,

What's this exactly? -rc commits are only supposed to fix bugs.

>  2. -rc commits fixing a bug:
>       a. in the same release cycle,
>       b. in a previous release.
>
>2a assumes the bug was backported to -stable, too, doesn't it?

Bug fixes for features introduced in that release cycle won't be
backported to stable.

>Do you have statistics for which categories are most buggy?

I haven't broken it down to subsystems for a few reasons:

 - My dataset is based on the Fixes: tag, some subsystems use it less
   than others.
 - Maintainers change, so even if one subsystem is being awesome about
   it today, it might not be the case in a year.
 - I don't really want to point fingers at a particular subsystem, I
   think that this is an issue at the kernel level.=
