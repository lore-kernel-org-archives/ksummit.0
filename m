Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7A51B279
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 18:12:48 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 04211241
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 18:12:47 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 30CF4208BF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 14:12:47 -0400 (EDT)
Date: Fri, 31 Jul 2015 11:12:45 -0700
From: Greg KH <greg@kroah.com>
To: Bjorn Helgaas <bhelgaas@google.com>
Message-ID: <20150731181245.GA5969@kroah.com>
References: <55BAE39F.9060705@oracle.com>
	<CAErSpo52d5DEp_KuVoQXm4DsVakemDboLUysy6_vHL6+-xgRJw@mail.gmail.com>
	<20150731165915.GA4995@roeck-us.net>
	<20150731170825.GA2721@kroah.com>
	<20150731171500.GC4995@roeck-us.net>
	<CAErSpo5ZDAAJVo7Lm6e2rg3sqvrtsTHRaV9nBDy+SDVMjy8MKw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAErSpo5ZDAAJVo7Lm6e2rg3sqvrtsTHRaV9nBDy+SDVMjy8MKw@mail.gmail.com>
Cc: Sasha Levin <sasha.levin@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Self nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 31, 2015 at 12:51:53PM -0500, Bjorn Helgaas wrote:
> I prefer that a dmesg collected in the simplest possible way, with no
> special config or boot flags, be as useful as possible.  So converting
> to dynamic debug requires much more thought about which messages
> should be always printed and which should become dynamic.

Why would a debugging message ever not be dynamic?  They are there for
you to use, and turn off when you are done.  If you want a user to
report the output of them, then of course they should be dynamic so they
can just write a line to a debugfs file and then start seeing them, they
shouldn't be seeing them all the time, and they should never require a
rebuild of the kernel to see them (which is why we deleted
CONFIG_USB_DEBUG).

thanks,

greg k-h
