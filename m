Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 47B7C98C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 10 Oct 2017 08:53:37 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A1442442
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 10 Oct 2017 08:53:36 +0000 (UTC)
Date: Tue, 10 Oct 2017 10:53:34 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
In-Reply-To: <1507567045.3100.16.camel@HansenPartnership.com>
Message-ID: <nycvar.YFH.7.76.1710101052191.14384@jbgna.fhfr.qr>
References: <20171005192002.hxbjjdjhrfa4oa37@thunk.org>
	<1507303665.3104.13.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1710091750540.14384@jbgna.fhfr.qr>
	<1507567045.3100.16.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Maintainer's Summit Agenda Planning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 9 Oct 2017, James Bottomley wrote:

> Trivial changes seem to fall broadly into three categories:
> 
[ ... snip ... ]
>    2. whitespace changes (I ran checkpatch.pl on your file and it returned
>       these issues).

Just to be clear on this -- I'm not taking such patches through 
trivial.git.

> I don't want to open the whole spelling/whitespace can of worms, but
> perhaps we could have a more meaningful discussion about the pattern
> based issues ... for instance if we agree it's useful and coccinelle
> can do it, then tree wide replacement at -rc1 might be a better
> solution than ad-hoc application of hundreds of patches.

Agreed, and I think Linus did this several times in the past and has no 
issues with doing so.

Thanks,

-- 
Jiri Kosina
SUSE Labs
