Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 81CFF9A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 10:31:56 +0000 (UTC)
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5124C1F9F9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 10:31:53 +0000 (UTC)
Received: by mail-ig0-f181.google.com with SMTP id h3so174673igd.14
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 03:31:53 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140528233145.GA14933@cloud>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140524111927.GA3455@katana>
	<alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
	<4700397.FLxRVChBLf@vostro.rjw.lan>
	<CAKMK7uEquB=bv5jj=K-8Nv_9S2Y8qh2=3eKjJSjgR4Vrn9fbaA@mail.gmail.com>
	<1401294020.13546.95.camel@dhcp-9-2-203-236.watson.ibm.com>
	<20140528162833.GA23815@thin>
	<alpine.DEB.2.10.1405282332430.3952@nanos>
	<20140528233145.GA14933@cloud>
Date: Thu, 29 May 2014 12:31:52 +0200
Message-ID: <CAKMK7uEiCP_XVr4G_NtyDxZXBtWqE_X54ynpxi75saCOWHZnRQ@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Josh Triplett <josh@joshtriplett.org>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 29, 2014 at 1:31 AM,  <josh@joshtriplett.org> wrote:
>> I really started to put breaks into this cycle of hell, where I get
>> spammed with a 30+ patch series in the morning and after I spent some
>> quality time looking at it and replying to a particular patch, I get
>> another spam bomb within a few hours, which is not much better than
>> the previous one.
>
> That's definitely a good workflow question.  We tell people to break
> huge patches down into pieces, and that can turn substantial changes
> into long patch series.  Which of the following is your primary concern:
>
> - That people update the patch series before you're done submitting
>   feedback on it?  That does seem like an annoying problem, and I
>   haven't seen anyone explicitly talk about it; we should document it,
>   and develop some standard boilerplate saying "If you get feedback on
>   patch 04/25, don't send out v2 of the whole series until you get the
>   remaining feedback on the patches".  And until users are reasonably
>   educated on that problem, frequent reviewers may want to include that
>   boilerplate in their patch reviews.

What I enforce on our mailing list is that for updates for issues in
specific patches submitters should resend only that patch in-reply-to
the old one. It means a bit more work of fiddling out the msg-id and
submitters complain (but meh), but it does nicely keep the discussion
together. And it allows submitters to chase reviewer's feedback while
the review is still ongoing without causing hell on the m-l. This
makes for a bit of fun when applying patches, but if it gets messy I
just ask for a full resend with r-b tags and all included once it's
all done.

Of course patchbombs which are fundamentally wrong need to be resent
hole. And for those I tell submitters I tell them pretty sternly that
they need to wait with resending until the review round concluded if
they fail to do so.

If course

> - That people send patch series with too many problems, and you're
>   frustrated having to educate them on a dozen fundamental problems
>   (formatting, standard API usage, etc) rather than just what's specific
>   to your subsystem?  It seems completely reasonable to remind people of
>   the standard tools, improve those standard tools as needed, and
>   ideally set up more automation to run those tools before patches hit
>   reviewers.  You shouldn't need to waste your time reviewing patches
>   that don't build, for instance.

Imo checkpatch makes this worse since with that you get patches that
look pretty but are still shit. Imo we need to push back on companies
who consistenly submit crap patches and tell them to get some good
internal mentoring going. Or throw money at lf/linaro/whatever to get
such expertise if they completely lack it.

And for me hobbyist/gsoc/... are completely different and I'll give
them much more leeway simply because I've started like that myself.

Of course for both these points Intel mostly gets this and I only have
issues with new people joining upstream from e.g. Android teams If
they don't get it I escalate through their managers _real_ quickly.
Maybe we should require from companies some "you have a loose cannon,
take care of it" contact, at least those in lf/linaro/... to make sure
this gets addressed quickly? Since ime sternly written mails at
engineers is usually not sufficient, escalation is usually required.

> - That a 30-patch series is painful to review via email?  Agreed
>   completely; I think we need better git-based workflows that don't
>   always have to fall back to the least-common-denominator of patchbomb
>   threads.

Nope if you mean tools like gerrit. The android gfx guys use it and I
think it's horrible. Mail-based patchbomb review works, and tool like
gerrit has all the sigils of a working review process but imo
completely misses the point. From a UI perspective the web thing is a
disaster, and everything else has too many indirections until you can
finally look at the patch. The only upside I see is that managers like
it since it helps to them to keep track of things. Not something
upstream cares about.

For our review we're looking into augmenting mail-based review with
stuff like patchwork, but atm patchwork is still lacking a lot. But at
least it's opt-in for everyone (even if a given maintainer uses it)
and doesn't replace the main mail discussions at all.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
