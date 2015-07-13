Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 84EF0B5A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 14:21:32 +0000 (UTC)
Received: from userp1040.oracle.com (userp1040.oracle.com [156.151.31.81])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 150BE110
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 14:21:32 +0000 (UTC)
Date: Mon, 13 Jul 2015 17:20:47 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Message-ID: <20150713140113.GB4341@mwanda>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<1481488.5WJFbB0Dlm@vostro.rjw.lan>
	<1436341028.2136.14.camel@HansenPartnership.com>
	<20150708080032.CE89E4306F@saturn.retrosnub.co.uk>
	<20150708145315.29030a75@gandalf.local.home>
	<20150710181409.GA30145@treble.redhat.com>
	<1436576450.27924.59.camel@stgolabs.net>
	<20150712034824.GA4236@treble.hsd1.ky.comcast.net>
	<20150712052317.GB15346@x>
	<20150712122823.GA4366@treble.redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150712122823.GA4366@treble.redhat.com>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	jic23@jic23.retrosnub.co.uk, ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
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

On Sun, Jul 12, 2015 at 07:28:23AM -0500, Josh Poimboeuf wrote:
> I agree that the Reviewed-by tag doesn't apply here.  It communicates
> patch approval, rather than review helpfulness.  That's why I proposed a
> new tag from the patch author and/or maintainer.

I've lobbied for:

With-Fixes-from: xxx

It would only be given for actual bug fixes and not for complaining
about the subject line, white space or spelling mistakes.

regards,
dan carpenter
