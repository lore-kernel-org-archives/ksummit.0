Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 12575990
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Aug 2016 18:25:41 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 678AA297
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Aug 2016 18:25:40 +0000 (UTC)
Message-ID: <1472581538.2319.54.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: "Luis R. Rodriguez" <mcgrof@kernel.org>
Date: Tue, 30 Aug 2016 11:25:38 -0700
In-Reply-To: <CAB=NE6VQX5e5WjhM9qTZtvv-jgDrK1Y3c2kPV6Hxe69NBrc9mw@mail.gmail.com>
References: <CA+55aFxLRqket8-yCL=FPM0Bz86PxdS+hRSTzXES+=1bOv=feg@mail.gmail.com>
	<20160827183550.GB1601@katana> <20160828074706.GB1370@kroah.com>
	<1472492553.32433.108.camel@redhat.com>
	<CA+55aFz98VJR8RNv2=zuV0y4Ke_EmCyAR71eMNdq5p6cYm4OAw@mail.gmail.com>
	<1472497471.2376.32.camel@HansenPartnership.com>
	<CAB=NE6VQX5e5WjhM9qTZtvv-jgDrK1Y3c2kPV6Hxe69NBrc9mw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Tue, 2016-08-30 at 11:00 -0700, Luis R. Rodriguez wrote:
> On Mon, Aug 29, 2016 at 12:04 PM, James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> > As a side note: if you own a project you want to open source, 
> > Apache-2 ends up being practically the worst licence imaginable: 
> > not only can your competitors make proprietary modified copies of 
> > your code they don't have to show you, but they also gain rights to 
> > your patents with which to do it.
> 
> I disagree. The benefit that Apache 2 provides not that you hold
> patents per se, but rather if you want to contribute to the ecosystem
> you have to also contribute to the patent pool. In today's mobile
> market place the Apache 2 license seems like a rather *genius* move
> IMHO for the cases where otherwise you do not care for the gains of
> copyleft. What I'm trying to say is -- in my experience Android folks
> barely cared about contributing upstream, it always was an uphill
> battle. Patents however were a serious problem in every possible
> little corner in the ecosystem. If a lot of new companies are using
> permissive licenses for Linux, and you don't care over the copyleft
> gains the Apache 2 license seems to give you a better edge.

Basically, no, you've weakened your own patent shield: we keep OIN
around for defensive measures around the ecosystem.  Imagine an OIN
member wishing to defend linux gives OIN access to a set of patents
which also read on an open project it contributes to under apache-2. 
 Lets assume these patents are also practised by an evil proprietary
company that attacks Linux.  OIN defends on the basis of infringing
these patents but the evil proprietary company claims that it, in fact,
incorporated code from the open project into its proprietary one and
thus with the code came the licence to the patents.  End of defence.

OIN fortunately does have a stock of patents it owns outright as well
as cross licences, so the shield doesn't die entirely, but it may lose
a valuable weapon at the time it's most needed.

The problem here is limiting the IP leak.  GPLv2 is easy because the
patent licence is implied.  GPLv3 works because the patent licence is
explicit but bounded by the recipient's willingness to release their
code.  Apache-2 is basically unbounded and this is the problem that has
a wide range of unintended consequences.

James
