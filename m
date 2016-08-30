Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B86EE892
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Aug 2016 19:31:54 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D2C6210C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Aug 2016 19:31:53 +0000 (UTC)
Date: Tue, 30 Aug 2016 21:31:51 +0200
From: "Luis R. Rodriguez" <mcgrof@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20160830193151.GT3296@wotan.suse.de>
References: <CA+55aFxLRqket8-yCL=FPM0Bz86PxdS+hRSTzXES+=1bOv=feg@mail.gmail.com>
	<20160827183550.GB1601@katana> <20160828074706.GB1370@kroah.com>
	<1472492553.32433.108.camel@redhat.com>
	<CA+55aFz98VJR8RNv2=zuV0y4Ke_EmCyAR71eMNdq5p6cYm4OAw@mail.gmail.com>
	<1472497471.2376.32.camel@HansenPartnership.com>
	<CAB=NE6VQX5e5WjhM9qTZtvv-jgDrK1Y3c2kPV6Hxe69NBrc9mw@mail.gmail.com>
	<1472581538.2319.54.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1472581538.2319.54.camel@HansenPartnership.com>
Cc: "Bradley M. Kuhn" <bkuhn@sfconservancy.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
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

On Tue, Aug 30, 2016 at 11:25:38AM -0700, James Bottomley wrote:
> On Tue, 2016-08-30 at 11:00 -0700, Luis R. Rodriguez wrote:
> > On Mon, Aug 29, 2016 at 12:04 PM, James Bottomley
> > <James.Bottomley@hansenpartnership.com> wrote:
> > > As a side note: if you own a project you want to open source, 
> > > Apache-2 ends up being practically the worst licence imaginable: 
> > > not only can your competitors make proprietary modified copies of 
> > > your code they don't have to show you, but they also gain rights to 
> > > your patents with which to do it.
> > 
> > I disagree. The benefit that Apache 2 provides not that you hold
> > patents per se, but rather if you want to contribute to the ecosystem
> > you have to also contribute to the patent pool. In today's mobile
> > market place the Apache 2 license seems like a rather *genius* move
> > IMHO for the cases where otherwise you do not care for the gains of
> > copyleft. What I'm trying to say is -- in my experience Android folks
> > barely cared about contributing upstream, it always was an uphill
> > battle. Patents however were a serious problem in every possible
> > little corner in the ecosystem. If a lot of new companies are using
> > permissive licenses for Linux, and you don't care over the copyleft
> > gains the Apache 2 license seems to give you a better edge.
> 
> Basically, no, you've weakened your own patent shield: we keep OIN
> around for defensive measures around the ecosystem.

The value of OIN is only sensible if it has something *you want*. Otherwise its
pointless, provided you have other grounds to cover your other interests. If
you're already a member and OIN doesn't have what you need you are shit out
of luck.

>  Imagine an OIN
> member wishing to defend linux gives OIN access to a set of patents
> which also read on an open project it contributes to under apache-2. 
>  Lets assume these patents are also practised by an evil proprietary
> company that attacks Linux.  OIN defends on the basis of infringing
> these patents but the evil proprietary company claims that it, in fact,
> incorporated code from the open project into its proprietary one and
> thus with the code came the licence to the patents.  End of defence

Understood, however I don't think that's the strategy behind the choice
of the license.

> OIN fortunately does have a stock of patents it owns outright as well
> as cross licences, so the shield doesn't die entirely, but it may lose
> a valuable weapon at the time it's most needed.

Sure, but if OIN *does not* have the patents you really care for, who
cares.

> The problem here is limiting the IP leak.  GPLv2 is easy because the
> patent licence is implied.  GPLv3 works because the patent licence is
> explicit but bounded by the recipient's willingness to release their
> code.  Apache-2 is basically unbounded and this is the problem that has
> a wide range of unintended consequences.

If you are simply leveling the playing field and the bait is contribution, then
what really matters if producing an ecosystem you want people to contribute to.

Its a nice alternative to have. In fact, you can take both approaches.

  Luis
