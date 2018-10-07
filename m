Return-Path: <airlied@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6EA776BA1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  7 Oct 2018 23:38:14 +0000 (UTC)
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
	[209.85.160.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 036864DA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  7 Oct 2018 23:38:13 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id o17-v6so3343691qtr.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 07 Oct 2018 16:38:13 -0700 (PDT)
MIME-Version: 1.0
References: <1538861738.4088.5.camel@HansenPartnership.com>
	<1538861799.4088.6.camel@HansenPartnership.com>
	<CAPM=9tz3Z=vD6qWUL2boZGEAgMeC_o9euBXFu2V58RHOn6gR9g@mail.gmail.com>
	<20181007225613.GZ32577@ZenIV.linux.org.uk>
In-Reply-To: <20181007225613.GZ32577@ZenIV.linux.org.uk>
From: Dave Airlie <airlied@gmail.com>
Date: Mon, 8 Oct 2018 09:37:59 +1000
Message-ID: <CAPM=9tzU_wy77j=sx9u9gFsJp-M4ktH7hLQE5=_wKbow9p+iuQ@mail.gmail.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="UTF-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	LKML <linux-kernel@vger.kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [PATCH 1/2] code-of-conduct: Fix the
 ambiguity about collecting email addresses
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 8 Oct 2018 at 08:56, Al Viro <viro@zeniv.linux.org.uk> wrote:
>
> On Mon, Oct 08, 2018 at 08:25:35AM +1000, Dave Airlie wrote:
>
> > This isn't a legally binding license or anything, but departing from
> > the upstream wording makes it tricker to merge new upstream versions
> > if they are considered appropriate.
>
> Nicely done, that - gotta love the passive voice use.  Considered appropriate
> *by* *whom*?

Good question, do we have a CoC maintainer? Is Linus it, Greg, TAB?

Maybe step one is to find the person who can make changes to the
kernel CoC (has anyone checked if Linus or Greg will merge this).

>
> Anyway, upstream clearly is a poor fit for Linus kernel community structure
> - the use of open lists, amount of subprojects, the length of transmission
> chains into the mainline, total amount of contributors, amount of people
> elsewhere in the project with occasional forays into any given area, etc.
> And IIRC the CoC upstream's opinion was that it wouldn't fit.

I think we can try, fixing upstream is a worthy goal for other
projects in the same position, rather than everyone diverging.
>
> We can surround it with "explanations" until we get something that more or
> less fits, but then we'd need to reanalyse them every time an upstream
> change gets merged.  And the lack of textual conflicts is not a good thing
> in such situations, obviously.

We do this already for the GPL (hence the GPLv2 only, and syscall exceptions).

Dave.
