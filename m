Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 02D5671
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 04:02:03 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
	[217.70.183.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 663CB120
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 04:02:02 +0000 (UTC)
Date: Thu, 11 Aug 2016 18:01:55 -1000
From: Josh Triplett <josh@joshtriplett.org>
To: Matthew Wilcox <willy6545@gmail.com>
Message-ID: <20160812040155.kvw5322jqshtmljb@x>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
	<18158a39-1297-7368-3c0e-3e9b3ce2c3ab@suse.com>
	<alpine.DEB.2.10.1607220808110.3114@hadrien>
	<b3390bd5-eb54-428a-3030-1d7289880d47@suse.com>
	<20160811154429.GB4134@mwanda>
	<CAFhKne_cK9edpgufMTaRJ7zdpJaiNoJqOzPsZ2wBaAhCjMHm4Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFhKne_cK9edpgufMTaRJ7zdpJaiNoJqOzPsZ2wBaAhCjMHm4Q@mail.gmail.com>
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

On Thu, Aug 11, 2016 at 11:51:52PM -0400, Matthew Wilcox wrote:
> On Aug 11, 2016 8:44 AM, "Dan Carpenter" <dan.carpenter@oracle.com> wrote:
> > I need these manual fixes when not knowing the error code causes
> > problems because a function does this:
> >         if (ret)
> >                 return ret;
> > But the caller does:
> >         if (ret < 0)
> >                 return ret;
> > There is a mismatch because Smatch thinks any non-zero is an error but
> > the caller knows only negatives are errors.
> 
> Can we introduce types for this? We have a number of different return type
> conventions in the kernel:
> 
> bool
> errno_t (-4095 to 0 are valid)
> count_t (-4095 to INT_MAX)
> long_count_t (-4095 to LONG_MAX)
> ulong_count_t (-4095 to -4096)
> struct foo _err*
> 
> I think this is good programmer documentation in addition to being
> potentially useful to smatch.

I'd love to see an explicit type distinct from "int" for "potentially an
errno".  And if any code uses "potentially an errno *or* a non-errno
non-zero return value", that should ideally use a distinct type as well.
