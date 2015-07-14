Return-Path: <sfr@canb.auug.org.au>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6EB73ABA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 03:49:01 +0000 (UTC)
Received: from ozlabs.org (ozlabs.org [103.22.144.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E67F0F4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 03:49:00 +0000 (UTC)
Date: Tue, 14 Jul 2015 13:48:59 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <20150714134859.327426f6@canb.auug.org.au>
In-Reply-To: <20150713202818.23310729@lwn.net>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<55A45AD8.5010400@oracle.com>
	<20150713210226.519dedfd@gandalf.local.home>
	<20150713202818.23310729@lwn.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Sasha Levin <sasha.levin@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Jon,

On Mon, 13 Jul 2015 20:28:18 -0600 Jonathan Corbet <corbet@lwn.net> wrote:
>
> In general, though, I think a lot of people see -next as -rc1 without the
> quality control; it's volatile and scary.  So it's not surprising that it
> doesn't get a lot of real-world testing.  And, as long as that's the case,
> there's going to be a lot of bugs that are never caught in -next.

The rule for next is "the code is as ready as can be to be merged by
Linus (or other upstream maintainer)", so, in a sense, it should no be
so scary.  However in actuality, that rule is not followed as well as I
would like (as evidenced by the amount of rebasing that still goes
on).  :-(

Sure we say "release early, release often", but *not* too early,
please.  The cycle should be something like "merge, test, (repeat),
release" - not "merge, release, test (repeat)" as it seems sometimes.

-- 
Cheers,
Stephen Rothwell                    sfr@canb.auug.org.au
