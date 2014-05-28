Return-Path: <martin.petersen@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1A0F999D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 00:10:43 +0000 (UTC)
Received: from userp1040.oracle.com (userp1040.oracle.com [156.151.31.81])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7388F1FFF4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 00:10:42 +0000 (UTC)
To: Jiri Kosina <jkosina@suse.cz>
From: "Martin K. Petersen" <martin.petersen@oracle.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140525222923.GW15585@mwanda> <1401119598.3303.6.camel@dabdike>
	<alpine.LNX.2.00.1405271634080.28869@pobox.suse.cz>
	<1401224020.14454.92.camel@dabdike>
	<alpine.LNX.2.00.1405272316000.17241@pobox.suse.cz>
Date: Tue, 27 May 2014 20:10:36 -0400
In-Reply-To: <alpine.LNX.2.00.1405272316000.17241@pobox.suse.cz> (Jiri
	Kosina's message of "Tue, 27 May 2014 23:22:16 +0200 (CEST)")
Message-ID: <yq1zji2hif7.fsf@sermon.lab.mkp.net>
MIME-Version: 1.0
Content-Type: text/plain
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

>>>>> "Jiri" == Jiri Kosina <jkosina@suse.cz> writes:

Jiri> Are you implying that Linux is still not in a position to force HW
Jiri> vendor companies to rather invest 30 man-minutes in order to have
Jiri> a proper changelog and driver merged in Linus' tree compared to
Jiri> receiving bad public press when they are being rejected
Jiri> (especially for such negligible reason as changelog text)?

There are a few companies in the enterprise space that get it. But in
general it can be quite the challenge to get these vendors to see the
value of being good Linux citizens. And these companies are much less
susceptible to phoronix rants than entities producing consumer widgets.

These companies have internal development processes that are often quite
unfriendly to the way we work. More often than not, upstream drivers are
trailing internal driver trees by many, many months. Patches are only
sent upstream when there is a bit of slack in the engineering schedule.

In many cases upstream Linux is not seen as an important target because
the driver vendor will provide OEMs that ship their hardware with a
"value added" outbox driver tarball or CD. The server vendors are
partially to blame for keeping this dreadful anachronism alive. One
would think that "It Just Works with RHEL/SLES/OL" would be better story
than retrofitting tarball drivers and jeopardizing future kernel
updates. According to the server vendors, however, customers expect to
install an updated Linux driver just like they do on Windows. Otherwise
the perception is that Linux is lagging behind or poorly supported.
*sigh*

Vendor driver release cycles are often tied exclusively to new silicon
availability and internal firmware release schedules. Many vendors pay
little to no attention to Linux development cycles. Furthermore, driver
code is often shared between several operating systems so every patch
needs to undergo IP/legal review before it can be submitted upstream.
Internal commit messages often have partner references, bug numbers,
code names, etc. in them. So it's typically easier to just drop the
patch description than rewriting it and have the new text reviewed by
the legal team.

That's the sorry state of affairs. Part of the problem here is that many
of the enterprise drivers have been in the kernel for a very long time.
They predate things like staging and SubmittingPatches by many years.
And we have been poor at communicating that things have changed and
sometimes a bit too lenient at accepting patches.

We have had a several discussions about this problem the last 6 months,
including at LSF/MM. I have had meetings with several hw vendors this
spring trying to educate them about our "new" rules of engagement. It's
not easy, but I feel we're making progress. Worst case we'll send gregkh
wielding a clue bat...

-- 
Martin K. Petersen	Oracle Linux Engineering
