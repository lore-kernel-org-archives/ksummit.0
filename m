Return-Path: <sfr@canb.auug.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E73E38A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 20:27:20 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [103.22.144.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 40642403
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 20:27:20 +0000 (UTC)
Date: Fri, 30 Jun 2017 06:27:17 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20170630062717.534b06e9@canb.auug.org.au>
In-Reply-To: <CAGXu5jL21gKAO1DxNHH-4x6H9jw1t84Z=Z8iCSDRmgcxh4TFrQ@mail.gmail.com>
References: <CAGXu5j+bpi6-krTYwN_BdhFnHZRYpQwhtc9Z-kcRerm+t-Xyfw@mail.gmail.com>
	<1498754169.2834.61.camel@HansenPartnership.com>
	<CAGXu5jJ011-7JH7w4n0No=gon-jp4VTeN=0JPWaQsGh5zz79eA@mail.gmail.com>
	<1498758126.2834.70.camel@HansenPartnership.com>
	<CAGXu5jLL8_h3AYrpCm4LKV8-rTPf793gAJckS0rQag6iGqk9xw@mail.gmail.com>
	<20170629182044.GP21846@wotan.suse.de>
	<CAGXu5jL21gKAO1DxNHH-4x6H9jw1t84Z=Z8iCSDRmgcxh4TFrQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Developing across
 multiple areas of the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Kees,

On Thu, 29 Jun 2017 13:16:40 -0700 Kees Cook <keescook@chromium.org> wrote:
>
> [1] If the solution for this is to merge other -next trees into mine,
> I guess I can do that, though it can be very messy if any of them are
> forced to make their commits unstable. It also creates headaches,
> AIUI, for sfr if my tree suddenly gains a bunch of other trees so it's
> not clear where something came from.

I don't have a problem with trees in linux-next sharing *commits* - I
have problems when they share *patches* that are different commits
(that affect files that get changed in other commits).

For the "create a new API" case, if you put that in an immutable
tree/branch, then other maintainers can merge that branch as they
change to use the new API ...

Immutable doesn't mean that fixes can't be applied, it just means that
the part that has already been merged by some other tree cannot
change.  I guess it is useful to track who is merging that immutable
branch so that they can be informed if relevant changes are added to it.

-- 
Cheers,
Stephen Rothwell
