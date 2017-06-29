Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9AF445B1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 19:07:22 +0000 (UTC)
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 57B4C18D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 19:07:22 +0000 (UTC)
Received: by mail-io0-f196.google.com with SMTP id 84so1759696iop.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 Jun 2017 12:07:22 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <20170629182044.GP21846@wotan.suse.de>
References: <CAGXu5j+bpi6-krTYwN_BdhFnHZRYpQwhtc9Z-kcRerm+t-Xyfw@mail.gmail.com>
	<1498754169.2834.61.camel@HansenPartnership.com>
	<CAGXu5jJ011-7JH7w4n0No=gon-jp4VTeN=0JPWaQsGh5zz79eA@mail.gmail.com>
	<1498758126.2834.70.camel@HansenPartnership.com>
	<CAGXu5jLL8_h3AYrpCm4LKV8-rTPf793gAJckS0rQag6iGqk9xw@mail.gmail.com>
	<20170629182044.GP21846@wotan.suse.de>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 29 Jun 2017 12:07:20 -0700
Message-ID: <CA+55aFyo3AHZt4kPYaxde1aed6pik82FhVy8pVyoPqz-iyVpzQ@mail.gmail.com>
To: "Luis R. Rodriguez" <mcgrof@kernel.org>
Content-Type: text/plain; charset="UTF-8"
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

On Thu, Jun 29, 2017 at 11:20 AM, Luis R. Rodriguez <mcgrof@kernel.org> wrote:
>
> Linus has said before cross-tree collateral evolutions *could* just be sent to
> him as a set of scripts he could run. It might sound easier said than done
> though, but we can improve on the process by practicing it daily.

I do take cross-tree stuff, and in particular don't mind things if
they are obviously scripted cleanups (with the extreme case of that
being to just send me the script - that makes it *really* obvious to
me that it's scripted ;).

That said, I generally end up considering it a last option. And that's
not because I can't do it, but because things like that tend to be
really painful for stable backporting etc. Cross-tree stuff has a
tendency to also be large and invasive in other ways.

If it's *small* and just cross-tree, that's fine, and I take it all
the time, although because of general laziness I certainly prefer when
it goes through somebody else (often the tip tree or Andrew Morton).

In fact, the real problem with cross-tree things is often not that it
affects multiple maintainers, but that it by definition doesn't have a
maintainer AT ALL that tracks it and pushes it. So the "random
occasional cross-tree updates" often end up languishing because nobody
takes ownership of them.

                        Linus
