Return-Path: <zohar@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A6F19724
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 01:52:58 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
	[148.163.156.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4646E16B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 01:52:58 +0000 (UTC)
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.11/8.16.0.11) with SMTP id
	u711nIYT114290 for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 21:52:57 -0400
Received: from e28smtp03.in.ibm.com (e28smtp03.in.ibm.com [125.16.236.3])
	by mx0a-001b2d01.pphosted.com with ESMTP id 24gn47umnu-1
	(version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 21:52:57 -0400
Received: from localhost
	by e28smtp03.in.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<zohar@linux.vnet.ibm.com>; Mon, 1 Aug 2016 07:22:54 +0530
Received: from d28relay08.in.ibm.com (d28relay08.in.ibm.com [9.184.220.159])
	by d28dlp03.in.ibm.com (Postfix) with ESMTP id 892AA1258060
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 07:25:53 +0530 (IST)
Received: from d28av05.in.ibm.com (d28av05.in.ibm.com [9.184.220.67])
	by d28relay08.in.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
	u711qokZ38994080 for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 1 Aug 2016 07:22:50 +0530
Received: from d28av05.in.ibm.com (localhost [127.0.0.1])
	by d28av05.in.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id
	u711qnaO013520 for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 1 Aug 2016 07:22:50 +0530
From: Mimi Zohar <zohar@linux.vnet.ibm.com>
To: Andy Lutomirski <luto@kernel.org>
Date: Sun, 31 Jul 2016 21:52:45 -0400
In-Reply-To: <CALCETrV6y79898-+M8Mpvhm-e2_VXvSyQQPwY25YdeuJhCe1zg@mail.gmail.com>
References: <20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<14209.1469636040@warthog.procyon.org.uk>
	<1469636881.27356.70.camel@HansenPartnership.com>
	<1469637367.27356.73.camel@HansenPartnership.com>
	<1469648220.23563.15.camel@linux.vnet.ibm.com>
	<CALCETrXWVTmbuUa-d7EH2kGRZM+HCiqje11AqxWm7ntd5fjLDg@mail.gmail.com>
	<20160728165728.GR4541@io.lakedaemon.net>
	<1469830256.23563.200.camel@linux.vnet.ibm.com>
	<CALCETrUiYghc5uq9GHQRT--n15PBimhJwHA0TwgNqGxsbRKaFw@mail.gmail.com>
	<20160730163626.GP3296@wotan.suse.de>
	<1469934481.23563.274.camel@linux.vnet.ibm.com>
	<CALCETrWq0UZ176EKrp2jNkjFFn17twb8ZvfGKtRdD5E=iFAnBw@mail.gmail.com>
	<1469979098.23563.300.camel@linux.vnet.ibm.com>
	<CALCETrVQj23-0Bhsx91Z3O7BJdjDVXgPQSQUqXHoc+pd5+tfYA@mail.gmail.com>
	<1469986138.23563.312.camel@linux.vnet.ibm.com>
	<CALCETrV6y79898-+M8Mpvhm-e2_VXvSyQQPwY25YdeuJhCe1zg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Message-Id: <1470016365.23563.354.camel@linux.vnet.ibm.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Mark Brown <broonie@sirena.org.uk>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On So, 2016-07-31 at 11:20 -0700, Andy Lutomirski wrote:
> On Jul 31, 2016 10:29 AM, "Mimi Zohar" <zohar@linux.vnet.ibm.com> wrote:

> > > Also, are there any plans to move module signature verification into
> > > .kernel_post_read_file?
> >
> > The whole point of defining the kernel_read_file() family of functions
> > was to close a class of measurement/appraisal gaps.
> 
> And to enable firmware verification?

Yes, including firmware signature verification.

> >   To answer your
> > question, yes IMA measures and/or appraises files on the security post
> > kernel read hook, based on policy.
> 
> I wasn't asking anything about IMA.

>From my understanding of your question, you're asking if there is an LSM
that uses this hook for verifying firmware signatures.  IMA uses the LSM
hooks and defines a few additional hooks to enforce file integrity.
For all practical purposes it is an LSM+.

> > Andy, other than IMA-appraisal being xattr based,  I'm not sure why
> > you're so against it.   if you're going to be at LinuxCon/LSS, perhaps
> > we could speak in person there.
> 
> I have nothing against IMA.  I have plenty of objection to the core hooks
> being simultaneously messy and not supplying enough information to provide
> the security properties they should provide.

The discussions took place on the kexec, firmware, kernel modules and
LSM mailing lists late last year and earlier this year.  You could have
commented on the patches and raised your concerns then, but it isn't too
late at this point.  These are internal functions, not an external API
that can not be modified.

Though, before making any changes we should address Luis' question,
"Path seems like the next target?  Anything else ?"

Mimi
