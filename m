Return-Path: <edubezval@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 61744104A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 22:55:37 +0000 (UTC)
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E1FBF713
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 22:55:36 +0000 (UTC)
Received: by mail-oi0-f42.google.com with SMTP id b15-v6so23733940oib.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 06 Sep 2018 15:55:36 -0700 (PDT)
Date: Thu, 6 Sep 2018 15:55:33 -0700
From: Eduardo Valentin <edubezval@gmail.com>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20180906225531.GB2251@localhost.localdomain>
References: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Handling of embargoed
 security issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hey,

On Thu, Sep 06, 2018 at 09:18:07PM +0200, Jiri Kosina wrote:
> I believe we have reasonably well-established process for handling 
> security issues that are a matter of a single, reasonably self-contained 
> fixup.
> 
> Past experiences with Meltdown, Spectre and L1TF have shown that we're not 
> really ready to handle that in a reasonably sane way yet.
> 
> Yeah, at the end of the day we managed to have the fixes propagated in 
> time to Linus' tree, to stable, and to distros as well, but it was 
> completely out of anything regular, and definitely had permanent damaging 
> effects (I'd say both in personal and business aspects for almost 
> everybody who had to participate).
> 
> I'd believe that everybody involved would agree that this didn't work 
> really well, and if it potentially would have to happen again (and we 
> already went through it at least twice this year), it would not be 
> sustainable.
> 
> I am not completely sure what we could do to improve this, especially with 
> our kernel community hats on -- I am pretty sure a lot is happening on the 
> corporate level between individual "corporate stakeholders". Ideas I think 
> would be worth discussing:
> 
> - how to adapt our processess to be able to deal with such situations 
>   better should they happen in the future again. So far all our 
>   longer-term development has been concentrated around LKML (and other 
>   MLs) and the existing maintainership communities / structures, but the 
>   embargos for new big features don't really fit into this
> 
> - how to make sure that proper pressure is applied on the companies that 
>   are handling embargoes irresponsibly wrt. linux/opensource development 
>   (well, even some proprietary vendors were rather unhappy with those 
>   events) from us as the linux kernel community
>   + and perhaps even more importantly, what exactly we should be pressing 
>     for

Should we add maybe a point here to discuss which kernels are to be
considered for patching in these cases? All the stable branches? Only
mainline? Obviously, either extreme cases can hurt people. Patching
older kernels requires insane amount of work and patching only mainline
leaves distros on limbo.

Honestly, the fact that somehow the community managed to make this to
stable (and eventually to distros) is really good. Imagine for a second
a world in which these made only mainline and no stable branch..

In any case, maybe the community should consider what really is going to
be effectively patched. That may be an extra push for distros to upgrade
older kernels as well.


> 
> Thanks,
> 
> -- 
> Jiri Kosina
> SUSE Labs
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
