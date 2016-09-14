Return-Path: <joe@perches.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 401FD949
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 02:43:33 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0090.hostedemail.com
	[216.40.44.90])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DB1801C4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 02:43:32 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave02.hostedemail.com (Postfix) with ESMTP id 1B7961E9A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Sep 2016 02:24:26 +0000 (UTC)
Message-ID: <1473819862.32273.16.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Josh Triplett <josh@joshtriplett.org>, "Rafael J. Wysocki"
	<rjw@rjwysocki.net>
Date: Tue, 13 Sep 2016 19:24:22 -0700
In-Reply-To: <20160914020332.GA9558@cloud>
References: <b72e9a2e-64d4-12af-1af3-adf963151466@de.ibm.com>
	<20160913194520.GA8071@cloud> <20160913140322.3ccad27c@lwn.net>
	<4691924.fimvUkKjuv@vostro.rjw.lan> <20160914020332.GA9558@cloud>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Tue, 2016-09-13 at 19:03 -0700, Josh Triplett wrote:
> "Do
> not mass-reformat existing code, even if it doesn't follow these
> guidelines; doing so creates noise in version control history and makes
> patches fail to apply."

It also could be useful to somehow separate newer, more actively
developed code from the old stuff that should remain more static.

Old code should really only get code improvements like API changes,
size reductions, constifications, performance improvements and bug
fixes.

Maybe change the MAINTAINERS sections S: entries to have more
comprehensive descriptions of what types of changes are acceptable
for each section.

Right now it's

S:	Supported
or
S:	Maintained

Or maybe add something like a new entry for what types of changes
are acceptable with a default of "none"

C:	Whitespace and Style	

checkpatch could warn when changes are proposed for code that should
remain static.
