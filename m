Return-Path: <luto@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E38B7AD7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 Nov 2018 06:12:45 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 799C47FF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 Nov 2018 06:12:45 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EC64A2084C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 Nov 2018 06:12:44 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id p4so2692559wrt.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 Nov 2018 22:12:44 -0800 (PST)
MIME-Version: 1.0
From: Andy Lutomirski <luto@kernel.org>
Date: Mon, 12 Nov 2018 22:12:32 -0800
Message-ID: <CALCETrX3wM2QdaweXT3JGKU8NTGrgRmxQoh28uqyWkSCfJLcfQ@mail.gmail.com>
To: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Tech-board-discuss@lists.linux-foundation.org
Content-Type: text/plain; charset="UTF-8"
Subject: [Ksummit-discuss] TAB nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

[resend -- I tried to send this earlier, but it seems to have
disappeared into the ether]

I'd like to nominate myself for the TAB.

I wrote my first kernel patch in 2005 or so when I fixed an obscure
kernel bug, and I've been contributing to the kernel more seriously
for about nine years.  In that time, I've been mentored (or perhaps
groomed) by quite a few kernel developers, I've had my patches
objected to plenty of times (politely and sometimes less politely),
I've cleaned up a lot of x86 code and a decent amount of generic code,
and I've reveiwed a whole lot of other people's code.  In the latter
endeavor, I've tried to pass the mentoring mentality on -- I do my
best to treat problematic patches as an opportunity to help their
authors improve the patches and their own knowledge of the kernel.

I've been a member of the security@kernel.org list for several years,
and, for better or for worse, I was heavily involved in the very early
Meltdown mes^Wcoordination effort as well as some other less well
publicized cross-vendor efforts.  While I believe that the
security@kernel.org process works quite well for smaller, Linux-only
security issues, for issues where the reporter reasonably expects
serious cross-vendor coordination (like Meltdown, Spectre, L1TF, etc),
I think that some measures could be taken by the Linux Foundation to
help prepare for a more efficient and less politicized process.  I've
discussed some of these on previous ksummit-discuss threads, and I
think that the TAB would be an appropriate venue to explore some of
these ideas.

Finally, an obligatory comment about the Code of Conduct.  I was not
meaningfully involved in most of the CoC process.  I think we ended up
with a reasonable CoC interpretation document, but I find it
unfortunate that the kernel now has both the somewhat ill-fitting CoC
itself as well as the interpretation document.  For contributors who
are merely trying to follow the rules, it's harder than it ought to be
to tell what the rules are.  More importantly, I think there's more
focus on rules than the whole situation really deserved.  When I
started working on low-level x86 code, I was welcomed quite well by
the maintainers, but that had nothing to do with their following any
particular rules, and certainly not because there were rules with
teeth.  My welcome was good because the maintainers were welcoming --
they treated my mistakes as learning opportunities and did not insult
me or reject my contributions out of hand.  This idea doesn't just
apply to new contributors -- I regularly review patches from
longstanding kernel programmers who are touching a subsystem that
they're not familiar with, and I regularly submit patches to parts of
the kernel that I haven't been heavily involved with.  I try to be
friendly and helpful when reviewing these types of contribution, and I
hope for the same treatment in my own contributions.  I would like to
see more focus on this idea.  If someone reviews a patch or criticizes
a developer in a way that's less than ideal, I would rather see other
community members help them see *how* their email was problematic and
how they could have done better.  In my view, this would be much
better than merely having a process to determine whether the offending
email violated a code, let alone whether it was worthy of some sort of
sanction.

Thank you all for your consideration,
Andrew Lutomirski

P.S. I won't be at LPC this year.  I hope to make it next year, though.
