Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9072C305
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 21:54:48 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id B0532136
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 21:54:47 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Tue, 21 Jul 2015 00:21:32 +0200
Message-ID: <2015360.EW9BxZmMXF@vostro.rjw.lan>
In-Reply-To: <CAKMK7uFmyH9Gc3EY6F24PK3hOtxLPYEi9U=ixe=g-3=amoQoCw@mail.gmail.com>
References: <1489458.8WDRattPkl@vostro.rjw.lan>
	<20150716155819.GA30423@kroah.com>
	<CAKMK7uFmyH9Gc3EY6F24PK3hOtxLPYEi9U=ixe=g-3=amoQoCw@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: "Brown, Len" <len.brown@intel.com>, Alan Stern <stern@rowland.harvard.edu>,
	Kristen Carlson Accardi <kristen@linux.intel.com>,
	Grant Likely <grant.likely@linaro.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] System-wide interface to specify
	the level of PM tuning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Friday, July 17, 2015 01:41:56 PM Daniel Vetter wrote:
> On Thu, Jul 16, 2015 at 5:58 PM, Greg KH <greg@kroah.com> wrote:
> > On Thu, Jul 16, 2015 at 08:53:02AM -0700, Josh Triplett wrote:
> >> But the kernel already has quirk tables for various hardware, and that
> >> seems appropriate to continue putting in the kernel.
> >
> > For some types of devices, sure.  For others, like broken USB keyboards
> > that can't handle autosuspend, no.  For those we need a userspace
> > _whitelist_ that udev can use.  So there's no one answer that works for
> > all types of quirks.
> 
> Whether white or blacklist or some other mixed thing doesn't really
> matter. Imo the important part is that driver maintainers are in the
> best position to maintain that, and pushing it out to anyone else is
> just really not doing our jobs. And I think for most of these quirk
> lists the kernel does seem like the most appropriate place. If the
> list becomes giantic then we can move it to userspace (if that's
> really a problem, afaik no one proposed yet to move device match
> tables into userspace either and that's kinda the same thing really).
> But as long as there's no white/black/whatever list yet starting in
> the kernel is imo the right place.

Well, I'm wondering, then, why i915.enable_psr is not enabled by default,
for one example?

Failing to enable it prevents some SoCs from using the deepest available
C-states which in turn hurts battery life of the systems containing them
quite a bit, so there surely is a reason to have it enabled.

Thanks,
Rafael
