Return-Path: <roland.dreier@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 14F63A89
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 20:20:31 +0000 (UTC)
Received: from mail-qg0-f47.google.com (mail-qg0-f47.google.com
	[209.85.192.47])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E473A2030D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 20:20:29 +0000 (UTC)
Received: by mail-qg0-f47.google.com with SMTP id j107so8176394qga.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 13:20:29 -0700 (PDT)
MIME-Version: 1.0
Sender: roland.dreier@gmail.com
In-Reply-To: <53710D95.6080900@sr71.net>
References: <alpine.DEB.2.10.1405081124000.24271@gentwo.org>
	<1399595490.2230.13.camel@dabdike.int.hansenpartnership.com>
	<alpine.DEB.2.10.1405090940080.11318@gentwo.org>
	<20140509122451.5228a038@gandalf.local.home>
	<alpine.DEB.2.10.1405091150410.11810@gentwo.org>
	<53710D95.6080900@sr71.net>
From: Roland Dreier <roland@kernel.org>
Date: Mon, 12 May 2014 13:20:08 -0700
Message-ID: <CAG4TOxOttaoRZFTf-PvK5N796GXjwdksfHgWpt9Pkrguij=sKQ@mail.gmail.com>
To: Dave Hansen <dave@sr71.net>
Content-Type: text/plain; charset=UTF-8
Cc: Sarah Sharp <sarah@minilop.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	Julia Lawall <julia.lawall@lip6.fr>, Darren Hart <darren@dvhart.com>,
	Christoph Lameter <cl@linux.com>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking
 the kernel and avoiding size regressions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, May 12, 2014 at 11:06 AM, Dave Hansen <dave@sr71.net> wrote:
>> Loadable modules are using vmalloc areas that use 4k pages which
>> is another issue.
>
> Isn't this just another case where we need to try kmalloc() and fall
> back to vmalloc() when it fails?  Most modules are loaded way before we
> see any kind of possibility of memory fragmentation so I'd expect that
> to be pretty successful in the common case.

This is probably a good idea to "just do".  I think it was about 10
years ago that I first added this hack to our ppc440 kernel (where
avoiding the software filled TLB gave us about 2x for module code) :).
