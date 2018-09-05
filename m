Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8C8DED36
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 08:17:46 +0000 (UTC)
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 082068B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 08:17:45 +0000 (UTC)
Received: by mail-it0-f53.google.com with SMTP id h23-v6so8388396ita.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 05 Sep 2018 01:17:45 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180905074840.GB29052@kroah.com>
References: <CABVU7+vBVivOZ32aEokJ0y3=C2z0Ev12O3vSVfyTC9TDrBOr8A@mail.gmail.com>
	<20180905042246.GA2977@mtr-leonro.mtl.com>
	<CABVU7+u+F1CXAW48_XfhLy59BOTxAS-qa_pG4Xjkki=f4Rr9Kg@mail.gmail.com>
	<20180905074840.GB29052@kroah.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 5 Sep 2018 10:17:44 +0200
Message-ID: <CAKMK7uEJfgACdzLdfh+EeG-NFkr47Bn3PFWCEOPA+1D1=5J7kA@mail.gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Challenges in Upstream
 vs. Embargoed Development in Intel Graphics.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 5, 2018 at 9:48 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Tue, Sep 04, 2018 at 09:49:13PM -0700, Rodrigo Vivi wrote:
>> On Tue, Sep 4, 2018 at 9:22 PM Leon Romanovsky <leon@kernel.org> wrote:
>> >
>> > On Tue, Sep 04, 2018 at 12:54:16PM -0700, Rodrigo Vivi wrote:
>> > > Hi there,
>> > >
>> > > I've submitted a proposal for plumber's referred track. There, I want to
>> > > talk
>> > > about tools and challenges we have on embargo development vs upstream one
>> > > and
>> > > how to get focus on upstream first and upstream always mentality.
>> > >
>> > > The name of plumbers proposal talk is:
>> > > "Unveiling Intel Graphics Internal Development"
>> > >
>> > > I'm not sure if the talk will get accepted, but anyway I'd like to have the
>> > > chance to talk to other maintainers to exchange views on different ways of
>> > > maintaining this kind of embargo development including challenges, tools,
>> > > processes, and rules.
>> > >
>> > > So I'm interested in hallway tracks of Maintainer / Kernel Summit, or maybe
>> > > a
>> > > bof session if there's interest.
>> > >
>> > > Please let me know if there's interested or if further information and/or
>> > > clarification is needed.
>> >
>> > What is "embargo development"? Are you referring to US government
>> > restrictions or to anything else?
>>
>> No. nothing to do with government.
>> Embargoed by company's temporary restrictions.
>>
>> Sorry for not being clear here.
>
> Why do we care about something like this?  It sounds like it is an Intel
> issue in that they want to delay pushing stuff upstream.  Why does
> upstream care about this?
>
>> > Also can you please explain why should we know about internal Intel
>> > development flow?
>>
>> First of all I don't believe that we are the only one that need to
>> keep this kind of flow and i915 has a very active development and we
>> are strongly committed with upstream development. Our golden rules for
>> internal development is upstream first, upstream always.
>
> Great!  So if this rule runs into opposition to people within your
> company, doesn't that sound like a meeting with those company members is
> the best solution?
>
>> So, maybe sharing some knowledge and lessons we learned on the past
>> years might be useful to someone else that might still struggle with
>> closed source style of development.
>
> Ah, so you want to talk about how to change your process to work better
> with companies that don't like doing upstream-first work?  That sounds
> like a nice talk, but you need to make that a bit more clear here :)
>
>> Also we have some challenges on keeping everything updated and ready
>> for upstreaming at any moment.
>
> "any moment"?  Don't you know this ahead of time?  If not, that sounds
> like a company problem...

The only companies which do not have this problems (at least in the
graphics space) are those which don't care one bit about upstream at
all. So yes, all the problems we have (and everyone else I've talked
to in gfx) are dealing with are direct consequences of doing
upstream-first drivers for a proprietary piece of hardware developed
behind closed doors. And until we have exclusively open source IP
hardware this problem won't go away.

This was an invitation to exchange experience in how to best deal with
the fallout - I do actually know that this is not an intel-only issue
because I chatted with non-Intel people about how they deal with this.
And I thought that figuring out how to do better upstream-first is
very much within the scope of ks/lpc, hence why I suggested Rodrigo
brings this up as a talk proposal.

Cheers, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
