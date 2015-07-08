Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7808C8B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 07:53:15 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3F73D1AC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 07:53:14 +0000 (UTC)
Date: Wed, 8 Jul 2015 10:52:44 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Greg KH <greg@kroah.com>
Message-ID: <20150708075244.GI4341@mwanda>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<1481488.5WJFbB0Dlm@vostro.rjw.lan>
	<CA+5PVA4YON79=wrSTfQ8TJrQNOuLShvaVA1_+BDcTxrmVe_hcQ@mail.gmail.com>
	<20150708021128.GB3102@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150708021128.GB3102@kroah.com>
Cc: Josh Boyer <jwboyer@fedoraproject.org>, Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 07, 2015 at 07:11:28PM -0700, Greg KH wrote:
> On Tue, Jul 07, 2015 at 09:14:00PM -0400, Josh Boyer wrote:
> > You could make a Reviewed-by tag required before a patch can be
> > included in a submaintainer's tree.  At least some maintainers seem to
> > (arbitrarily?) require this at times.  However, if you do that then it
> > would likely slow down development quite a bit.
> 
> It doesn't seem to have slowed down the rate of change for the
> subsystems that currently require this, so why do you think it would?

That's SCSI and who else?

I think it improved SCSI a lot and got more people involved.  Before
there were some companies that didn't reply at all when you emailed them
fixes for their driver.  They just left everything for James.  Adding
the rule that every patch needed two reviews probably sped things up.

regards,
dan carpenter
