Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82EE1207A32
	for <ksummit@lists.linux.dev>; Tue, 11 Aug 2026 08:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786436409; cv=none; b=Psxx+pFLDfYf0yMyYHnoaKQht6k0qrHXV0Ni2CrHTOCWzWbv11Zm56R+2e66XthtvmAygiIMoff7g7jiiQI9XUcLkG+K/MPx1MC+HDrbyKYVfSCl7TnL6eajY5KASMcdOs/IMZSpsrnvn80WvRw6nkPkpayVKScF1lE3ec6153Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786436409; c=relaxed/simple;
	bh=Iyrmz4qog0hvpX0aTUKIsOKxNvlyjWffusjQpu2WyYY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A0ihMi91Da2wiKcfvRrnGVugoQQ9t0R4N/IMCULGYsmBz4PKs5NYv2RWIqZJCtSUYe6+VniZbDU46CznF9Na52TEtynU/XeTp54HT4IvTHCn7Jq+8x2HRdVJylFXA6g+O+lzMuel2AGJ/9yR633cPfF92fG9YVGs4CCbpEpKhhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFq9l3ct; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFq9l3ct"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8A6E1F000E9;
	Tue, 11 Aug 2026 08:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786436408;
	bh=XnepErEprEGSFmGnAmeVydpFFWc622CVVzW0JqJPGXM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=oFq9l3ctRqv9x71SeQQkx/hthjQOSg+1mdsChbz7+CzNA2TpASQ+/QudCW5SXgp/S
	 AVtn0BHz0u35uhZBCu82ReRCSdeQKTbacBtMeX99cjB3zOrID0yYEU7Ad/OojpNc01
	 bjznB98sow1QV3XUBBpdo3ly439OS4f9i3d7bJQW/jKwKtVdpZxB00wbHTKC8hM6nw
	 Mj7gZf7DzP08WzAiqTpLdmbNVFgYOX8XHKunTUmxmkuPb3zHVyTTsLNCCDe/yDfO2r
	 O/uMIySwCbkZCqsAqU8Iv4a1wMZs9WDczizY/ADqtjj1hmq4EDV3yrCwlQqogN6s9/
	 Bp8PQKght1YaA==
Date: Tue, 11 Aug 2026 09:19:50 +0100
From: "Lorenzo Stoakes (ARM)" <ljs@kernel.org>
To: Dave Airlie <airlied@gmail.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, 
	Steven Rostedt <rostedt@goodmis.org>, James Bottomley <James.Bottomley@hansenpartnership.com>, 
	ksummit@lists.linux.dev
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <anrWlBpyy6fmfCu4@lucifer>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home>
 <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anii3u-87kSrB9K3@lucifer>
 <CAPM=9tx7izyUJr_XVQju26fevzepZ-L6vs5vgH2aib9jPPjvRA@mail.gmail.com>
 <anl7CgkKb6tORavG@lucifer>
 <CAPM=9tybMTBw0iz2BSQ_p+3ybk=SmoLuRgiyyE6BP+=1+2RkfQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPM=9tybMTBw0iz2BSQ_p+3ybk=SmoLuRgiyyE6BP+=1+2RkfQ@mail.gmail.com>

On Tue, Aug 11, 2026 at 07:30:48AM +1000, Dave Airlie wrote:
> On Mon, 10 Aug 2026 at 17:26, Lorenzo Stoakes (ARM) <ljs@kernel.org> wrote:
> >
> > On Mon, Aug 10, 2026 at 08:10:21AM +1000, Dave Airlie wrote:
> > ...
> > > I think people really have a misconception about what goes on at the
> > > maintainer summit, the best explanation I've been given was that it is
> > > Linus's staff meeting. The people that Linus works with closest, get
> > > invited to talk to Linus and help him figure out where the overall
> > > ship is going and where things are going wrong.
> > ...
> > > Your language choice already makes it feel like you see it as some
> > > elite or special group. It's a bunch of technical project managers
> > > talking about the processes of producing the kernel. If a talk about
> > > the technical content of the kernel sneaks in it's very rare and also
> > > usually not of interest to half the room.
> > ...
> > >
> > > > I mean I don't know, maybe it's necessary to run it as a tight ship of
> > > > trusted people, but I think we should at least be more clear about that.
> >
> > I mean this is kinda my point.
> >
> > It is being advertised as X but is actually Y. So say it's Y.
> >
> > That's not what Ted's posts or the write ups or generally any comms about the MS
> > say it is.
> >
> > The CFP-ish bit is probably pretty redundant too on this basis?
>
> In my opinion, quite a lot of the problems that get raised by the CFP
> on this list, often get resolved on this list, which to my mind
> suggests we just need to have a better year round maintainers list
> that doesn't get consumed by patches or internal subsystem matters.

Yeah that's not a bad idea!

Though threads (especially bikesheddable ones) tend to go one of two ways:

1. Some good constructive discussion comes out of it and decisions are made
   (convergent)

2. The conversation turns into the world's biggest talking shop and I want
   to scoop out my eyes with a rusty teaspoon (divergent)

So probably we'd want a way to cut-to-the-chase and say either 'OK cool
let's do X' or STFU :)

>
> >
> > > >
> > > > However I wonder whether we should look at an alternative approach like
> > > > those with M: entries in MAINTAINERS voting on topics, or something
> > > > similar.
> > >
> > > Voting on what though, I'm already over the number of times
> > > maintainers with small potato problems think that the lives of
> > > maintainers with big potato problems would be much simpler if they
> > > just adopted their niche one-person mutt based review process.
> >
> > Ah good to know core mm is small potatoes ;)
>
> I was more referring to the idea that voting would make any sense in
> that forum, I do believe mm should be well represented, but also you
> have your own very successful forum, and maybe the mm leadership can
> meet at LSFMM and pick 1 or 2 delegates to send to the MS every year,
> and they would get auto accepted, this of course wouldn't stop
> additional mm folks from attending but at least make sure there are
> voices in the room.

Yeah I see that now, sorry I misunderstood, all I saw were the potatoes ;)
I guess being British I default to always seeing subtext...

And yeah, having 100 equal votes for people who maintain
random-driver-just-because-they-happen-to-work-at-company-X vs. 1 for the
burnout-adjacent maintainer of massive-vital-critical-subsystem-Y doesn't
seem fair either.

Your comment re: this being Linus's staff meeting I think is the best
insight on the thread and very much reflects what I felt it was, and what
I've heard from others about it.

So I think we're pretty much violently agreeing at this stage (well other
than the clique-ness but that's fine).

Anyway the TL;DR way to schtop Lorenzo moaning here (TM) is to edit the CFP
mail a bit to separate attendance from topic submission, something like:

https://lore.kernel.org/ksummit/anntucHhrzF_b4sy@lucifer/

That and ideally adding something in Documentation/process to explain what
the MS is and how it works.

Ted's response there was great and goes into oodles of detail, be good to
save that somewhere to help people (including myself of course) understand
it.

>
> Dave.

--
Cheers, Lorenzo
