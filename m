Return-Path: <adobriyan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AE43D2C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 05:29:25 +0000 (UTC)
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E1246F5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 05:29:24 +0000 (UTC)
Received: by mail-wm0-f66.google.com with SMTP id i5so879009wmg.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 11 Aug 2016 22:29:24 -0700 (PDT)
Date: Fri, 12 Aug 2016 08:29:20 +0300
From: Alexey Dobriyan <adobriyan@gmail.com>
To: Matthew Wilcox <willy6545@gmail.com>
Message-ID: <20160812052919.GB2289@p183.telecom.by>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
	<18158a39-1297-7368-3c0e-3e9b3ce2c3ab@suse.com>
	<alpine.DEB.2.10.1607220808110.3114@hadrien>
	<b3390bd5-eb54-428a-3030-1d7289880d47@suse.com>
	<20160811154429.GB4134@mwanda>
	<CAFhKne_cK9edpgufMTaRJ7zdpJaiNoJqOzPsZ2wBaAhCjMHm4Q@mail.gmail.com>
	<20160812040155.kvw5322jqshtmljb@x>
	<CAFhKne9+B9q-dKMYcC9ycKz20T2fRvNzW9wAnZ8_B0d4+89CVQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFhKne9+B9q-dKMYcC9ycKz20T2fRvNzW9wAnZ8_B0d4+89CVQ@mail.gmail.com>
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

On Fri, Aug 12, 2016 at 12:07:11AM -0400, Matthew Wilcox wrote:
> On Aug 11, 2016 9:02 PM, "Josh Triplett" <josh@joshtriplett.org> wrote:
> > On Thu, Aug 11, 2016 at 11:51:52PM -0400, Matthew Wilcox wrote:
> > > Can we introduce types for this? We have a number of different return
> type
> > > conventions in the kernel:
> > >
> > > bool
> > > errno_t (-4095 to 0 are valid)
> > > count_t (-4095 to INT_MAX)
> > > long_count_t (-4095 to LONG_MAX)
> > > ulong_count_t (-4095 to -4096)
> > > struct foo _err*
> > >
> > > I think this is good programmer documentation in addition to being
> > > potentially useful to smatch.
> >
> > I'd love to see an explicit type distinct from "int" for "potentially an
> > errno".  And if any code uses "potentially an errno *or* a non-errno
> > non-zero return value", that should ideally use a distinct type as well.
> 
> I think the biggest problem is coming up with good names for the types. And
> the churn of introducing them, particularly converting function pointers
> and all occurrences.

Names are easy part (errno_t is perfect actually). The problem is that
once error is cleared, variable doesn't change to regular type anymore:

	errno_t rv;

	rv = f();
	if (rv < 0)
		return rv;
	int rv = rv;

which agains boils down to a language with real type system.
