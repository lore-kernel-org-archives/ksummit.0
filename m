Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5C87993E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 15:58:24 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D99E0176
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 15:58:23 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 0CFE220D00
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 11:58:23 -0400 (EDT)
Date: Thu, 16 Jul 2015 08:58:19 -0700
From: Greg KH <greg@kroah.com>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20150716155819.GA30423@kroah.com>
References: <1489458.8WDRattPkl@vostro.rjw.lan>
	<1455994.zAMIqEIJx2@vostro.rjw.lan>
	<CAKMK7uHfcwLe-HWz72LJDhe-HvKTBu65DaJmR3tW3TOze4uyVQ@mail.gmail.com>
	<2869041.AWiygZspUy@vostro.rjw.lan> <20150716011056.GA8931@x>
	<1437038341.6856.22.camel@infradead.org>
	<CAH3eK3QS6-2spYEKO3dpFFS_Y0czA0vPk9Wfx7iPHmr4ZFFZ2A@mail.gmail.com>
	<20150716155302.GA2304@jtriplet-mobl1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150716155302.GA2304@jtriplet-mobl1>
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

On Thu, Jul 16, 2015 at 08:53:02AM -0700, Josh Triplett wrote:
> But the kernel already has quirk tables for various hardware, and that
> seems appropriate to continue putting in the kernel.

For some types of devices, sure.  For others, like broken USB keyboards
that can't handle autosuspend, no.  For those we need a userspace
_whitelist_ that udev can use.  So there's no one answer that works for
all types of quirks.

thanks,

greg k-h
