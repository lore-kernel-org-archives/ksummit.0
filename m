Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8DD24360
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 13:58:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 798FF6E0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 13:58:02 +0000 (UTC)
Date: Wed, 10 Oct 2018 10:57:54 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20181010105754.0a46e1b3@coco.lan>
In-Reply-To: <CAMuHMdWBWKtZDpdYn0zaWFnF27pnenu6Ha5wq-40QPWE+D-pFQ@mail.gmail.com>
References: <CAKON4OxHUoVQ3zso=avoGE35MwWnkGaU13R_qPaw9zAqMVCDxQ@mail.gmail.com>
	<6108593.JtmfA2IdsK@avalon>
	<CAKON4Owevjg=wyQrxJ4z7x=hUryKGhHkXB=htL5G6MhuruwZ-Q@mail.gmail.com>
	<CABVU7+t4VDg6p4Kq-P6U+epOOoeiy8E5XJ0gxDAJTyfW7h6Y5Q@mail.gmail.com>
	<20181008183423.4bdcaeea@coco.lan>
	<CABVU7+uQCcREk1V_SUve64BA8b=Qz0npUJwXgg=eae4H9++mdA@mail.gmail.com>
	<20181009070736.42b8fea5@coco.lan>
	<D9A3A892-FF4B-4A63-99C9-C29C58AB5AAC@fb.com>
	<CAPcyv4hWMZkS0KMVihL5R99nQp6CAG3wkOfF2nWdVLq9w3bOcQ@mail.gmail.com>
	<CAMuHMdWBWKtZDpdYn0zaWFnF27pnenu6Ha5wq-40QPWE+D-pFQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] New CoC and Brendan Eich
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Wed, 10 Oct 2018 08:47:26 +0200
Geert Uytterhoeven <geert@linux-m68k.org> escreveu:

> On Wed, Oct 10, 2018 at 12:03 AM Dan Williams <dan.j.williams@intel.com> wrote:
> > On Tue, Oct 9, 2018 at 9:53 AM Chris Mason <clm@fb.com> wrote:  
> > > On 9 Oct 2018, at 6:07, Mauro Carvalho Chehab wrote:  
> > > >> So, a company would fire maintainer for being conniving with an
> > > >> harassment
> > > >> or any other unacceptable behavior, right?!
> > > >>
> > > >> So, Developer A shouts racists words, maintainer C doesn't C the
> > > >> email.
> > > >> Developer B complains to the TAB against Developer A and Maintainer
> > > >> C.  
> > > >
> > > > No. If you read the CoC carefully, you'll see that it doesn't
> > > > have anything saying that TAB would be taking any action against
> > > > Developer A. The only person that this CoC who would be punished,
> > > > on this CoC's "enforcement" section is the maintainer.  
> 
> Indeed.
> 
> The only repercussion for violators (not considering existing legal
> frameworks) is being banned, and/or their work being rejected, but not by
> the TAB.
> 
> The CoC says it is the _maintainer_'s responsibility to take action
> w.r.t. the violator, by (translated to Linux kernel development and
> maintenance tasks):
>   1) Replying to email clarifying the standards of acceptable behavior,

On a side node, right now Brazil is voting for president. I'm part of a
Whatsapp group with about 100 members, of people that know each other,
with a CoC that explicitly forbids political posts. Every time
someone post any such message, someone replies with the CoC (usually,
not a group admin).

Does it work? No. Just yesterday, someone posted a message saying
something like:

  "Please, let's stop posting anything about politics, but most of you
   seem to be in favor of candidate A. He is not good because ..."

In short, this post caused hundreds of other posts, dozens of
CoC posts and two members left te group.

While it could be worth trying such replies, I'm afraid that
this could end by producing the opposite effect of causing or
inflaming an already existing flame war.

>   2) Removing or editing the comment and/or contribution,
>   3) Editing the patch description and/or patch body,
>   4) Rejecting the patch,

Reject a technically good patch due to that seems a poor choice.
Better to do (3) instead.

>   5) Banning the contributor from the mailing list,
> 
> 2) cannot be done on public mailing lists,
> 5) also needs external help from the mailing list administrator, so it is not
>     under direct control of the maintainer.

IMO, the possible actions against CoC violators are:

1) Any community member can reply clarifying the CoC.
2) The maintainer may edit patches that would contain CoC violations.
3) Any community member may suggest ML admins to ban the offender, if
   the behavior doesn't change.

Btw, in this case, the "community member" is anyone subscribed to the
ML. It doesn't even need to be a developer.

With regards to (2), I have to add that idiomatic expression violations
are really hard to be detected by non-native English speakers.

Recently, I wanted to post about exchanging gpg keys on an event
we'll have. As this is something that I don't commonly organize, I browsed
the Internet to check the proper term (it is "key chain party" or
"key signing party"). On my google search, I omitted one of the words on 
that phase, and discovered an idiomatic expression that could be argued
as a CoC violation.

> So "Maintainers have the right and responsibility [...]" needs to be updated
> to match the above.
> 
> > > The code of conduct asks maintainers to be involved in maintaining
> > > culture as well as code.  It does mention repercussions for maintainers,
> > > but it's important to apply some common sense here.  If you enable
> > > people to send in terrible code, someone is going to talk to you about
> > > your poor decisions.  If you're enabling people to violate the code of
> > > conduct, it's a good idea to sit down and talk about ways to improve the
> > > level of discourse in your subsystem.  
> >
> > I'd also add, it's clear that these situations can be messy and a
> > maintainer may not feel equipped, or have the emotional resources to
> > engage at all times. So I think reasonable way for a maintainer to
> > engage is to simply ask for help. At a minimum we need trusted people
> > in the community that are willing to be available to help out
> > contributors and fellow maintainers alike, and the TAB is tasked with
> > being available to help. That was the situation with the previous
> > code, this one is more explicit, but the intent is the same to have a
> > concerted effort and an escalation path to help keep development
> > discourse productive.  
> 
> Indeed, so for 1), assistance can be provided by other members of the community.
> 
> -Maintainers are responsible for clarifying the standards of acceptable behavior
> -and are expected to take appropriate and fair corrective action in response to
> +All project members are encouraged to clarify the standards of
> acceptable behavior
> +and take appropriate and fair corrective action in response to
>  any instances of unacceptable behavior.

That makes a lot more sense to me.

Thanks,
Mauro
