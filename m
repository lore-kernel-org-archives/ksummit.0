Return-Path: <joe@perches.com>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9C3BB901
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 10 Oct 2017 03:22:30 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0109.hostedemail.com
	[216.40.44.109])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 7A1911DAA7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 10 Oct 2017 03:22:29 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave02.hostedemail.com (Postfix) with ESMTP id 3DE3C1801BE9F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Oct 2017 16:47:19 +0000 (UTC)
Message-ID: <1507567634.3552.7.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>, Jiri Kosina
	<jikos@kernel.org>
Date: Mon, 09 Oct 2017 09:47:14 -0700
In-Reply-To: <1507567045.3100.16.camel@HansenPartnership.com>
References: <20171005192002.hxbjjdjhrfa4oa37@thunk.org>
	<1507303665.3104.13.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1710091750540.14384@jbgna.fhfr.qr>
	<1507567045.3100.16.camel@HansenPartnership.com>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Mon, 2017-10-09 at 09:37 -0700, James Bottomley wrote:
> it's useful and coccinelle
> can do it, then tree wide replacement at -rc1 might be a better
> solution than ad-hoc application of hundreds of patches.

Patches that span subsystems are always painful and, even if
submitted to all subsystems simultaneously, are frequently
only partially applied.

Scripting is useful.  Coccinelle is a very good tool, but it
is not the only scripted patch generator.

A preferred mechanism to get scripted patches applied
tree-wide would be beneficial.
