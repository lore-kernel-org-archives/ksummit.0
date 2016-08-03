Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 32A9B83D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 21:36:14 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A85B8E2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 21:36:13 +0000 (UTC)
Date: Wed, 3 Aug 2016 23:36:11 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
In-Reply-To: <CAKdAkRRq-rEaBwv9Kn=9t-8noSJodOAjebZdLQx-b_d17bonkQ@mail.gmail.com>
Message-ID: <alpine.LNX.2.00.1608032333020.22028@cbobk.fhfr.pm>
References: <87a8guq9y8.fsf@intel.com> <20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<20160803141937.GA9180@kroah.com>
	<alpine.LNX.2.00.1608031642300.22028@cbobk.fhfr.pm>
	<57A21252.7000407@roeck-us.net>
	<20160803161234.GA32965@dtor-ws> <57A21F88.7000504@roeck-us.net>
	<20160803172015.GA36266@dtor-ws>
	<20160803182105.GA11395@roeck-us.net>
	<20160803185902.GB36266@dtor-ws>
	<alpine.LNX.2.00.1608032323150.22028@cbobk.fhfr.pm>
	<CAKdAkRRq-rEaBwv9Kn=9t-8noSJodOAjebZdLQx-b_d17bonkQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 3 Aug 2016, Dmitry Torokhov wrote:

> Umm, that is not what I meant. I said that I wanted "naked" cc:stable
> only to apply top the latest stable. 

I understand that, but I intentionally proposed the rule a little bit more 
"exact", because meaning of "latest stable" might potentially be different 
at the time of the patch being commited to subsystem tree, and at the time 
of the commit actually appearing in Linus' tree (which is the point at 
which -stable notices).

Probably a slight corner case, but why not make it more specific by 
default.

Thanks,

-- 
Jiri Kosina
SUSE Labs
