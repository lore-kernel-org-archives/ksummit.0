Return-Path: <rodrigo.vivi@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2B30FC49
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 04:49:28 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 85FFD8B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 04:49:27 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id v16-v6so6057168wro.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 04 Sep 2018 21:49:27 -0700 (PDT)
MIME-Version: 1.0
References: <CABVU7+vBVivOZ32aEokJ0y3=C2z0Ev12O3vSVfyTC9TDrBOr8A@mail.gmail.com>
	<20180905042246.GA2977@mtr-leonro.mtl.com>
In-Reply-To: <20180905042246.GA2977@mtr-leonro.mtl.com>
From: Rodrigo Vivi <rodrigo.vivi@gmail.com>
Date: Tue, 4 Sep 2018 21:49:13 -0700
Message-ID: <CABVU7+u+F1CXAW48_XfhLy59BOTxAS-qa_pG4Xjkki=f4Rr9Kg@mail.gmail.com>
To: leon@kernel.org
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

On Tue, Sep 4, 2018 at 9:22 PM Leon Romanovsky <leon@kernel.org> wrote:
>
> On Tue, Sep 04, 2018 at 12:54:16PM -0700, Rodrigo Vivi wrote:
> > Hi there,
> >
> > I've submitted a proposal for plumber's referred track. There, I want to
> > talk
> > about tools and challenges we have on embargo development vs upstream one
> > and
> > how to get focus on upstream first and upstream always mentality.
> >
> > The name of plumbers proposal talk is:
> > "Unveiling Intel Graphics Internal Development"
> >
> > I'm not sure if the talk will get accepted, but anyway I'd like to have the
> > chance to talk to other maintainers to exchange views on different ways of
> > maintaining this kind of embargo development including challenges, tools,
> > processes, and rules.
> >
> > So I'm interested in hallway tracks of Maintainer / Kernel Summit, or maybe
> > a
> > bof session if there's interest.
> >
> > Please let me know if there's interested or if further information and/or
> > clarification is needed.
>
> What is "embargo development"? Are you referring to US government
> restrictions or to anything else?

No. nothing to do with government.
Embargoed by company's temporary restrictions.

Sorry for not being clear here.

>
> Also can you please explain why should we know about internal Intel
> development flow?

First of all I don't believe that we are the only one that need to
keep this kind
of flow and i915 has a very active development and we are strongly
committed with
upstream development. Our golden rules for internal development is
upstream first, upstream always.
So, maybe sharing some knowledge and lessons we learned on the past years
might be useful to someone else that might still struggle with closed source
style of development.

Also we have some challenges on keeping everything updated and
ready for upstreaming at any moment. Maybe someone else has better tools
and better procedures than us, but we are just not aware because we
never talked.

Ultimately there are some essential questions that I'd like to open to community
and ask for feedback and ideas. Some issues and gaps that cannot be solved, or
even come to a consensus on, internally.

But my hope is that we can keep that on the constructive space.

Thanks,
Rodrigo.

>
> Thanks
>
> >
> > Thanks in advance,
> > Rodrigo.
>
> > _______________________________________________
> > Ksummit-discuss mailing list
> > Ksummit-discuss@lists.linuxfoundation.org
> > https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
>


-- 
Rodrigo Vivi
Blog: http://blog.vivi.eng.br
