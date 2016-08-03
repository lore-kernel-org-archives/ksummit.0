Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C8FDE83D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 22:25:15 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6F6F8A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 22:25:15 +0000 (UTC)
Date: Wed, 3 Aug 2016 15:25:13 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Message-ID: <20160803222513.GB17248@roeck-us.net>
References: <20160803141937.GA9180@kroah.com>
	<alpine.LNX.2.00.1608031642300.22028@cbobk.fhfr.pm>
	<57A21252.7000407@roeck-us.net> <20160803161234.GA32965@dtor-ws>
	<57A21F88.7000504@roeck-us.net> <20160803172015.GA36266@dtor-ws>
	<20160803182105.GA11395@roeck-us.net>
	<20160803185902.GB36266@dtor-ws>
	<alpine.LNX.2.00.1608032323150.22028@cbobk.fhfr.pm>
	<CAKdAkRRq-rEaBwv9Kn=9t-8noSJodOAjebZdLQx-b_d17bonkQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKdAkRRq-rEaBwv9Kn=9t-8noSJodOAjebZdLQx-b_d17bonkQ@mail.gmail.com>
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

On Wed, Aug 03, 2016 at 02:31:51PM -0700, Dmitry Torokhov wrote:
> On Wed, Aug 3, 2016 at 2:25 PM, Jiri Kosina <jikos@kernel.org> wrote:
> > On Wed, 3 Aug 2016, Dmitry Torokhov wrote:
> >
> >> I wonder if we could change meaning of naked cc: stable@ to mean latest
> >> stable only, and if fix is important enough then maintainer or somebody
> >> else can annotate how far back the fix should be applied? Ideally with
> >> "Fixes: XXX"?
> >
> > Yeah, James already proposed that and I totally agree with that.
> >
> > Greg, would you have any objection to formulating some rule a-la "all the
> > stable anotations should either be accompanied by explicit 'Fixes:', or
> > explicit range of kernel versions the patch is applicable to"?
> 
> Umm, that is not what I meant. I said that I wanted "naked" cc:stable
> only to apply top the latest stable. The fix may be applicable to
> another stable, but I have not researched that. As opposed to say "#
> v3.10+" where I definitely want it to be applied to all stables
> starting with 3.10.
> 
> Compare this to current situation where seeing unqualified CC stable
> is taken as "take it as far back as humanly possible" by default.
> 
I think this is an excellent idea. It would only apply to unqualified
stable annotations, which I suspect are the ones causing most of the trouble
in older branches. Whoever wants a patch applied to older stable kernels
would have to add either a range or a Fixes: tag, which I think is what Jiri
suggested above. This would make the rule something like

"All stable annotations should either be accompanied by explicit 'Fixes:',
 or explicit range of kernel versions the patch is applicable to. Unqualified
 stable annotations will only be applied to the most recent stable release."

Maybe this can be extended to "the most recent longterm stable release"
to find a middle ground.

Thanks,
Guenter
