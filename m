Return-Path: <matthew.garrett@coreos.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 56C4A71
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 03:08:01 +0000 (UTC)
Received: from mail-yw0-f182.google.com (mail-yw0-f182.google.com
	[209.85.161.182])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9B509F5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 03:08:00 +0000 (UTC)
Received: by mail-yw0-f182.google.com with SMTP id z8so41523561ywa.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 25 Aug 2016 20:08:00 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CA+55aFxLRqket8-yCL=FPM0Bz86PxdS+hRSTzXES+=1bOv=feg@mail.gmail.com>
References: <CA+55aFxLRqket8-yCL=FPM0Bz86PxdS+hRSTzXES+=1bOv=feg@mail.gmail.com>
From: Matthew Garrett <mjg59@coreos.com>
Date: Thu, 25 Aug 2016 23:07:58 -0400
Message-ID: <CAPeXnHs_9=m9R+JO=O_p_Q390b1DgnsKyMgP6kGiPyBGn=+3_w@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset=UTF-8
Cc: "Bradley M. Kuhn" <bkuhn@sfconservancy.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Aug 25, 2016 at 10:46 PM, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
> I'm not aware of anybody but the lawyers and crazy people that were
> happy about how the BusyBox situation ended up. Please pipe up if you
> actually know differently. All it resulted in was a huge amount of
> bickering, and both individual and commercial developers and users
> fleeing in droves. Botht he original maintainer and the maintainer
> that started the lawsuits ended up publicly saying it was a disaster.

It resulted in a huge number of people getting access to the source
code they were entitled to. It's a huge part of the success of
projects like OpenWRT, which in turn has formed the basis of a huge
number of (compliant) commercial Linux products. It's convinced
multiple Android vendors to ship source, which has allowed people to
continue updating their phones even after the manufacturer has given
up on them. We have entire companies who exist purely because they
were able to build on the work of code released under duress. Claiming
that "All it resulted in was a huge amount of bickering" is untrue,
and you should know better than to say so.

> There's another side to this issue, which people seem to be ignoring.
> Yes, not only is there the risk of loss (I've talked to Karen about
> this, and am shocked every time she says "but we need to resolve
> things one way or the other". Hell no. We're doing really well without
> any resolution at all, thank you).

No, we're not. I mean, sure, if what you care about is corporate
support, we're doing fine. But if what you care about is people who
get hold of Linux-based devices being able to look at the code and
figure out how they work, it's a fucking disaster. Sure, if you buy a
wireless router you'll probably get a GPL notice - but only because
almost every significant wireless router manufacturer was threatened
with or lost a lawsuit. It's the same story with TVs. But if you look
at product lines where there haven't been any lawsuits, you'll find
almost ubiquitous Linux and an equally ubiquitous lack of source code.
If that's your idea of "doing really well", that's fine. But many
people have been involved because they have different standards, so
let's not pretend that "we" means all Linux contributors here.
