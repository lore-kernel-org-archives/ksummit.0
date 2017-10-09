Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 179DB722
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Oct 2017 15:54:43 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5CE613F2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Oct 2017 15:54:42 +0000 (UTC)
Date: Mon, 9 Oct 2017 17:54:38 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
In-Reply-To: <1507303665.3104.13.camel@HansenPartnership.com>
Message-ID: <nycvar.YFH.7.76.1710091750540.14384@jbgna.fhfr.qr>
References: <20171005192002.hxbjjdjhrfa4oa37@thunk.org>
	<1507303665.3104.13.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT
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

On Fri, 6 Oct 2017, James Bottomley wrote:

> 2) Trivial patches (again). OpenStack has recently started to become
> annoyed by these 
> 
> http://lists.openstack.org/pipermail/openstack-dev/2017-September/thread.html#122472
> 
> I thought about our process around the trivial tree, but it hasn't been
> updated in the last few releases, so effectively we no longer use it.

This has been caused solely by me being buried in other things, and there 
was always something else that overrode trivial tree in priority.

>  So is what we're currently doing (variable standards by tree) OK, or
> should we have a more concerted trivial policy?

My original plan was to revive trivial tree for 4.15, as there are quite a 
few patches in the queue (that still apply). But if it's generally 
considered annoying (although I am pretty sure we don't suffer from what's 
in the openstack thread), I don't object and can ditch it completely.

The thing is that such patches will keep coming anyway, and I think they 
have the value (although the priority is really lower than other changes 
of course). I still believe that having greppable comments, for example, 
is nice to have.

-- 
Jiri Kosina
SUSE Labs
