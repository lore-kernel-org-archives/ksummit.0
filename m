Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7733E273
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 11:41:58 +0000 (UTC)
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 01CEFEB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 11:41:56 +0000 (UTC)
Received: by obre1 with SMTP id e1so64343635obr.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 04:41:56 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150716155819.GA30423@kroah.com>
References: <1489458.8WDRattPkl@vostro.rjw.lan>
	<1455994.zAMIqEIJx2@vostro.rjw.lan>
	<CAKMK7uHfcwLe-HWz72LJDhe-HvKTBu65DaJmR3tW3TOze4uyVQ@mail.gmail.com>
	<2869041.AWiygZspUy@vostro.rjw.lan> <20150716011056.GA8931@x>
	<1437038341.6856.22.camel@infradead.org>
	<CAH3eK3QS6-2spYEKO3dpFFS_Y0czA0vPk9Wfx7iPHmr4ZFFZ2A@mail.gmail.com>
	<20150716155302.GA2304@jtriplet-mobl1>
	<20150716155819.GA30423@kroah.com>
Date: Fri, 17 Jul 2015 13:41:56 +0200
Message-ID: <CAKMK7uFmyH9Gc3EY6F24PK3hOtxLPYEi9U=ixe=g-3=amoQoCw@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Greg KH <greg@kroah.com>
Content-Type: text/plain; charset=UTF-8
Cc: "Brown, Len" <len.brown@intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Alan Stern <stern@rowland.harvard.edu>,
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

On Thu, Jul 16, 2015 at 5:58 PM, Greg KH <greg@kroah.com> wrote:
> On Thu, Jul 16, 2015 at 08:53:02AM -0700, Josh Triplett wrote:
>> But the kernel already has quirk tables for various hardware, and that
>> seems appropriate to continue putting in the kernel.
>
> For some types of devices, sure.  For others, like broken USB keyboards
> that can't handle autosuspend, no.  For those we need a userspace
> _whitelist_ that udev can use.  So there's no one answer that works for
> all types of quirks.

Whether white or blacklist or some other mixed thing doesn't really
matter. Imo the important part is that driver maintainers are in the
best position to maintain that, and pushing it out to anyone else is
just really not doing our jobs. And I think for most of these quirk
lists the kernel does seem like the most appropriate place. If the
list becomes giantic then we can move it to userspace (if that's
really a problem, afaik no one proposed yet to move device match
tables into userspace either and that's kinda the same thing really).
But as long as there's no white/black/whatever list yet starting in
the kernel is imo the right place.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
