Return-Path: <dmitry.torokhov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9E97F71
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 16:12:38 +0000 (UTC)
Received: from mail-pa0-f65.google.com (mail-pa0-f65.google.com
	[209.85.220.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4E550284
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 16:12:38 +0000 (UTC)
Received: by mail-pa0-f65.google.com with SMTP id hh10so14326202pac.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 03 Aug 2016 09:12:38 -0700 (PDT)
Date: Wed, 3 Aug 2016 09:12:34 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20160803161234.GA32965@dtor-ws>
References: <20160802153400.GD10376@sirena.org.uk>
	<3268954.rXb0BJAX6c@vostro.rjw.lan> <87oa5aqjmq.fsf@intel.com>
	<20160803110935.GA26270@kroah.com> <87a8guq9y8.fsf@intel.com>
	<20160803132607.GA31662@kroah.com>
	<alpine.LNX.2.00.1608031537140.22028@cbobk.fhfr.pm>
	<20160803141937.GA9180@kroah.com>
	<alpine.LNX.2.00.1608031642300.22028@cbobk.fhfr.pm>
	<57A21252.7000407@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <57A21252.7000407@roeck-us.net>
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

On Wed, Aug 03, 2016 at 08:48:34AM -0700, Guenter Roeck wrote:
> On 08/03/2016 07:45 AM, Jiri Kosina wrote:
> >On Wed, 3 Aug 2016, Greg KH wrote:
> >
> >>>Has anything changed in the process that'd just make patches like this one
> >>>to be not merged these days?
> >>
> >>We have Guenter's test-bot that has helped out immensely here with this.
> >
> >That's very good to know, I admit that I have close to zero idea about how
> >the stable -rcs are being tested.
> >
> 
> ... and when it doesn't work because I messed it up, we get issues such as 3.18
> and 4.1 being broken for mips and sparc64 because a couple of patches which don't
> apply to those kernels were tagged with an unqualified Cc: stable and applied.
> 
> So, if anything, the one problem I see with the current stable process is
> those unqualified stable tags. Maybe those should be deprecated; expecting
> stable maintainers to figure out if a patch applies to a given stable branch
> or not is a bit too much to ask for. With stable releases as far back as
> 3.2 (or 338,020 commits as of right now) it is almost guaranteed that a
> patch tagged with an unqualified Cc: stable doesn't apply to all branches.

When I put cc:stable it is simply a suggestion for stable maintainers to
figure out if this commit is suitable for _their_ stable. I might have
an idea about n-1.x stable series but I certainly do not have any desire
nor time to research whether this patch applicable to 3.2 or 3.0 stable
series.

Stable maintaintership should be more than "swipe in everything marked
as cc:stable, try compiling and hope it all good".

Thanks.

-- 
Dmitry
