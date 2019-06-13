Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D1AA4949
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 14:57:18 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [85.118.1.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1FFBA63D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 14:57:18 +0000 (UTC)
Date: Thu, 13 Jun 2019 11:57:12 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <20190613115712.5024a1b2@coco.lan>
In-Reply-To: <20190612085405.6045d95d@lwn.net>
References: <20190612085405.6045d95d@lwn.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Wed, 12 Jun 2019 08:54:05 -0600
Jonathan Corbet <corbet@lwn.net> escreveu:

> What could be more fun than talking about kernel documentation?

That sounds a topic that we should have some discussion. IMO, the best
would be to put people on some round tables and exchange some ideas
about how we can improve the process. I would try to do it as a
half-day topic, if the agenda would allow, as a standard 50' min
slot doesn't seem to be enough to address the needed things there.

> Things we
> could get into:
> 
>  - The state of the RST transition, what remains to be done, whether it's
>    all just useless churn that makes the documentation worse, etc.

I have a large changeset (with about one patch per Documentation/
dir) with manually written patches with addresses a large amount of
the remaining stuff. I'm hoping to have most of it applied before
KS :-)

There will still be 4 or 5 directories with lots of documentation
files on it, plus ABI and DT. 

>  - Things we'd like to improve in the documentation toolchain.

I remember once I submitted a patch with a script capable of
parsing the files at ABI and produce a parsed content, with the
goal of validating the ABI files against its syntax and to
generate an ABI book.

IMO, it makes sense to have one book containing the Linux ABI, but, 
as the patch didn't have much attention, and I got sidetracked with
something else, I ended giving up on trying to push it. 

Perhaps by KS it would be time to rescue it from some old git tree
and see if it would be worth the time to work on it.

> 
>  - Overall organization of Documentation/ and moving docs when the need
>    arises.  It seems I end up fighting about this more than just about
>    anything else, but I think it's important to organize our docs for the
>    convenience of the people using them.

Fully agreed. It is not always clear where to place some converted
docs.

Also, in the case of driver-specific information, it is not unusual to
have both kernel and user's information at the same file. Ideally, the
best would be to split, but I'm not sure if it would worth the time
for doing such changes.

>  - The ultimate vision for kernel docs (for now).  RST conversion and
>    imposing some organization are important, but they will not,
>    themselves, give us a coherent set of documentation.  What can we do to
>    have documentation that is useful, current, and maintainable, rather
>    than the dusty attic we have now?

Yeah, RST conversion and enforcing an organization of them is important,
as it will enforce a single "coding" style for the documents, but this
is only a small part of the issue.

IMO, we should work to attract people focused on maintaining docs.

I've been doing some userspace maintainership on a few media-related
projects. Among them, I'm maintaining a KDE media player (Kaffeine).

The KDE project has a group of people that it is focused only on
writing documentation, and one group of people per translation language.

IMO, if we want to have a good set of documents, we should have a
group of people working mainly with a "documentation hat", reviewing,
improving and rewriting large chunks of documents.

If we ever have such kind of people working around the Kernel,
I guess the first task would be to imagine what kind of things a new 
Kernel developer needs to know and try to structure a coherent
documentation from that. Such group could use the existing Kernel
printed books as a starting point (perhaps using existing books
documentation that their authors could release them under GPLv2),
and modifying the texts to use what we have nowadays inside the
Kernel's tree.

I guess the main problem is that, for this to work, someone
(possibly a non-profit org) would likely need to sponsor such work,
as this would probably require more time than we could do on our
spare time.

Thanks,
Mauro
