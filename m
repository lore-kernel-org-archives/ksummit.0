Return-Path: <julia.lawall@lip6.fr>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A7CCE2C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 06:37:13 +0000 (UTC)
Received: from mail3-relais-sop.national.inria.fr
	(mail3-relais-sop.national.inria.fr [192.134.164.104])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A71F0ED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 06:37:12 +0000 (UTC)
Date: Fri, 12 Aug 2016 08:37:09 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
To: "Michael S. Tsirkin" <mst@redhat.com>
In-Reply-To: <20160812090706-mutt-send-email-mst@kernel.org>
Message-ID: <alpine.DEB.2.10.1608120836490.3364@hadrien>
References: <18158a39-1297-7368-3c0e-3e9b3ce2c3ab@suse.com>
	<alpine.DEB.2.10.1607220808110.3114@hadrien>
	<b3390bd5-eb54-428a-3030-1d7289880d47@suse.com>
	<20160811154429.GB4134@mwanda>
	<CAFhKne_cK9edpgufMTaRJ7zdpJaiNoJqOzPsZ2wBaAhCjMHm4Q@mail.gmail.com>
	<20160812040155.kvw5322jqshtmljb@x>
	<CAFhKne9+B9q-dKMYcC9ycKz20T2fRvNzW9wAnZ8_B0d4+89CVQ@mail.gmail.com>
	<20160812052919.GB2289@p183.telecom.by>
	<20160812083512-mutt-send-email-mst@kernel.org>
	<alpine.DEB.2.10.1608120802420.3364@hadrien>
	<20160812090706-mutt-send-email-mst@kernel.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
 kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On Fri, 12 Aug 2016, Michael S. Tsirkin wrote:

> On Fri, Aug 12, 2016 at 08:04:09AM +0200, Julia Lawall wrote:
> >
> >
> > On Fri, 12 Aug 2016, Michael S. Tsirkin wrote:
> >
> > > On Fri, Aug 12, 2016 at 08:29:20AM +0300, Alexey Dobriyan wrote:
> > > > On Fri, Aug 12, 2016 at 12:07:11AM -0400, Matthew Wilcox wrote:
> > > > > On Aug 11, 2016 9:02 PM, "Josh Triplett" <josh@joshtriplett.org> wrote:
> > > > > > On Thu, Aug 11, 2016 at 11:51:52PM -0400, Matthew Wilcox wrote:
> > > > > > > Can we introduce types for this? We have a number of different return
> > > > > type
> > > > > > > conventions in the kernel:
> > > > > > >
> > > > > > > bool
> > > > > > > errno_t (-4095 to 0 are valid)
> > > > > > > count_t (-4095 to INT_MAX)
> > > > > > > long_count_t (-4095 to LONG_MAX)
> > > > > > > ulong_count_t (-4095 to -4096)
> > > > > > > struct foo _err*
> > > > > > >
> > > > > > > I think this is good programmer documentation in addition to being
> > > > > > > potentially useful to smatch.
> > > > > >
> > > > > > I'd love to see an explicit type distinct from "int" for "potentially an
> > > > > > errno".  And if any code uses "potentially an errno *or* a non-errno
> > > > > > non-zero return value", that should ideally use a distinct type as well.
> > > > >
> > > > > I think the biggest problem is coming up with good names for the types. And
> > > > > the churn of introducing them, particularly converting function pointers
> > > > > and all occurrences.
> > > >
> > > > Names are easy part (errno_t is perfect actually). The problem is that
> > > > once error is cleared, variable doesn't change to regular type anymore:
> > > >
> > > > 	errno_t rv;
> > > >
> > > > 	rv = f();
> > > > 	if (rv < 0)
> > > > 		return rv;
> > > > 	int rv = rv;
> > > >
> > > > which agains boils down to a language with real type system.
> > >
> > > We could maybe do
> > >
> > >  	errno_t rv;
> > >
> > >  	rv = f();
> > >  	if (IS_ERR(rv))
> > >  		return rv;
> > >  	int r = CHECKED(rv);
> > >
> > >
> > > Tools could maybe verify that all paths to CHECKED
> > > are actually going through an IS_ERR test as well.
> >
> > What does the return value of f look like?
>
> errno_t f(void);
>
>
> > Was it intentional to use IS_ERR, which checks for a pointer?
>
> It seems like a nice name but yes, it's already used to convert
> pointers to integers.
>
> Either we find a macro trick to teach IS_ERR to handle
> integers as well, or we use a different macro.
> TEST_ERR?

IS_ERRNO?

julia

>
> >  At least in
> > that case gcc would ensure that CHECKED is used.
> >
> > julia
>
>
> I guess
> typedef void * errno_t;
> is one way, maybe marking it noderef for good measure.
>
> This means the values are 64 bit unfortunately, which is often
> overkill.
>
> --
> MST
>
