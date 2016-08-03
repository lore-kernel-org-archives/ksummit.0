Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9698787A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 21:25:47 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 04D96137
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 21:25:46 +0000 (UTC)
Date: Wed, 3 Aug 2016 23:25:43 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Greg KH <greg@kroah.com>
In-Reply-To: <20160803185902.GB36266@dtor-ws>
Message-ID: <alpine.LNX.2.00.1608032323150.22028@cbobk.fhfr.pm>
References: <87a8guq9y8.fsf@intel.com> <20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<20160803141937.GA9180@kroah.com>
	<alpine.LNX.2.00.1608031642300.22028@cbobk.fhfr.pm>
	<57A21252.7000407@roeck-us.net>
	<20160803161234.GA32965@dtor-ws> <57A21F88.7000504@roeck-us.net>
	<20160803172015.GA36266@dtor-ws>
	<20160803182105.GA11395@roeck-us.net>
	<20160803185902.GB36266@dtor-ws>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	ksummit-discuss@lists.linuxfoundation.org
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

> I wonder if we could change meaning of naked cc: stable@ to mean latest 
> stable only, and if fix is important enough then maintainer or somebody 
> else can annotate how far back the fix should be applied? Ideally with 
> "Fixes: XXX"?

Yeah, James already proposed that and I totally agree with that.

Greg, would you have any objection to formulating some rule a-la "all the 
stable anotations should either be accompanied by explicit 'Fixes:', or 
explicit range of kernel versions the patch is applicable to"?

I believe this is a very reasonable compromise between "maintainers or 
submitters have to do their homework wrt. stable" and "we don't want to 
impose too much overhead to anybody".

Thanks,

-- 
Jiri Kosina
SUSE Labs
