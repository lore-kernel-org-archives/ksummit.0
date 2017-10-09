Return-Path: <joe@perches.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3B71A5B1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 10 Oct 2017 02:33:51 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0159.hostedemail.com
	[216.40.44.159])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C6585472
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 10 Oct 2017 02:33:50 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave07.hostedemail.com (Postfix) with ESMTP id BACCC183553AB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Oct 2017 17:04:10 +0000 (UTC)
Message-ID: <1507568645.3552.10.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>, Julia Lawall
	<julia.lawall@lip6.fr>
Date: Mon, 09 Oct 2017 10:04:05 -0700
In-Reply-To: <1507568189.3100.29.camel@HansenPartnership.com>
References: <20171005192002.hxbjjdjhrfa4oa37@thunk.org>
	<1507303665.3104.13.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1710091750540.14384@jbgna.fhfr.qr>
	<1507567045.3100.16.camel@HansenPartnership.com>
	<alpine.DEB.2.20.1710091848390.3870@hadrien>
	<1507568189.3100.29.camel@HansenPartnership.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
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

On Mon, 2017-10-09 at 09:56 -0700, James Bottomley wrote:
> I was actually thinking we validate the script

That's the hard part.
Completeness and correctness are non trivial.

> and if there are no problems, apply it at -rc1

I also think that might be the best mechanism.

> However, if we agree a
> curation path for the script, the application could be done by Jíři as
> a pull from the trivial tree (unless Linus wanted to do it himself or
> someone else wanted to manage this).

Perhaps a kbuild robot variant could be utilized here.

Many changes should produce no object code differences
and validation of the correctness of the changes might
be better done using compilation comparison tools.
