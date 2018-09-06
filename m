Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 91052E2A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 06:12:25 +0000 (UTC)
Received: from mail3-relais-sop.national.inria.fr
	(mail3-relais-sop.national.inria.fr [192.134.164.104])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 94B566D6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 06:12:24 +0000 (UTC)
Date: Thu, 6 Sep 2018 08:12:21 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: Steven Rostedt <rostedt@goodmis.org>
In-Reply-To: <20180905222437.5d2a1730@vmware.local.home>
Message-ID: <alpine.DEB.2.20.1809060806110.3065@hadrien>
References: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
	<20180906094158.1eba4f50@canb.auug.org.au>
	<20180905222437.5d2a1730@vmware.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] API
 replacement/deprecation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On Wed, 5 Sep 2018, Steven Rostedt wrote:

> On Thu, 6 Sep 2018 09:41:58 +1000
> Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>
> > Hi all,
> >
> > On Wed, 5 Sep 2018 15:57:02 -0700 Kees Cook <keescook@chromium.org> wrote:
> > >
> > > I'd like to discuss ways that we could deprecate APIs more sanely. At
> > > present I've seen (and used) two approaches, fast and slow:
> >
> > As the one who often has the "fun" of coping with API changes, I would
> > like to be involved in this discussion.
> >
> > My first point would be that (almost) every time someone has tried the
> > "ultra fast" method (i.e. add new interface, convert everyone in the
> > current kernel, remove the old interface all in one go) we have had new
> > users of the old interface introduced at the same time.  (pain for the
> > linux-next bunny :-()
>
> Can this be solved with a script on kernel.org? Or a zero-day bot that
> checks new commits (and perhaps patches to LKML) that checks for
> deprecated functions being added by new code (like strcpy) and the
> author would then get a nasty email about adding deprecated interfaces.

There are some Coccinelle scripts already for functions the DRM people
want to get rid of.  They regularly trigger reports.  The advantage is to
show people what they should do, and not just tell people what they should
not do.  There could be a generic script that would just complain, for
cases where the relation between the undesired code and the desired code
is not easy to express.  Updating such a script would involve just adding
the name of the function to a list.

julia

>
> This would solve the issue of not everyone using the latest checkpatch,
> as this wouldn't be a voluntary self-check. It would also quickly
> educate developers on what code is not acceptable to be added.
>
> -- Steve
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>
