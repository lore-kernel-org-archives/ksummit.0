Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A570D41C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 11:11:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 45F2E75B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 17 Sep 2018 11:11:26 +0000 (UTC)
Date: Mon, 17 Sep 2018 08:11:21 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20180917081121.3af649e0@coco.lan>
In-Reply-To: <CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CA+55aFyCdGstDu2u11veh3YxabpQrfaPEzuZB2x=eRXpw89prA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: [Ksummit-discuss] [MAINTAINER SUMMIT] Live without email -
 possible? - Was: community management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Mon, 10 Sep 2018 04:53:07 -1000
Linus Torvalds <torvalds@linux-foundation.org> escreveu:

> So let me suggest a topic for the maintainer summit:
> 
>   "Live without email - possible?"
> 
> just to get that ball rolling

(I did a little reorder here, to place the new topic proposal at the
 beginning)

...

> I've not used gitlab personally, but I *have* used github for a much
> smaller project.
>
> I have to say, the random and relaxed model is enjoyable. I can see
> how somebody coming from that, then finds the strict kernel rules (and
> _different_ rules for different parts) off-putting and confusing.

With the risk of getting somewhat offtopic, let me give some hints
from my personal experience with github.

I'm currently hosting some EDAC/RAS tools and some media userspace stuff
on github (and a few other random stuff). I also contributed with some
solaar patches in the past, addressing some hardware issues with the
mouse I use here. A couple of weeks ago got commit rights on a camera 
application (camorama).

So, I have not only things hosted by me and projects that I contribute,
but also things hosted by someone else there with commit rights.

Yeah, for projects maintained by a small number of developers, a web
interface like github provides additional value over a single git host
site, as it provides a lightweight interface for bugtrack/issues, it 
allows threaded comments on pull requests, and it allows seeing all
(publicly available) forks.

Another interesting feature is that, if someone add more patches to a
branch that it is part of a pull request (or rebase it), their interface
automatically reflects it. So, it avoids merging old stuff, if you handle
pull requests via the web interface[1].

[1] From security PoV, this can be risky, as you might end merging
something wrong, if someone steals the credentials of the original
committer. One thing that I didn't try yet is how it would handle
GPG-signed tags.

It works nice on projects with a small number of maintainers/developers.

That's said, I don't think that such model would scale for the Kernel as
a hole. 

IMO, the number of issues and pull requests will make it messy and
easy to lose something. The same likely applies to high-traffic
subsystems like media.

For low traffic subsystems however, I can see such model would work
pretty well, as it would not only provide a simple centralized repository
for the subsystem, but would also work as a forum where people could 
add issues, comment on pull requests, create development forks, etc.
Also, "Gen-Y/Gen-Z" developers are likely more familiar with such
kind of interface, so it has the potential to attract new blood to 
the Kernel than e-mail discussions.

I guess we could experiment using it on some small subsystems and see
how well it would work.

Thanks,
Mauro
