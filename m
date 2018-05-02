Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 99C1D266
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  2 May 2018 20:41:58 +0000 (UTC)
Received: from mail-vk0-f53.google.com (mail-vk0-f53.google.com
	[209.85.213.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 07038681
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  2 May 2018 20:41:57 +0000 (UTC)
Received: by mail-vk0-f53.google.com with SMTP id i190-v6so9889845vkd.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 02 May 2018 13:41:57 -0700 (PDT)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20180502195138.GC18390@sasha-vm>
References: <20180501163818.GD1468@sasha-vm>
	<CAMuHMdWNFz_9OpddZ6tTaQcNVH01pkhwd0+3Z31uDcZvbkV6Ow@mail.gmail.com>
	<20180502195138.GC18390@sasha-vm>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 2 May 2018 22:41:56 +0200
Message-ID: <CAMuHMdW_i-KQpqMz0zsz77tRcE-Sron5zAyh0SHAOJ5ap7x60w@mail.gmail.com>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Content-Type: text/plain; charset="UTF-8"
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

Hi Sasha,

On Wed, May 2, 2018 at 9:51 PM, Sasha Levin
<Alexander.Levin@microsoft.com> wrote:
> On Wed, May 02, 2018 at 05:32:37PM +0200, Geert Uytterhoeven wrote:
>>On Tue, May 1, 2018 at 6:38 PM, Sasha Levin
>><Alexander.Levin@microsoft.com> wrote:
>>> Working on AUTOSEL, it became even more obvious to me how difficult it is for a
>>> patch to get a proper review. Maintainers found it difficult to keep up with
>>> the upstream work for their subsystem, and reviewing additional -stable patches
>>> put even more load on them which some suggested would be more than what they
>>> can handle.
>>
>>Thanks for your work!
>>
>>>  - For some reason, the odds of a -rc commit to be targetted for -stable is
>>>    over 20%, while for merge window commits it's about 3%. I can't quite
>>> explain why that happens, but this would suggest that -rc commits end up
>>> hurting -stable pretty badly.
>>
>>Aren't more -rc commits targeted for -stable because they are bugfixes?
>>Ideally, new features are supposed to be merged during the merge window,
>>while -rc commits fix bugs.
>
> new features can only be merged during a merge window, bug fixes can
> be merged at any point.

I wrote "ideally". There's a big difference between theory and practice...

>>So they can be categorized like:
>>  1. Plain -rc commits,
>
> What's this exactly? -rc commits are only supposed to fix bugs.

... hence not all of them are fixes.

Sometimes fast-tracking a new feature or API reduces dependencies for the
next merge window. This is just one example of IMHO valid non-bugfix
-rc commits.

Between v4.17-rc1 and v4.17-rc3, there are 660 non-merge commits, of which
  - 245 carry a Fixes tag,
  - 196 carry a CC stable,
  - 395 contain the string "fix".
(non-mutually exclusive)

That leaves us with 200 commits not falling in the bugfix category.

>>  2. -rc commits fixing a bug:
>>       a. in the same release cycle,
>>       b. in a previous release.
>>
>>2a assumes the bug was backported to -stable, too, doesn't it?
>
> Bug fixes for features introduced in that release cycle won't be
> backported to stable.

They do, if the original commit was introduced during the same cycle and
backported to stable.

>>Do you have statistics for which categories are most buggy?
>
> I haven't broken it down to subsystems for a few reasons:

I didn't mean break down by subsystem, but by category from the list above
(1, 2a, 2b).

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
