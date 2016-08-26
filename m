Return-Path: <matthew.garrett@coreos.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EBAD8258
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 04:48:25 +0000 (UTC)
Received: from mail-yb0-f174.google.com (mail-yb0-f174.google.com
	[209.85.213.174])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C3508101
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 04:48:24 +0000 (UTC)
Received: by mail-yb0-f174.google.com with SMTP id e31so23597151ybi.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 25 Aug 2016 21:48:24 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CA+55aFxXroS=_Mfyg+-3WF0KwqvPXJBKT0tjryWbDUx6G9Qvkw@mail.gmail.com>
References: <CA+55aFxLRqket8-yCL=FPM0Bz86PxdS+hRSTzXES+=1bOv=feg@mail.gmail.com>
	<CAPeXnHs_9=m9R+JO=O_p_Q390b1DgnsKyMgP6kGiPyBGn=+3_w@mail.gmail.com>
	<CA+55aFxXroS=_Mfyg+-3WF0KwqvPXJBKT0tjryWbDUx6G9Qvkw@mail.gmail.com>
From: Matthew Garrett <mjg59@coreos.com>
Date: Fri, 26 Aug 2016 00:48:23 -0400
Message-ID: <CAPeXnHvMUOL4M6y7_9oEF6ovrasfSY9Zqn2tRs-dRst9SS1jYQ@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: "Bradley M. Kuhn" <bkuhn@sfconservancy.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Aug 26, 2016 at 12:25 AM, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
> On Thu, Aug 25, 2016 at 8:07 PM, Matthew Garrett <mjg59@coreos.com> wrote=
:
>>
>> No, we're not. I mean, sure, if what you care about is corporate
>> support, we're doing fine.
>
> What I care about is getting code contributions back. That's kind of
> the whole *point* of the GPLv2. Not the legalese. Growing the source
> code base by having participation in the project.

That's what you care about. That's not what your users care about.
They care about code *availability*, not contribution. They don't care
whether their vendor participates upstream. They just care about being
able to fix their shitty broken piece of hardware when the vendor
won't ship updates.

> But that corporate support is exactly what you then on the other hand
> claim to be trying to _force_ with the enforcement actions.
>
> And the thing is, there really are lots of very good reasons to
> believe that we're getting more code willing code contributions back
> thanks to friendly terms with corporations, compared to any enforced
> action and being difficult.

But=E2=80=A6 there isn't. There just really isn't. Of the things I've bough=
t
running Linux in the past year, maybe 25% have been able to provide
source, and in one case that involved me having to call them, tell
them I was a copyright holder, threaten to sue and then also tell them
that I'd found several security vulnerabilities in their product. And
this was a brand name vendor! They're never going to directly work
with upstream because they don't have long product cycles and they
gain nothing from it, but the users who get hold of their source are
benefiting hugely.

> It turns out that corporations actually *want* to be compliant for the
> most part. At least as long as they see you as a friend, not a foe.
>
> And lawsuits tend to turn friends into foes.
>
> See what the BusyBox maintainer who actually went down the lawsuit
> path says in [1].

Rob's always missed the point here. Sure, the Busybox cases didn't
result in more code in upstream Busybox. But they did result in
several vendors shipping source, and other vendors in the same space
doing so out of fear of having the same thing happen to them. And
users took that code, and they fixed it and they made something
better. And they shared that better version with other people, and
they realised that code availability made their life better and some
of these people are kids who are going to be amongst the next
generation of people who are going to show up here and start sending
you patches, and others are going to be people living on the street
who don't get their phones hacked by their former partner because they
were able to obtain an updated OS without having to buy a new phone,
and others are people building projects like the Freedom Box which
exists only because AP vendors are afraid enough of lawsuits that they
released enough source to let others build new things on top of that.

Stop pretending that there have been no benefits from this. It's
clearly untrue. If you want to argue that the corporate involvement
has been worth more than the community benefit that results from
lawsuits, fine. I'll disagree, but it's a consistent position. But
right now you're on the Fox News side of the truth/lies line, and it's
not a good look. Users benefit from code availability, even if it
isn't contributed upstream.

> We have been very successful exactly because we didn't have the insane
> antagonism.

And again, you're using a definition of "successful" that doesn't
match "we". Where's your sense of wonder? How can you look at this
amazing thing you've created and not realise that so much of its
beauty is down to people doing things you've never thought of? So much
of what Linux has achieved in the world has had nothing to do with
upstream contribution, and we should care about that as much as we
care about the number of vendor git commits.
