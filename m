Return-Path: <johannes@sipsolutions.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 22372942
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 19:48:18 +0000 (UTC)
Received: from sipsolutions.net (s3.sipsolutions.net [144.76.43.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8F4331FD49
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 19:48:17 +0000 (UTC)
Message-ID: <1399405685.4218.55.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
To: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 06 May 2014 21:48:05 +0200
In-Reply-To: <CALCETrVwW4werwNieVuqUKcUP-HRkBM2+kS5jor56NoGG1+4Hw@mail.gmail.com>
	(sfid-20140506_214411_551156_9FD599EF)
References: <CALCETrU_xrdgUNF55YU+8rfq2xK0cU3QybQhqvX4L8OgsiwG5A@mail.gmail.com>
	<20140506175842.GF20776@cloud>
	<1399404095.4218.51.camel@jlt4.sipsolutions.net>
	<CALCETrVwW4werwNieVuqUKcUP-HRkBM2+kS5jor56NoGG1+4Hw@mail.gmail.com>
	(sfid-20140506_214411_551156_9FD599EF)
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Reviewing new API/ABI
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2014-05-06 at 12:43 -0700, Andy Lutomirski wrote:

> > How far would you want to take this? New syscalls is one thing, but
> > there are frequently additions to "subsystem APIs", e.g. in networking,
> > that aren't really syscalls but part of netlink etc. Trying to vet all
> > of that might very well end up just overwhelming the process, but on the
> > other hand it's still something that probably should be done in some
> > form.
> 
> The snarky answer is: CVE-2014-0181.  I don't like netlink for
> anything other than broadcasts from kernel space to user space.

That's also an entirely useless statement - netlink is neither going
away nor getting used less or being restricted. :)

> A possibly better answer is that I think there are things that are
> worthy of more care and things that are worthy of less care.  I also
> think that it's more a question of the scope of the API than the
> mechanism.  A debugfs thing, a sysfs entry for a particular device or
> obscure configuration setting, or an ioctl on a device node are
> possibly of less broad applicability.  Something like AF_ALG really is
> a global API, though.  I would tend to classify many things that use
> netlink in more-review category, since I don't think that the fact
> that a new API uses netlink should exempt it from the same kind of
> review it would need if it used a different mechanism.

Sure - still I'd think that the review process might be overwhelmed.
Particularly for domain-specific APIs (e.g. networking, or for me in
particular wireless) are not always entirely clear without that
domain-specific knowledge, nor am I convinced that it makes sense to try
to explain it in "laymen's terms", so to speak.

johannes
