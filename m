Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A9078B9F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 00:06:48 +0000 (UTC)
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 05CD5112
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 25 Aug 2015 00:06:47 +0000 (UTC)
Received: by iodv127 with SMTP id v127so168009014iod.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 17:06:47 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <20150824235409.GD13446@thunk.org>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
	<CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
	<1440446941.2201.32.camel@HansenPartnership.com>
	<alpine.LRH.2.20.1508250612360.22949@namei.org>
	<alpine.DEB.2.11.1508242220570.15006@nanos>
	<alpine.LRH.2.20.1508250753470.26669@namei.org>
	<CAGXu5jK_4=w_e81askreLCGHXA3B3juYf-a+SNsA1j53yzt8Hw@mail.gmail.com>
	<20150824235409.GD13446@thunk.org>
Date: Mon, 24 Aug 2015 17:06:47 -0700
Message-ID: <CAGXu5j+6y1-efqzQdNdz2jCDQy=sWjfk7CuyC62djV9n=RDaWA@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
To: "Theodore Ts'o" <tytso@mit.edu>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Emily Ratliff <eratliff@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 24, 2015 at 4:54 PM, Theodore Ts'o <tytso@mit.edu> wrote:
> On Mon, Aug 24, 2015 at 04:20:47PM -0700, Kees Cook wrote:
>>
>> Could we assign this as homework instead?  There are countless examples
>> of well described kernel exploits already visible on the web....
>
> Might I suggest a somewhat higher-level homework?  What are the kernel
> self-protection features that would be most useful for us to
> implement, and --- this is critically important --- why aren't we

I listed a bunch in my earlier reply. You can see a nice breakdown of
them in pageexec's slides on the topic:
https://pax.grsecurity.net/docs/PaXTeam-H2HC12-PaX-kernel-self-protection.pdf

> doing them already, and how can we fix that higher-order issue?

They are each complex, and no one has the interest, skills, tenacity,
and work-priority available to them yet. I continue to chip away at
pieces here and there, but I'm just one person, and I'm probably
lacking in skill too.

> Is it because adding a particular feature would incur a huge
> performance penalty?

Some do, yes. Most don't. Mostly it's just the will to fight for the
changes. I think the concepts behind grsec/PaX's KERNEXEC would be a
great first target. Many other features depend on being able to trust
various aspects of kernel's resulting memory footprint.

> Is it because no company has been willing to fund developers to work
> on that particular feature to date?  (BTW, I consider the fact that

Yes, that's a big part of it. Also, the political navigation of the
feature is time-consuming. But I've been trying to socialize these
ideas for a while now, so they shouldn't be too much of a shock to
anyone. The concept and benefits of defensive features (as opposed to
bug killing) has been traditionally difficult to get people to see.

> various companies collectively wasn't able to find a place for the
> trinity maintainer to find a place to land to be somewhat of a failure
> of the ecosystem, but maybe the tool wasn't as useful as we think, or
> it maybe we failed to make the case to the correct set of
> bean-counters.)

Agreed. Though AIUI, loss of trinity maintenance had more to do with
people not contributing back to it. He should speak for himself,
though. :)

> If the answer is that it's obvious what needs to be done, but (a) we
> can't find anyone to bell the cat, or (b) the patches are going to be
> rejected out of hand for one reason or another, the kernel summit is a
> great opportunity to see if some face-to-face discussion address the
> problem.  OTOH, if the fundamental problem is that we can't get the
> headcount funded, then discussion at the kernel summit is probably not
> going to be a good use of our time.  :-/

Understanding the value of self-protection technologies will go a long
way to accepting them when someone tries to present them for upstream.
Accepting the limitations they present (e.g. gcc plugins may only work
with certain compiler versions, etc) can be a hard pill to swallow,
but I think it's best for the end users.

-Kees

-- 
Kees Cook
Chrome OS Security
