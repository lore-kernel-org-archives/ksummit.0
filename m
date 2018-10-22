Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1E8DAB2B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 22 Oct 2018 22:46:10 +0000 (UTC)
Date: Mon, 22 Oct 2018 18:46:04 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: NeilBrown <neil@brown.name>
Message-ID: <20181022224604.GM1617@thunk.org>
References: <20181020134908.GA32218@kroah.com>
	<87y3ar80ac.fsf@notabene.neil.brown.name>
	<20181021222608.GA24845@localhost>
	<875zxt919d.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <875zxt919d.fsf@notabene.neil.brown.name>
Cc: Mishi Choudhary <mishi@linux.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	linux-kernel <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] Call to Action Re: [PATCH 0/7] Code of
 Conduct: Fix some wording, and add an interpretation document
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Neil,

I disagree with your framing, and thus your analysis, and thus your
proposed solution.

On Tue, Oct 23, 2018 at 07:26:06AM +1100, NeilBrown wrote:
> If, for example, Linus or Andrew said "if you cannot work with any given
> maintainer, I will consider your patch directly, but you need to point
> to where you tried, and why you failed - or to where the promise is
> inadequate".
> 
> Currently if a maintainer is rude to you, there is no where else that
> you can go and *that* is why it hurts.  It isn't the abuse so much as
> the powerlessness associated with it.  If you can (metaphorically) say
> to that maintainer "I don't care about your toilet mouth, you've just
> given me the right to take my petition to caesar" - then the emotional
> response will be quite different to pain.

No.  That's just not how things work.  Patches don't get rejected
because maintainers are being rude.  Patches don't get accepted
because they are not of a sufficiently high technical quality.  And if
you spam a maintainer with bad quality patches, and they tell you what
you should do to make them better, and you actively ignore requests
about how to write better code[1], it is perfectly acceptable for
maintainers to decide to ignore said bad patch committer.  Putting bad
patch commiters on a blacklist is not a CoC violation.

[1] And no, this is not a hypothetical example.  This particular
kernel newcomer continually spammed maintainers with patches that
wouldn't even compile, and were clearly never tested.  And when the
newcomer started giving bad advice to users reporting bugs, he
ultimately got banned from LKML...

After all, we all want to make the kernel to be better.  So if someone
submits good quality code, Maintainers are going to want that code to
improve their subsystem.  Thinking that people want to go off on power
trips by rejecting perfectly sound code is a complete misdiagnosis of
the problem.

						- Ted
