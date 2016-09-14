Return-Path: <joe@perches.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1372799F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 14:58:32 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0015.hostedemail.com
	[216.40.44.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E74C4148
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 14:58:30 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave02.hostedemail.com (Postfix) with ESMTP id 437523905
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 14:52:03 +0000 (UTC)
Message-ID: <1473864710.32273.34.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Julia Lawall <julia.lawall@lip6.fr>, Greg KH <greg@kroah.com>
Date: Wed, 14 Sep 2016 07:51:50 -0700
In-Reply-To: <alpine.DEB.2.10.1609141633470.3033@hadrien>
References: <b72e9a2e-64d4-12af-1af3-adf963151466@de.ibm.com>
	<20160913194520.GA8071@cloud> <20160913140322.3ccad27c@lwn.net>
	<4691924.fimvUkKjuv@vostro.rjw.lan> <20160914020332.GA9558@cloud>
	<1473819862.32273.16.camel@perches.com>
	<20160914115456.GB22341@kroah.com>
	<1473863028.32273.28.camel@perches.com>
	<20160914143205.GA11149@kroah.com>
	<alpine.DEB.2.10.1609141633470.3033@hadrien>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: ksummit-discuss@lists.linux-foundation.org,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] checkpatch/Codingstyle and
 trivial patch spam
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2016-09-14 at 16:35 +0200, Julia Lawall wrote:

> The --force is only required for non-staging code?  If it is required for
> staging code, then we will have to document it in the outreachy tutorial,
> and then all the (non-outreachy) newbies who look at the tutorial will
> know about it.

Correct.

drivers/staging gets a special exemption to avoid using --force

+	if (!$force && $file && $filename !~ m@^drivers/staging/@) {
+		warn "$P: checking '$filename' is not supported\n";
+		next;
+	}
