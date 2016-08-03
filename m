Return-Path: <dmitry.torokhov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 85E72723
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 21:31:54 +0000 (UTC)
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1C04CE2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 21:31:54 +0000 (UTC)
Received: by mail-vk0-f66.google.com with SMTP id s189so8814696vkh.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 03 Aug 2016 14:31:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.LNX.2.00.1608032323150.22028@cbobk.fhfr.pm>
References: <87a8guq9y8.fsf@intel.com> <20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<20160803141937.GA9180@kroah.com>
	<alpine.LNX.2.00.1608031642300.22028@cbobk.fhfr.pm>
	<57A21252.7000407@roeck-us.net>
	<20160803161234.GA32965@dtor-ws> <57A21F88.7000504@roeck-us.net>
	<20160803172015.GA36266@dtor-ws> <20160803182105.GA11395@roeck-us.net>
	<20160803185902.GB36266@dtor-ws>
	<alpine.LNX.2.00.1608032323150.22028@cbobk.fhfr.pm>
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Date: Wed, 3 Aug 2016 14:31:51 -0700
Message-ID: <CAKdAkRRq-rEaBwv9Kn=9t-8noSJodOAjebZdLQx-b_d17bonkQ@mail.gmail.com>
To: Jiri Kosina <jikos@kernel.org>
Content-Type: text/plain; charset=UTF-8
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

On Wed, Aug 3, 2016 at 2:25 PM, Jiri Kosina <jikos@kernel.org> wrote:
> On Wed, 3 Aug 2016, Dmitry Torokhov wrote:
>
>> I wonder if we could change meaning of naked cc: stable@ to mean latest
>> stable only, and if fix is important enough then maintainer or somebody
>> else can annotate how far back the fix should be applied? Ideally with
>> "Fixes: XXX"?
>
> Yeah, James already proposed that and I totally agree with that.
>
> Greg, would you have any objection to formulating some rule a-la "all the
> stable anotations should either be accompanied by explicit 'Fixes:', or
> explicit range of kernel versions the patch is applicable to"?

Umm, that is not what I meant. I said that I wanted "naked" cc:stable
only to apply top the latest stable. The fix may be applicable to
another stable, but I have not researched that. As opposed to say "#
v3.10+" where I definitely want it to be applied to all stables
starting with 3.10.

Compare this to current situation where seeing unqualified CC stable
is taken as "take it as far back as humanly possible" by default.

Thanks.

-- 
Dmitry
